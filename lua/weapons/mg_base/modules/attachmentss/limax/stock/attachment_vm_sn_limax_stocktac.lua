ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "SQL Tac Pro"
ATTACHMENT.Model = Model("models/aiden/limax/v_att_vm_ar_limax_stocktac.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/xmike109/icon_attachment_sn_xmike109_stockl.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.12
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.12
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Zoom.MovementMultiplier = weapon.Zoom.MovementMultiplier * 1.5
end