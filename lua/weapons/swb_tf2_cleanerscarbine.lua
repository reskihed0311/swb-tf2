AddCSLuaFile()

SWEP.Base = "simple_base"

SWEP.PrintName = "Cleaner's Carbine"
SWEP.Category = "reshed's Simple Weapons: TF2"

SWEP.CSMuzzleFlashes = true

SWEP.Slot = 3

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 60

SWEP.ViewModel = Model("models/weapons/tf2_reshed/r_cleanerscarbine.mdl")
SWEP.WorldModel = Model("models/weapons/tf2_reshed/r_w_cleanerscarbine.mdl")

SWEP.HoldType = "ar2"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = -1

SWEP.Primary = {
	Ammo = "smg1",

	ClipSize = 30,
	DefaultClip = 20,

	Damage = 80,
	Delay = 60 / 500,

	Range = 3000,
	Accuracy = 12,

	RangeModifier = 0.98,

	Recoil = {
		MinAng = Angle(0, 0, 0),
		MaxAng = Angle(1, 0.6, 0),
		Punch = 0.4,
		Ratio = 0.6
	},

	Sound = "weapons/doom_sniper_smg.wav",
	TracerName = "Tracer"
}



-- Dynamic Weapon Reverb support
SWEP.dwr_customAmmoType = "smg1"



sound.Add( {
	name = "rshd.Cleaner_magOut",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/smg_clip_out.wav"
} )

sound.Add( {
	name = "rshd.Cleaner_magIn",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/smg_clip_in.wav"
} )

sound.Add( {
	name = "rshd.Cleaner_boltBack",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/default_reload.wav"
} )