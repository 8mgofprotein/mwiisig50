ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS Precision Elite 20.0""
ATTACHMENT.Model = Model("models/aiden/limax/v_att_vm_ar_limax_barhvylong.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/xmike109/icon_attachment_sn_xmike109_barlong.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.87
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.87
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.86
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.86
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.76
    weapon.Recoil.Punch = weapon.Recoil.Punch * 0.7
    weapon.Cone.Hip = weapon.Cone.Hip * 0.7
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.1
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.1
end