AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sm_mp5", "vgui/killicons/cod2019_sm_mp5.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sm_mp5.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_smg") or "Submachine Guns"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_mp5") or "MP5"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_smg") or "Submachine Gun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_germany"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_919"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 2.54, 2.54 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 124),
    -- [ ARC9:GetPhrase("mw19_muzzle_energy") ] = "1,312 ft/s",
    -- [ ARC9:GetPhrase("mw19_muzzle_velocity") ] = "643 joules"
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_mp5_desc") or [[Fully automatic 9mm submachine gun. A perfect balance of stability, mobility, and lethality.]]

SWEP.ViewModel = "models/weapons/cod2019/c_smg_mp5.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_smg_mp5.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-10, 5, -1.5),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 21 -- Damage done at point blank range
SWEP.DamageMin = 11 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 900 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.15

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1312 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 833

SWEP.Firemodes = {
    {
        Mode = -1,
		PoseParam = 0,
    },
    {
        Mode = 1,
		PoseParam = 1,
    },
    -- {
        -- Mode = 3,
		-- RunawayBurst = true,
		-- PostBurstDelay = 0.25
    -- },
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.3

SWEP.RecoilSeed = 564728

SWEP.RecoilPatternDrift = 15

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.8 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilMultCrouch = 0.9
SWEP.RecoilMultMove = 1.25
SWEP.RecoilMultSights = 0.9

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.4
SWEP.VisualRecoilPunchSights = 5
SWEP.VisualRecoilRollSights = 5
SWEP.VisualRecoilSideSights = 0
SWEP.VisualRecoilUpSights = 0

SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilUp = 0.2
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = -1/6

SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 45
SWEP.VisualRecoilDampingConstSights = 50

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.002

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 1.2
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 2
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -0.5


-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.2

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.71, -3.5, 0.9),
    Ang = Angle(0, 0, -2.5),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.MovingPos = Vector(-1, -0.8, -1)
SWEP.MovingAng = Angle(0, 0, -10)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -1)
SWEP.SprintAng = Angle(0, 0, 25)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeRotateAnchor = Vector(15, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 20, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 3, -4.5)
SWEP.PeekAng = Angle(-0.3, 0, -45)

SWEP.PeekMaxFOV = 54

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "AC_muzzle_rifle_fp"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

SWEP.CamQCA = 4
SWEP.CamQCA_Mult = 1

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_9mm_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.06
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.ShellSounds = ARC9.COD2019_9mm_Table

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_smg_mp5_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_smg_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/mp5/"

SWEP.ShootSound = "COD2019.MP5.Fire"
SWEP.ShootSoundIndoor = "COD2019.MP5.Fire"

SWEP.ShootSoundSilenced = "COD2019.MP5.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.MP5.Fire.S"

