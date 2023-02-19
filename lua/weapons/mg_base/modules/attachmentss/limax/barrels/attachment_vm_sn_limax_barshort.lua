ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FSS Elite"
ATTACHMENT.Model = Model("models/aiden/limax/v_att_vm_ar_limax_barshrt.mdl")
ATTACHMENT.Icon = Material("vgui/nekyo/icons/barshort.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.78
    weapon.Cone.Hip = weapon.Cone.Hip * 1.15
end
