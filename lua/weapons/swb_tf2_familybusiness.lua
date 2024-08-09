AddCSLuaFile()

SWEP.Base = "simple_base"

SWEP.PrintName = "Family Business"
SWEP.Category = "reshed's Simple Weapons: TF2"

SWEP.CSMuzzleFlashes = true

SWEP.Slot = 3

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 60

SWEP.ViewModel = Model("models/weapons/tf2_reshed/r_familybusiness.mdl")
SWEP.WorldModel = Model("models/weapons/tf2_reshed/r_w_familybusiness.mdl")

SWEP.HoldType = "shotgun"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = 0

SWEP.Primary = {
	Ammo = "Buckshot",

	ClipSize = 8,
	DefaultClip = 32,

	Damage = 18,
	Count = 6,

	Delay = 60 / 100,

	Range = 400,
	Accuracy = 24,

	RangeModifier = 0.7,

	Recoil = {
		MinAng = Angle(2, -0.7, 0),
		MaxAng = Angle(3, 0.7, 0),
		Punch = 0.5,
		Ratio = 0
	},

	Reload = {
		Amount = 1,
		Shotgun = true
	},

	Sound = "weapons/shotgun_shoot.wav",
	TracerName = "Tracer"
}


sound.Add( {
	name = "rshd.Shot_FamBack",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/shotgun_cock_back.wav"
} )

sound.Add( {
	name = "rshd.Shot_FamFwd",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/shotgun_cock_forward.wav"
} )



sound.Add( {
	name = "rshd.Shot_Load",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/shotgun_reload.wav"
} )
