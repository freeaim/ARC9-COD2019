AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_pi_sykov", "vgui/killicons/cod2019_pi_sykov.png", Color(251, 85, 25, 255))
    killicon.Add( "arc9_cod2019_pi_sykov_akimbo", "vgui/killicons/cod2019_pi_akimbo_sykov.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_pi_sykov.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_handgun") or "Handguns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_makarov") or "Sykov"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_handgun") or "Handgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_sovietunion"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_918"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 0.73, 0.73 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 92.6),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,030 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "296 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_makarov_desc") or [[A dependable fallback in close quarters, this double-action/single-action sidearm comes with a few custom gunsmith mods that make it an outstanding addition to any arsenal.]]

SWEP.ViewModel = "models/weapons/cod2019/c_pist_sykov.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = false
SWEP.WorldModelMirror = "models/weapons/cod2019/c_pist_sykov.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-12, 4, -5),
    TPIKAng = Angle(0, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 25 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 8 / ARC9.HUToM
SWEP.RangeMax = 25 / ARC9.HUToM

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.2

SWEP.ImpactForce = 8

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1240 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 12 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 0.9

SWEP.RecoilSeed = 6954

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 35 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.8
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.5

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.1
SWEP.VisualRecoilRoll = 55
SWEP.VisualRecoilSide = -1/6

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 30
SWEP.VisualRecoilDampingConstSights = 50

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.1
SWEP.RecoilModifierCap = 4
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadAddMove = 0.05
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.015
SWEP.SpreadAddCrouch = -0.01
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.1 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.25

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(0.9, 0, 2.45),
    Ang = Angle(0, 0, 19),
    Magnification = 1.15,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -0.5, -0.5)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, -25, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeRotateAnchor = Vector(15, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0.25, -10, 3)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-2.5, 0, -1.5)
SWEP.PeekAng = Angle(0, 0, -45)

-------------------------- HoldTypes

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_pistol_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.TracerEffect = "cod2019_tracer_small"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellSounds = ARC9.COD2019_9mm_Table
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.055
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_pist_sykov_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_poly_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/sykov/"

SWEP.ShootSound = "COD2019.Sykov.Fire"
SWEP.ShootSoundIndoor = "COD2019.Sykov.Fire"

SWEP.ShootSoundSilenced = "COD2019.Sykov.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.Sykov.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_Pistol.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Pistol.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_Pistol_Mag_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_pi_mike_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_pi_mike_ads_down.ogg"

