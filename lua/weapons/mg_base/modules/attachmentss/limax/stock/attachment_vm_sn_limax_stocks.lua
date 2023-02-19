ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "XRK Punch"
ATTACHMENT.Model = Model("models/aiden/limax/v_att_vm_ar_limax_stockh.mdl")
ATTACHMENT.Icon = Material("vgui/nekyo/icons/stockh.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Recoil.Punch = weapon.Recoil.Punch * 0.5
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.5
    weapon.Recoil.AdsShakeMultiplier = weapon.Recoil.AdsShakeMultiplier * 0.5
end