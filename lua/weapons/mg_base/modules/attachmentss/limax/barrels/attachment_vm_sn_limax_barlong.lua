ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS Precision 20.0""
ATTACHMENT.Model = Model("models/aiden/limax/v_att_vm_ar_limax_barlong.mdl")
ATTACHMENT.Icon = Material("vgui/nekyo/icons/barlong.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.8
    weapon.Recoil.Punch = weapon.Recoil.Punch * 0.8
    weapon.Cone.Hip = weapon.Cone.Hip * 0.85
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.1
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
end