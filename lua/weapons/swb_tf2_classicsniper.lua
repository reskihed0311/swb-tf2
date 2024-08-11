AddCSLuaFile()

SWEP.Base = "simple_base_scoped"

SWEP.PrintName = "Classic Sniper"
SWEP.Category = "reshed's Simple Weapons: TF2"
SWEP.SubCategory = "Sniper Rifles"

SWEP.CSMuzzleFlashes = true

SWEP.Slot = 3

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 60

SWEP.ViewModel = Model("models/weapons/tf2_reshed/r_classicsniperrifle.mdl")
SWEP.WorldModel = Model("models/weapons/tf2_reshed/r_w_classicsniperrifle.mdl")

SWEP.HoldType = "ar2"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = -1

SWEP.Primary = {
	Ammo = "ar2",

	ClipSize = 20,
	DefaultClip = 20,

	Damage = 70,
	Delay = 60 / 170,

	Range = 3000,
	Accuracy = 12,

	UnscopedRange = 200,
	UnscopedAccuracy = 12,

	RangeModifier = 0.98,

	Recoil = {
		MinAng = Angle(2, -0.6, 0),
		MaxAng = Angle(3, 0.6, 0),
		Punch = 0.4,
		Ratio = 0.6
	},

	Sound = "Weapon_ClassicSniperRifle.Single",
	TracerName = "Tracer"
}

SWEP.ScopeZoom = {2.25, 6}
SWEP.ScopeSound = "Default.Zoom"



-- Dynamic Weapon Reverb support
SWEP.dwr_customAmmoType = "smg1"



sound.Add( {
	name = "rshd.Classic_magOut",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/smg_clip_out.wav"
} )

sound.Add( {
	name = "rshd.Classic_magIn",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/smg_clip_in.wav"
} )