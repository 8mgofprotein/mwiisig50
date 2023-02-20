ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "7 Ext Mag"
ATTACHMENT.Model = Model("models/aiden/limax/v_att_vm_ar_limax_xmags.mdl")
ATTACHMENT.Icon = Material("vgui/nekyo/icons/xmag.vmt")
ATTACHMENT.BulletList = {
    [0] = {"j_ammo_001"},
	[0] = {"j_ammo_01"},
	[1] = {"j_ammo_02"},
	[2] = {"j_ammo_03"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 7
    weapon.Animations.Reload = weapon.Animations.Reload_xmags
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_xmags
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_xmags_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_xmags_Fast
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.93
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.93
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
end