-- Non-Silenced Outside
SWEP.LayerSound = "Layer_Pistol.Outside"
SWEP.DistantShootSound = "Distant_SMG.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Pistol.Inside"
SWEP.DistantShootSoundIndoor = "Distant_SMG.Inside"
---------------------------------------------------
-- Silenced Outside
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_SMG_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_Pistol_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = path .. "wfoly_sm_mpapa5_ads_up.ogg"
SWEP.ExitSightsSound = path .. "wfoly_sm_mpapa5_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet01",
    [2] = "j_bullet02",
	[3] = "j_bullet03",
	[4] = "j_bullet04",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/mp5/weap_mpapa5_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/mp5/weap_mpapa5_disconnector_plr_01.ogg"

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["dryfire"] = {
        Source = "dryfire",
		MinProgress = 0.01,
		FireASAP = true,
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mpapa5_reload_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_pi_mpapa5_reload_bolt_open.ogg", t = 0.12},
			{s = path .. "wfoly_pi_mpapa5_reload_cloth01.ogg", t = 0.767},
			{s = path .. "wfoly_pi_mpapa5_reload_magout_01.ogg", t = 1.0},
            {s = path .. "wfoly_pi_mpapa5_reload_rattle_01.ogg", t = 1.167},
			{s = path .. "wfoly_sm_mpapa5_reload_magin_v2_01.ogg", t = 1.567},
            {s = path .. "wfoly_sm_mpapa5_reload_magin_v2_02.ogg", t = 1.767},
            {s = path .. "wfoly_pi_mpapa5_reload_rattle_02.ogg", t = 1.933},
			{s = path .. "wfoly_pi_mpapa5_reload_boltclose_01.ogg", t = 2.3},
            {s = path .. "wfoly_pi_mpapa5_reload_cloth02.ogg", t = 2.333},
			{s = path .. "wfoly_pi_mpapa5_reload_end.ogg", t = 2.567},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.9,
		DropMagAt = 0.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mpapa5_reload_empty_rotate.ogg", t = 0.1},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_boltopen_01.ogg", t = 0.2},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_magout_01.ogg", t = 0.533},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_mvmnt.ogg", t = 0.7},
			{s = path .. "wfoly_sm_mpapa5_reload_empty_magin_v2_01.ogg", t = 1.567},
			{s = path .. "wfoly_sm_mpapa5_reload_empty_magin_v2_02.ogg", t = 1.767},
            {s = path .. "wfoly_pi_mpapa5_reload_empty_cloth.ogg", t = 1.833},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_boltclose_01.ogg", t = 2.1},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_end.ogg", t = 2.467},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.58,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mpapa5_reload_rotate.ogg", t = 0.0},
            {s = path .. "wfoly_pi_mpapa5_reload_empty_fast_magout_01.ogg", t = 0.21},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_mvmnt.ogg", t = 0.433},
            {s = path .. "wfoly_sm_mpapa5_reload_fast_magin_01.ogg", t = 1.15},
			{s = path .. "wfoly_sm_mpapa5_reload_fast_end.ogg", t = 1.233},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_boltopen_01.ogg", t = 0.067},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_magout_01.ogg", t = 0.31},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_mvmnt.ogg", t = 0.5},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_cloth.ogg", t = 0.867},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_magin_01.ogg", t = 1.167},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_boltclose_01.ogg", t = 1.533},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_end.ogg", t = 1.733},
        },
    },
    ["reload_xmag"] = {
        Source = "reload_xmag",
		MinProgress = 0.8,
		MagSwapTime = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mpapa5_reload_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_pi_mpapa5_reload_bolt_open.ogg", t = 0.12},
			{s = path .. "wfoly_pi_mpapa5_reload_cloth01.ogg", t = 0.767},
			{s = path .. "wfoly_pi_mpapa5_reload_magout_01.ogg", t = 1.0},
            {s = path .. "wfoly_pi_mpapa5_reload_rattle_01.ogg", t = 1.167},
			{s = path .. "wfoly_sm_mpapa5_reload_magin_v2_01.ogg", t = 1.567},
            {s = path .. "wfoly_sm_mpapa5_reload_magin_v2_02.ogg", t = 1.767},
            {s = path .. "wfoly_pi_mpapa5_reload_rattle_02.ogg", t = 1.933},
			{s = path .. "wfoly_pi_mpapa5_reload_boltclose_01.ogg", t = 2.3},
            {s = path .. "wfoly_pi_mpapa5_reload_cloth02.ogg", t = 2.333},
			{s = path .. "wfoly_pi_mpapa5_reload_end.ogg", t = 2.567},
        },
    },
    ["reload_xmag_empty"] = {
        Source = "reload_xmag_empty",
		MinProgress = 0.9,
		DropMagAt = 1.1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mpapa5_reload_empty_rotate.ogg", t = 0.1},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_boltopen_01.ogg", t = 0.2},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_magout_01.ogg", t = 0.533},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_mvmnt.ogg", t = 0.7},
			{s = path .. "wfoly_sm_mpapa5_reload_empty_magin_v2_01.ogg", t = 1.567},
			{s = path .. "wfoly_sm_mpapa5_reload_empty_magin_v2_02.ogg", t = 1.767},
            {s = path .. "wfoly_pi_mpapa5_reload_empty_cloth.ogg", t = 1.833},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_boltclose_01.ogg", t = 2.1},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_end.ogg", t = 2.467},
        },
    },
    ["reload_xmag_fast"] = {
        Source = "reload_xmag_fast",
		MinProgress = 0.8,
		MagSwapTime = 1.5,
		DropMagAt = 0.58,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mpapa5_reload_rotate.ogg", t = 0.0},
            {s = path .. "wfoly_pi_mpapa5_reload_empty_fast_magout_01.ogg", t = 0.21},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_mvmnt.ogg", t = 0.433},
            {s = path .. "wfoly_sm_mpapa5_reload_fast_magin_01.ogg", t = 1.15},
			{s = path .. "wfoly_sm_mpapa5_reload_fast_end.ogg", t = 1.233},
        },
    },
    ["reload_xmag_fast_empty"] = {
        Source = "reload_xmag_fast_empty",
		MinProgress = 0.9,
		DropMagAt = 0.8,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_rotate.ogg", t = 0.033},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_boltopen_01.ogg", t = 0.067},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_magout_01.ogg", t = 0.31},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_mvmnt.ogg", t = 0.5},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_cloth.ogg", t = 0.867},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_magin_01.ogg", t = 1.167},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_boltclose_01.ogg", t = 1.533},
			{s = path .. "wfoly_pi_mpapa5_reload_empty_fast_end.ogg", t = 1.733},
        },
    },
    ["ready"] = {
        Source = "draw",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_pi_mpapa5_raise_first_mvmnt.ogg", t = 0.233},
            {s = path .. "wfoly_pi_mpapa5_raise_first_closebolt_01.ogg", t = 0.6},
			{s = path .. "wfoly_pi_mpapa5_raise_first_end.ogg", t = 0.867},
        },
    },
    ["draw"] = {
        Source = "draw_short",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sm_mpapa5_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sm_mpapa5_drop.ogg", t = 0/30},
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
		Mult = 2.7,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 2.7,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 3.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 3.5,
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
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 0.4, lhik = 0, rhik = 1 },
            { t = 0.6, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sm_mpapa5_inspect_01.ogg", t = 0.033},
			{s = path .. "wfoly_sm_mpapa5_inspect_02.ogg", t = 1.3},
			{s = path .. "wfoly_sm_mpapa5_inspect_03.ogg", t = 2.333},
			{s = path .. "wfoly_sm_mpapa5_inspect_04.ogg", t = 3.267},
			{s = path .. "wfoly_sm_mpapa5_inspect_05.ogg", t = 4.233},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
	    IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.6, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_sm_mpapa5_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_sm_mpapa5_selector_off.ogg", t = 0/30},
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_on",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_off",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_off.ogg", t = 5/30},
        },
    },
}