SWEP.BulletBones = {
	[1] = "j_bullet1",
	[2] = "j_bullet2",
	[3] = "j_bullet3",
	[4] = "j_bullet4",
	[5] = "j_bullet5",
	[6] = "j_bullet6",
	[7] = "j_bullet7",
	[8] = "j_bullet8",
	[9] = "j_bullet9",
	[10] = "j_bullet10",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/sykov/weap_mike_hammer_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/sykov/weap_mike_disconnector_plr_01.ogg"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_magout.ogg", t = 15/30},
			{s = path .. "wfoly_pi_mike_reload_mvmnt.ogg", t = 25/30},
			{s = path .. "wfoly_pi_mike_reload_magin.ogg", t = 31/30},
			{s = path .. "wfoly_pi_mike_reload_end.ogg", t = 41/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		FireASAP = true,
		DropMagAt = 2.5,
		MagSwapTime = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_empty_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike_reload_empty_maghit.ogg", t = 26/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magin.ogg", t = 28/30},
			{s = path .. "wfoly_pi_mike_reload_empty_charge.ogg", t = 46/30},
			{s = path .. "wfoly_pi_mike_reload_empty_end.ogg", t = 58/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.7,
		MagSwapTime = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_fast_up.ogg", t = 2/30},
			{s = path .. "wfoly_pi_mike_reload_fast_magout.ogg", t = 14/30},
			{s = path .. "wfoly_pi_mike_reload_fast_magin.ogg", t = 22/30},
			{s = path .. "wfoly_pi_mike_reload_fast_end.ogg", t = 28/30},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 0.7,
		MagSwapTime = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_fast_empty_up.ogg", t = 1/30},
			{s = path .. "wfoly_pi_mike_reload_fast_empty_magout.ogg", t = 14/30},
			{s = path .. "wfoly_pi_mike_reload_fast_empty_magin.ogg", t = 21/30},
			{s = path .. "wfoly_pi_mike_reload_fast_empty_charge.ogg", t = 31/30},
			{s = path .. "wfoly_pi_mike_reload_fast_empty_end.ogg", t = 43/30},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_magout.ogg", t = 12/30},
			{s = path .. "wfoly_pi_mike_reload_mvmnt.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike_reload_magin.ogg", t = 30/30},
			{s = path .. "wfoly_pi_mike_reload_end.ogg", t = 42/30},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 2.5,
		MagSwapTime = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_empty_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike_reload_empty_maghit.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magin.ogg", t = 26/30},
			{s = path .. "wfoly_pi_mike_reload_empty_charge.ogg", t = 45/30},
			{s = path .. "wfoly_pi_mike_reload_empty_end.ogg", t = 58/30},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 4,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_magout.ogg", t = 14/30},
			{s = path .. "wfoly_pi_mike_reload_mvmnt.ogg", t = 22/30},
			{s = path .. "wfoly_pi_mike_reload_magin.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike_reload_end.ogg", t = 30/30},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 4,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_empty_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magout.ogg", t = 14/30},
			{s = path .. "wfoly_pi_mike_reload_empty_maghit.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magin.ogg", t = 26/30},
			{s = path .. "wfoly_pi_mike_reload_empty_charge.ogg", t = 35/30},
			{s = path .. "wfoly_pi_mike_reload_empty_end.ogg", t = 40/30},
        },
    },
    ["reload_xmaglrg"] = {
        Source = "reload_xmaglrg",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_magout.ogg", t = 12/30},
			{s = path .. "wfoly_pi_mike_reload_mvmnt.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike_reload_magin.ogg", t = 30/30},
			{s = path .. "wfoly_pi_mike_reload_end.ogg", t = 42/30},
        },
    },
    ["reload_xmaglrg_empty"] = {
        Source = "reload_xmaglrg_empty",
		MinProgress = 0.8,
		FireASAP = true,
		DropMagAt = 2.5,
		MagSwapTime = 4,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_empty_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magout.ogg", t = 8/30},
			{s = path .. "wfoly_pi_mike_reload_empty_maghit.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magin.ogg", t = 26/30},
			{s = path .. "wfoly_pi_mike_reload_empty_charge.ogg", t = 45/30},
			{s = path .. "wfoly_pi_mike_reload_empty_end.ogg", t = 58/30},
        },
    },
    ["reload_xmaglrg_fast"] = {
        Source = "reload_xmaglrg_fast",
		MinProgress = 0.8,
		FireASAP = true,
		MagSwapTime = 4,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_magout.ogg", t = 14/30},
			{s = path .. "wfoly_pi_mike_reload_mvmnt.ogg", t = 22/30},
			{s = path .. "wfoly_pi_mike_reload_magin.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike_reload_end.ogg", t = 30/30},
        },
    },
    ["reload_xmaglrg_fast_empty"] = {
        Source = "reload_xmaglrg_fast_empty",
		MinProgress = 0.9,
		FireASAP = true,
		MagSwapTime = 4,
		DropMagAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mike_reload_empty_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magout.ogg", t = 14/30},
			{s = path .. "wfoly_pi_mike_reload_empty_maghit.ogg", t = 24/30},
			{s = path .. "wfoly_pi_mike_reload_empty_magin.ogg", t = 26/30},
			{s = path .. "wfoly_pi_mike_reload_empty_charge.ogg", t = 35/30},
			{s = path .. "wfoly_pi_mike_reload_empty_end.ogg", t = 40/30},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike_first_raise_up.ogg", t = 0/30},
			{s = path .. "wfoly_pi_mike_first_raise_magout.ogg", t = 6/30},
			{s = path .. "wfoly_pi_mike_first_raise_magin.ogg", t = 15/30},
			{s = path .. "wfoly_pi_mike_first_raise_end.ogg", t = 19/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.2,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_pi_mike_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "wfoly_pi_mike_drop.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		NoStatAffectors = true
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		NoStatAffectors = true
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 10,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 2.5,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike_inspect_01.ogg", t = 1/30},
            {s = path .. "wfoly_pi_mike_reload_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike_inspect_02.ogg", t = 35/30},
			{s = path .. "wfoly_pi_mike_inspect_03.ogg", t = 49/30},
			{s = path .. "wfoly_pi_mike_inspect_04.ogg", t = 93/30},
        },
    },
    ["inspect_xmag"] = {
        Source = "lookat01_xmag",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike_inspect_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike_reload_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_mike_inspect_03.ogg", t = 49/30},
			{s = path .. "wfoly_pi_mike_inspect_04.ogg", t = 89/30},
        },
    },
    ["inspect_drum"] = {
        Source = "lookat01_drum",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mike_inspect_01.ogg", t = 0/30},
            {s = path .. "wfoly_pi_mike_reload_magout.ogg", t = 9/30},
			{s = path .. "wfoly_pi_mike_inspect_02.ogg", t = 34/30},
			{s = path .. "wfoly_pi_mike_inspect_03.ogg", t = 49/30},
			{s = path .. "wfoly_pi_mike_inspect_04.ogg", t = 89/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2"},
    },
}

