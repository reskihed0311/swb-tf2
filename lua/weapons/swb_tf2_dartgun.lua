AddCSLuaFile()

DEFINE_BASECLASS("simple_base_scoped")

SWEP.Base = "simple_base_scoped"

SWEP.PrintName = "Dart Gun"
SWEP.Category = "reshed's Simple Weapons: TF2"
SWEP.SubCategory = "Sniper Rifles"

SWEP.CSMuzzleFlashes = true

SWEP.Slot = 4

SWEP.Spawnable = true

SWEP.UseHands = true

SWEP.ViewModelTargetFOV = 60

SWEP.ViewModel = Model("models/weapons/tf2_reshed/r_dartgun.mdl")
SWEP.WorldModel = Model("models/weapons/tf2_reshed/r_w_dartgun.mdl")

SWEP.HoldType = "ar2"
SWEP.LowerHoldType = "passive"

SWEP.Firemode = 0

SWEP.Primary = {
	Ammo = "XBowBolt",

	ClipSize = 1,
	DefaultClip = 1,

	Damage = 150,
	Delay = 0,

	Range = 4000,
	Accuracy = 12,

	UnscopedRange = 80,
	UnscopedAccuracy = 12,

	RangeModifier = 0.99,

	Recoil = {
		MinAng = Angle(2, -0.8, 0),
		MaxAng = Angle(3, 0.8, 0),
		Punch = 0.6,
		Ratio = 0.2
	},

	Sound = "weapons/sniper_bazaarbargain_shoot.wav",
	TracerName = "Tracer"
}

SWEP.ScopeZoom = {2.25, 9}
SWEP.ScopeSound = "Default.Zoom"


sound.Add( {
	name = "rshd.Dart_boltUp",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/sniper_bolt_back.wav"
} )

sound.Add( {
	name = "rshd.Dart_boltDwn",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/sniper_bolt_forward.wav"
} )


sound.Add( {
	name = "rshd.Dart_dartIn",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	pitch = {95, 110},
	sound = "weapons/sniper_railgun_bolt_back.wav"
} )

-- Dynamic Weapon Reverb support
SWEP.dwr_customAmmoType = "ar2"

