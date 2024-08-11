AddCSLuaFile()

SWEP.Base = "simple_base"

SWEP.PrintName = "The Right Hand Of The Free World"
SWEP.Category = "reshed's Simple Weapons: TF2"
SWEP.SubCategory = "Battle Rifles"

SWEP.CSMuzzleFlashes = true

SWEP.Slot = 2

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 60

SWEP.ViewModel = Model("models/weapons/tf2_reshed/r_righthand.mdl")
SWEP.WorldModel = Model("models/weapons/tf2_reshed/r_w_righthand.mdl")

SWEP.HoldType = "ar2"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = -1

SWEP.Primary = {
	Ammo = "smg1",

	ClipSize = 20,
	DefaultClip = 20,

	Damage = 55,
	Delay = 60 / 600,

	Range = 3000,
	Accuracy = 12,

	RangeModifier = 0.98,

	Recoil = {
		MinAng = Angle(0, 0, 0),
		MaxAng = Angle(1, 0.6, 0),
		Punch = 0.4,
		Ratio = 0.6
	},

	Sound = "weapons/tf_spy_enforcer_revolver_06.wav",
	TracerName = "Tracer"
}



-- Dynamic Weapon Reverb support
SWEP.dwr_customAmmoType = "ar2"



sound.Add( {
	name = "rshd.RightHand_magOut",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/smg_clip_out.wav"
} )

sound.Add( {
	name = "rshd.RightHand_magIn",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/smg_clip_in.wav"
} )

sound.Add( {
	name = "rshd.RightHand_boltBack",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/stickybomblauncher_boltback.wav"
} )

sound.Add( {
	name = "rshd.RightHand_boltFwd",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/stickybomblauncher_boltforward.wav"
} )