-------------------------- ATTACHMENTS

--- 20 Round & Drum Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
    ["inspect"] = "inspect_xmag",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
    ["inspect"] = "inspect_xmag",
}
local Translate_XMagslrg = {
    ["reload"] = "reload_xmagslrg",
    ["reload_empty"] = "reload_xmagslrg_empty",
    ["inspect"] = "inspect_drum",
}
local Translate_XMagslrg_Fast = {
    ["reload"] = "reload_xmagslrg_fast",
    ["reload_empty"] = "reload_xmagslrg_fast_empty",
    ["inspect"] = "inspect_drum",
}

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
    ["reload_empty"] = "reload_fast_empty",
}
local Translate_TacSprint = {
    ["idle_sprint"] = "super_sprint_idle",
    ["enter_sprint"] = "super_sprint_in",
    ["exit_sprint"] = "super_sprint_out",
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    --local attached = self:GetElements()

    local speedload = wep:HasElement("perk_speedreload")
    local super_sprint = wep:HasElement("perk_super_sprint")
    local xmag = wep:HasElement("mag_xmag")
    local xmagslrg = wep:HasElement("mag_xmagslrg")

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
            end
        elseif xmagslrg then
            if Translate_XMagslrg_Fast[anim] then
                return Translate_XMagslrg_Fast[anim]
            end 
        else
            if Translate_Fast[anim] then
                return Translate_Fast[anim]
            end
        end
    else 
        if xmag then
            if Translate_XMag[anim] then
                return Translate_XMag[anim]
            end
        elseif xmagslrg then
            if Translate_XMagslrg[anim] then
                return Translate_XMagslrg[anim]
            end
        end
    end
end

-- SWEP.Hook_Think	= function(wep)
--     local vm = wep:GetOwner():GetViewModel()
--     if wep:Clip1() == 0 then
--         vm:SetPoseParameter("empty", 1)
--     else
--         vm:SetPoseParameter("empty", 0)
--     end
	
--     local vm = wep:GetOwner():GetViewModel()
--     local delta = wep:GetSightDelta()
--     local coolilove = math.cos(delta * (math.pi / 2))
--     vm:SetPoseParameter( "aim_blend", Lerp(coolilove, 1, 0) )
-- end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["cod2019_view_alt_pistol"] = {
    ActivePos = Vector(2.5, 0, 1.5),
    ActiveAng = Angle(0, 0, 17),

    MovingPos = Vector(-1,-2,-1),
    MovingAng = Angle(0,0,-8),

    CrouchPos = Vector(-1.2, 0, -1),
    CrouchAng = Angle(0, 0, -10),

    ReloadPos = Vector(0,0,0),
    ReloadAng = Angle(0,0,0)
    },
}

SWEP.AttachmentElements = {
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["slide_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["grip_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {5,1},
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("arc9/def_att_icons/barrel.png", "mips smooth"),
        DefaultAttName = "Standard slide",
        Category = "cod2019_sykov_slide",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle_pistols",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle_none"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        Bone = "tag_reflex",
        Pos = Vector(1.075, 0, 0.025),
        Ang = Angle(0, 0, 0),
        Category = "cod2019_optics_pistols_alt",
        CorrectiveAng = Angle(0, 0, 0),
		Scale = 1,
		InstalledElements = {"rail_sight"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = {"cod2019_tac_pistols","cod2019_grip_pistols"},
        Bone = "tag_laser_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"rail_laser"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_reargrip"),
        DefaultAttName = "Default",
        Category = "cod2019_sykov_grip",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "j_mag1",
        Category = "cod2019_ammo",
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("arc9/def_att_icons/mag_ar.png", "mips smooth"),
		Bone = "j_mag1",
        Category = {"cod2019_mag","cod2019_sykov_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_view"),
        Category = "cod2019_pistols_view"
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_sykov",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = "universal_camo",
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_sykov_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_sykov_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_sykov_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/pist_sykov_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = {"charm", "killcounter"},
		RejectAttachments = { ["arc9_stat_proscreen"] = true },
		CosmeticOnly = true,
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.6

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

SWEP.RPM = 500
end
