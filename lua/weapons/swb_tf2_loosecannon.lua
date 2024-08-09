AddCSLuaFile()

simple_weapons.Include("Convars")


-- mosf of the code here is chatgpt , what you gonna do about it ? change it ? do it then lol idc

SWEP.Base = "simple_base"

SWEP.PrintName = "The Loose Cannon"
SWEP.Category = "reshed's Simple Weapons: TF2"

SWEP.Slot = 2

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 60

SWEP.ViewModel = Model("models/weapons/tf2_reshed/r_loosecannon.mdl")
SWEP.WorldModel = Model("models/weapons/tf2_reshed/r_w_loosecannon.mdl")

SWEP.HoldType = "smg"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = -1

SWEP.Primary = {
    Ammo = "SMG1_Grenade", 
    ClipSize = 1,
    DefaultClip = 12,
    Recoil = {
        MinAng = Angle(0.7, -0.4, 0),
        MaxAng = Angle(0.9, 0.4, 0),
        Punch = 0.4,
        Ratio = 0.4
    },
    Sound = "weapons/loose_cannon_shoot.wav",
    TracerName = nil,
    Class = "r_loosecannonball" -- Assuming this is the class you want to create
}

SWEP.NPCData = {
    Burst = {3, 5},
    Delay = SWEP.Primary.Delay,
}

list.Add("NPCUsableWeapons", {class = "simple_hl2_smg1", title = "Simple Weapons: " .. SWEP.PrintName})

-- ACT_VM_RECOIL support ,
local transitions = {
    [ACT_VM_PRIMARYATTACK] = ACT_VM_RECOIL1,
    [ACT_VM_RECOIL1] = ACT_VM_RECOIL3,
    [ACT_VM_RECOIL3] = ACT_VM_RECOIL3
}

function SWEP:TranslateWeaponAnim(act)
    if act == ACT_VM_PRIMARYATTACK then
        local lookup = transitions[self:GetActivity()]

        if lookup then
            act = lookup
        end
    end

    return act
end

function SWEP:PrimaryFire()
    local ply = self:GetOwner()
    local primary = self.Primary

    -- Check if we have enough ammo to fire
    if self:Clip1() <= 0 then
        self:EmitSound("Weapon_Pistol.Empty")
        self:SetNextFire(CurTime() + 0.5)
        return
    end

    self:TakePrimaryAmmo(1)

    self:EmitSound(primary.Sound)

    self:SendTranslatedWeaponAnim(ACT_VM_PRIMARYATTACK)

    ply:SetAnimation(PLAYER_ATTACK1)

    if SERVER then
        local ent = ents.Create(primary.Class)

        local ang = ply:GetAimVector():Angle() + ply:GetViewPunchAngles()
        local dir = ang:Forward()

        ent:SetPos(ply:GetShootPos())
        ent:SetAngles(ang)

        ent:SetOwner(ply)

        ent:SetVelocity(dir * 1000)

        ent:Spawn()
        ent:Activate()
    end

    self:ApplyRecoil()

    self.Primary.Automatic = false

    self:SetNextIdle(CurTime() + self:SequenceDuration())
    self:SetNextFire(CurTime() + 0.5)
    self:SetNextAltFire(CurTime() + 1)
end



sound.Add( {
	name = "rshd.loose_tiltDown",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/grenade_launcher_drum_open.wav"
} )

sound.Add( {
	name = "rshd.loose_tiltUp",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/grenade_launcher_drum_close.wav"
} )

sound.Add( {
	name = "rshd.loose_load",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/grenade_launcher_drum_load.wav"
} )