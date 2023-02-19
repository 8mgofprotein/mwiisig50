AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_shotgun")
PrecacheParticleSystem("AC_muzzle_shotgun_db")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
PrecacheParticleSystem("AC_muzzle_minigun_smoke_barrel")
include("animations.lua")
include("customization.lua") 

if CLIENT then
    killicon.Add( "mg_limax", "VGUI/entities/mg_limax", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/entities/mg_limax")
end

-- SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset"}
-- SWEP.GripPoseParameters2 = {"grip_pistolgrip_offset"}

SWEP.Base = "mg_base" 

SWEP.PrintName = "Signal .50"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Sniper Rifles"
SWEP.Spawnable = true
SWEP.VModel = Model("models/aiden/limax/vm_sn_limax.mdl") 
SWEP.WorldModel = Model("models/viper/mw/weapons/w_limax.mdl") 
SWEP.Trigger = {
    PressedSound = Sound("weap_delta_fire_first"),
    ReleasedSound = Sound("weap_delta_fire_disconnector"),
    Time = 0.001
}

SWEP.Slot = 3 
SWEP.HoldType = "BigGun"

SWEP.Primary.Sound = Sound("weap_limax_fire_plr")
SWEP.Primary.Ammo = "357"
SWEP.Primary.ClipSize = 10
SWEP.Primary.Automatic = false
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 111
SWEP.CanChamberRound = true
SWEP.CanDisableAimReload = false


SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_shotgun",
    ["MuzzleFlash_DB"] = "AC_muzzle_shotgun_db",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_desert_ejection", 
    ["Overheating"] = "AC_muzzle_pistol_smoke_barrel", 
}

SWEP.Reverb = { 
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?

    Sounds = {
        Outside = {
            Layer = Sound("Atmo_Sniper.Outside"),
            Reflection = Sound("Reflection_Sniper.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_Shotgun.Inside"),
            Reflection = Sound("Reflection_Shotgun.Inside")
        }
    }
}

SWEP.Firemodes = {

    [1] = {
        Name = "Semi-Automatic",
        OnSet = function(self)
            self.Primary.Automatic = false
            return "Firemode_Semi"
        end
    },

}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_minigun_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 75,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 65 --degrees per second
}

SWEP.Cone = {
    Hip = 2.4, --accuracy while hip
    Ads = 0.033, --accuracy while aiming
    Increase = 3, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.025, --multiply the increase value by this amount while aiming
    Max = 5, --the cone size will not go beyond this size
    Decrease = 2, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 3456 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {3, 4}, --random value between the 2
    Horizontal = {-1, 1}, --random value between the 2
    Shake = 5, --camera shake
    AdsMultiplier = 0.8, --multiply the values by this amount while aiming
    Seed = 4577888, --give this a random number until you like the current recoil pattern
    Punch = 3, --recoil will offset the view by this amount (takes vertical, horizontal and adsmul into account)
    AdsShakeMultiplier = 1
}

SWEP.Bullet = {
    Damage = {215, 178}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 300, --in meters, damage scales within this distance
    DropOffStartRange = 50,
    Range = 350, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1.25, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 2,
    Penetration = {
        DamageMultiplier = 1, --how much damaged is multipled by when leaving a surface.
        MaxCount = 6, --how many times the bullet can penetrate.
        Thickness = 32, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    BreathingMultiplier = 1,
    MovementMultiplier = 1,
    Blur = {
        EyeFocusDistance = 10
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(10,5,180),
    Pos = Vector(10, -1, -2.5)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(1.14, -0.42, 4),
        Pos = Vector(0.2, -2, .7)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(0, 3, 3), Angles = Angle(40, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(4, 0, 1.5), Angles = Angle(10, -20, 0)}
        }
    },
    
    RecoilMultiplier = 1.75,
    KickMultiplier = 3.3,
    AimKickMultiplier = 0.45
}

SWEP.Shell = "mwb_shelleject_50bmg"

function SWEP:PrimaryAttack()
    local clip = self:Clip1()
    weapons.Get(self.Base).PrimaryAttack(self)
    if (clip != self:Clip1()) then
        self:MakeEnvironmentDust(150)
    end
end