-------------------------- ATTACHMENTS

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

--- ??-Round Mags ---
local Translate_XMag = {
    ["reload"] = "reload_xmag",
    ["reload_empty"] = "reload_xmag_empty",
}
local Translate_XMag_Fast = {
    ["reload"] = "reload_xmag_fast",
    ["reload_empty"] = "reload_xmag_fast_empty",
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

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if xmag then
            if Translate_XMag_Fast[anim] then
                return Translate_XMag_Fast[anim]
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
        end
    end
	
    --wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
            return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
        else
            return false
        end
    end
end

SWEP.DefaultBodygroups = "0000000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(8.3, 0, -0.7),
	ModelAngleOffset = Angle(0, 0, 35),
	Scale = 0.9,
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {4,2},
        },
    },
    ["sights"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["foregrip_tac2"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["foregrip_none"] = {
        Bodygroups = {
            {4,2},
        },
    },
    ["stock_retract"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["stock_adapter"] = {
        Bodygroups = {
            {3,2},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,3},
        },
    },
    ["sight_none"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["stock_main_hide"] = {
        Bodygroups = {
            {6,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("stock_retract") then model:SetBodygroup(3,1) end
    if wep:HasElement("sight_default") then model:SetBodygroup(5,0) end
    if wep:HasElement("foregrip_none") then model:SetBodygroup(4,2) end
end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("arc9/def_att_icons/barrel.png", "mips smooth"),
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_mp5_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"muzzle_none"},
		ExcludeElements = {"barrel_supp"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        Bone = "tag_holo",
        Pos = Vector(2, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sights","sight_none"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
        DefaultAttName = "Default",
        Category = "cod2019_tac_rail",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.7, -1.5, 0.5),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"sights"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2.7, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"foregrip_tac2"},
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("arc9/def_att_icons/stock_ak.png", "mips smooth"),
        DefaultAttName = "Standard Stock",
        Category = {"cod2019_tube","cod2019_mp5_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"stock_none"},
		Scale = 1,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_mp5_reciever",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo"},
		Pos = Vector(-1.5, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("arc9/def_att_icons/mag_ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_mag","cod2019_mag_mp5"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_folder_other2"),
        Category = "cod2019_mp5_alt"
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_mp5",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_mp5_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_mp5_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_mp5_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/smg_mp5_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = {"charm", "killcounter"},
		RejectAttachments = { ["arc9_stat_proscreen"] = true },
		CosmeticOnly = true,
        Bone = "tag_cosmetic",
        Pos = Vector(-2.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
}

SWEP.GripPoseParam = 4
SWEP.GripPoseParam2 = 0.5
SWEP.CodAngledGripPoseParam = 42
SWEP.CodStubbyGripPoseParam = 31
SWEP.CodStubbyTallGripPoseParam = 12

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

end
