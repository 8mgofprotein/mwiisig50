ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "SA Elite"
ATTACHMENT.Model = Model("models/aiden/limax/v_att_vm_ar_limax_barhvy.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/xmike109/icon_attachment_sn_xmike109_barhvy.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.91
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.91
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.25
end
