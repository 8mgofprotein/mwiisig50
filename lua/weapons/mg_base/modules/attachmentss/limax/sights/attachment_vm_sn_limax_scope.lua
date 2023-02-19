ATTACHMENT.Base = "att_optic_20x"
ATTACHMENT.Name = "Signal .50 Scope"
ATTACHMENT.Model = Model("models/aiden/limax/v_att_vm_ar_limax_scope.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/xmike109/icon_attachment_sn_xmike109_scope.vmt")
ATTACHMENT.Bodygroups = {
    ["sight"] = 2
}
ATTACHMENT.Optic = {
    HideModel = Model("models/aiden/limax/v_att_vm_ar_limax_scope_hide.mdl"),
    LensHideMaterial = Material("viper/MW/weapons/xmike109/weapon_vm_sn_xmike109_scopelens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}

ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_int_default"),
    Size = 1200,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.ViewModelOffsets.Aim.Angles = Angle(1.14, -0.42, 4)
    weapon.ViewModelOffsets.Aim.Pos = Vector(0.19, -2, 1)
end