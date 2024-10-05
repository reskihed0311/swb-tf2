AddCSLuaFile()

SWEP.Base = "simple_base"

SWEP.PrintName = "SCORPION"
SWEP.Category = "reshed's Simple Weapons: TF2"
SWEP.SubCategory = "Sub-Machine Guns"

SWEP.CSMuzzleFlashes = true

SWEP.Slot = 2

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 62

SWEP.ViewModel = Model("models/weapons/tf2_reshed/r_scorpion.mdl")
SWEP.WorldModel = Model("models/weapons/tf2_reshed/r_w_scorpion.mdl")

SWEP.HoldType = "ar2"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = -1

SWEP.Primary = {
	Ammo = "smg1",

	ClipSize = 30,
	DefaultClip = 20,

	Damage = 21,
	Delay = 60 / 1000,

	Range = 3000,
	Accuracy = 12,

	RangeModifier = 0.98,

	Recoil = {
		MinAng = Angle(0, 0, 0),
		MaxAng = Angle(0.5, 0.2, 0),
		Punch = 0.4,
		Ratio = 0.6
	},

	Sound = "weapons/smg_shoot.wav",
	TracerName = "Tracer"
}



-- Dynamic Weapon Reverb support
SWEP.dwr_customAmmoType = "smg1"



sound.Add( {
	name = "rshd.Scorpion_magOut",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/smg_clip_out.wav"
} )

sound.Add( {
	name = "rshd.Scorpion_magIn",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/smg_clip_in.wav"
} )

sound.Add( {
	name = "rshd.Scorpion_boltBack",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/widow_maker_pump_action_back.wav"
} )

sound.Add( {
	name = "rshd.Scorpion_boltFwd",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/widow_maker_pump_action_forward.wav"
} )