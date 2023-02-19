AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
        Events = {
        {Time = 0, Callback = function(self) self:EnableGrip() end},
        {Time = 0, Callback = function(self) self:EnableGrip2() end},
    }
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 0.85,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_raise_01")) end},
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.8,
        Fps = 30,
        Events = {
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_drop_01")) end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.25,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.467, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_raise_first_02")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_raise_first_01")) end},
            {Time = 0.9, Callback = function(self) self:EnableGrip() end},
            {Time = 1.033, Callback = function(self) self:EnableGrip() end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_raise_first_03")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 4.4,
        MagLength = 3.2,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 3.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_055")) end},
            {Time = 3.567, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_06")) end},
            {Time = 2.367, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_04")) end},
            {Time = 2.867, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_05")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_02")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_01")) end},
        
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 2.7,
        MagLength = 2,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 2.467, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_06")) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_045")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_02")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_03")) end},
            {Time = 0.167, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_01")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_04")) end},
            {Time = 2.0, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_05")) end},
        
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 5.5,
        MagLength = 3.2,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 4.8, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_08")) end},
            {Time = 5.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_09")) end},
            {Time = 1.0, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_02")) end},
            {Time = 1.433, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_01")) end},
            {Time = 3.667, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_06")) end},
            {Time = 4.267, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_07")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_04")) end},
            {Time = 2.767, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_05")) end},
            {Time = 3.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_055")) end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 3.7,
        MagLength = 2,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 1.967, Callback = function(self) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_045")) end},
            {Time = 3.233, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_07")) end},
            {Time = 2.833, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_06")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_04")) end},
            {Time = 2.367, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_05")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_02")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_03")) end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_01")) end},
            {Time = 3.533, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_08")) end},
        }
    },
["Reload_xmags"] = {
        Sequences = {"reload_xmags"},
        Length = 4.4,
        MagLength = 3.2,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 3.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_055")) end},
            {Time = 3.567, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_06")) end},
            {Time = 2.367, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_04")) end},
            {Time = 2.867, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_05")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_02")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_01")) end},
        
        }
    },

    ["Reload_xmags_Fast"] = {
        Sequences = {"reload_xmags_fast"},
        Length = 2.7,
        MagLength = 2,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 2.467, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_06")) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_045")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_02")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_03")) end},
            {Time = 0.167, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_01")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_04")) end},
            {Time = 2.0, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_fast_05")) end},
        
        }
    },

    ["Reload_Empty_xmags"] = {
        Sequences = {"reload_empty_xmags"},
        Length = 5.5,
        MagLength = 3.2,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 4.8, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_08")) end},
            {Time = 5.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_09")) end},
            {Time = 1.0, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_02")) end},
            {Time = 1.433, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_01")) end},
            {Time = 3.667, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_06")) end},
            {Time = 4.267, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_07")) end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_04")) end},
            {Time = 2.767, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_05")) end},
            {Time = 3.2, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_055")) end},
        }
    },

    ["Reload_Empty_xmags_Fast"] = {
        Sequences = {"reload_empty_xmags_fast"},
        Length = 3.7,
        MagLength = 2,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 1.967, Callback = function(self) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_045")) end},
            {Time = 3.233, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_07")) end},
            {Time = 2.833, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_06")) end},
            {Time = 1.667, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_04")) end},
            {Time = 2.367, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_05")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_02")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_03")) end},
            {Time = 0.267, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_01")) end},
            {Time = 3.533, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_reload_empty_fast_08")) end},
        }
    },
    ["Fire"] = {
        Sequences = {"fire"},
        Fps = 50,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoParticle("MuzzleFlash", "muzzle")
                    self:DoEjection("shell_eject")
                end
            },
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
    },

    ["Fire_Last"] = {
        Sequences = {"fire"},
        Fps = 50,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoParticle("MuzzleFlash", "muzzle")
                    self:DoEjection("shell_eject")
                end
            },
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.225,
        Fps = 17,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("weap_sn_xmike109_ads_up")) end},
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.225,
        Fps = 17,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("weap_sn_xmike109_ads_down")) end},
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop", --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
        Events = {
        {Time = 0, Callback = function(self) self:EnableGrip() end},
        {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 3.8, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_inspect_03")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_inspect_01")) end},
            {Time = 1.767, Callback = function(self) self:DoSound(Sound("wfoly_plr_sn_xmike109_inspect_02")) end},
        }
    },

    ["Jog_Out"] = {
        Sequences = {"jog_out"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:EnableGrip2() end},
        }
    },


    ["Melee"] = {
        Sequences = {"melee_miss_01", "melee_miss_02", "melee_miss_03"},
        Length = 0.6, --if melee misses

        Size = 15,
        Range = 40,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Medium")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Melee_Hit"] = {
        Sequences = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        Length = 0.3, --if melee hits

        Damage = 45,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Medium")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end},
        }
    },
}