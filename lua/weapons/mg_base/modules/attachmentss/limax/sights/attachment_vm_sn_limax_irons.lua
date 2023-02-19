ATTACHMENT.Base = "att_sight"
ATTACHMENT.Name = "Default Ironsights"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.ViewModelOffsets.Aim.Angles = Angles = Angle(1.13, -0.42, 4)
    weapon.ViewModelOffsets.Aim.Pos = `Pos = Vector(0.2, -2, .65)
end