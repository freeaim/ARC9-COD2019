AddCSLuaFile()

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "AK-47"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = "Russia",
    ["Caliber"] = "7.62x39mm",
    ["Weight (Loaded)"] = "4.79 kg",
    ["Projectile Weight"] = "121.9 gr",
    ["Muzzle Velocity"] = "2,350 ft/s",
    ["Muzzle Energy"] = "2,027 joules"
}

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Activision/Infinity Ward"
}

SWEP.Description = [[Very reliable automatic assault rifle chambered in 7.62mm Soviet. Large caliber ammunition requires skill to control recoil.]]

SWEP.ViewModel = "models/weapons/cod2019/c_rif_ak47.mdl"
SWEP.WorldModel = "models/weapons/w_snip_awp.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_rif_ak47.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-12, 6, -7.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-5, 5, -2),
    TPIKAng = Angle(-9, 0, 170),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 35 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 2000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.ImpactForce = 11

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1312 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 10 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true

-------------------------- FIREMODES

SWEP.RPM = 561

SWEP.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    },
    {
        Mode = 1,
        -- add other attachment modifiers
    }
}
-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1.5

SWEP.RecoilSeed = 6589132

SWEP.RecoilPatternDrift = 35

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.8 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 100 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1

SWEP.RecoilMultCrouch = 0.8

SWEP.RecoilMultMove = 1.25
SWEP.RecoilAutoControlMultHipFire = 0.5
SWEP.RecoilMultSights = 0.8

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.2
SWEP.VisualRecoilPunchSights = 75
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = -1/6

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 5 then
        recamount = 1.65 - math.Clamp((recamount - 2) / 3.5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%4)/10 
        
        return up, side * fakerandom, roll, punch
    end

    return up, side, roll, punch
end

-------------------------- SPREAD

SWEP.Spread = 0.0014

SWEP.SpreadAddRecoil = 0.01
SWEP.SpreadMultRecoil = 1.2
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

SWEP.SpreadMultMove = 1.5
--SWEP.SpreadAddMidAir = 0
SWEP.SpreadAddHipFire = 0.07
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
    Pos = Vector(-2.73, -4, 0.6),
    Ang = Angle(0.05, 0.15, -2.5),
    Magnification = 1.15,
    ViewModelFOV = 56,
	CrosshairInSights = false
}

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, 0)
SWEP.SprintAng = Angle(0, 0, 0)

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

SWEP.CrouchPos = Vector(-1, -1, -1)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 30, 3)
SWEP.CustomizeRotateAnchor = Vector(15, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(-1, 7, 5)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.PeekPos = Vector(-1, 3, -3.2)
SWEP.PeekAng = Angle(-0.3, 0, -45)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
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

SWEP.ShellModel = "models/weapons/cod2019/shared/shell_762_hr.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.08
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_rif_ak47_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_03.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_04.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_05.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_mag_drop_ak_metal_concrete_06.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 3
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/ak47/"

SWEP.ShootSound = "COD2019.AK47.Fire"
SWEP.ShootSoundIndoor = "COD2019.AK47.Fire"

SWEP.ShootSoundSilenced = "COD2019.AK47.Fire.S"
SWEP.ShootSoundSilencedIndoor = "COD2019.AK47.Fire.S"

-- Non-Silenced
SWEP.LayerSound = "Layer_AR.Outside"
SWEP.DistantShootSound = "Distant_AR.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_AR.Inside"
SWEP.DistantShootSoundIndoor = "Distant_AR.Inside"
---------------------------------------------------
-- Silenced
SWEP.LayerSoundSilenced = "Layer_ARSUP.Outside"
SWEP.DistantShootSoundSilenced = "Distant_AR_Sup.Outside"
-- Inside
SWEP.LayerSoundSilencedIndoor = "Layer_ARSUP.Inside"
SWEP.DistantShootSoundSilencedIndoor = "Distant_AR_Sup.Inside"
---------------------------------------------------

SWEP.EnterSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/ak47/wfoly_ar_akilo47_ads_down.ogg"

SWEP.BulletBones = {
    [1] = "j_bullet1",
    [2] = "j_bullet2",
    [3] = "j_bullet3",
}

SWEP.HideBones  = {
    [1] = "j_mag2",
    [2] = "j_bullet_secondary",
    [3] = "j_bullet2_secondary",
}

SWEP.TriggerDelay = 0.025 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayTime = 0.025 -- Time until weapon fires.

SWEP.TriggerDownSound = "weapons/cod2019/ak47/weap_akilo47_fire_first_plr_01.ogg"
SWEP.TriggerUpSound = "weapons/cod2019/ak47/weap_akilo47_disconnector_plr_01.ogg"

SWEP.Animations = {
    -- ["enter_sights"] = {
        -- Source = "idle",
        -- IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    -- },
    ["fire"] = {
        Source = "shoot1",
        IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload_short",
		MinProgress = 0.55,
		FireASAP = false,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_akilo47_reload_grab.ogg", t = 0/30},
            {s = path .. "wfoly_ar_akilo47_reload_magout_01.ogg", t = 11/30},
			{s = path .. "wfoly_ar_akilo47_reload_click.ogg", t = 19/30},
			{s = path .. "wfoly_ar_akilo47_reload_maghit.ogg", t = 38/30},
			{s = path .. "wfoly_ar_akilo47_reload_magin_v2_01.ogg", t = 42/30},
			{s = path .. "wfoly_ar_akilo47_reload_magin_v2_02.ogg", t = 44/30},
			{s = path .. "wfoly_ar_akilo47_reload_end.ogg", t = 65/30},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.725,
		FireASAP = false,
		DropMagAt = 1.15,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_akilo47_reload_empty_maghit_01.ogg", t = 12/30},
			{s = path .. "wfoly_ar_akilo47_reload_empty_twist.ogg", t = 12/30},
			{s = path .. "wfoly_ar_akilo47_reload_empty_magin_v2_01.ogg", t = 31/30},
			{s = path .. "wfoly_ar_akilo47_reload_empty_magin_v2_02.ogg", t = 45/30},
			{s = path .. "wfoly_ar_akilo47_reload_empty_chamber_01.ogg", t = 55/30},
			{s = path .. "wfoly_ar_akilo47_reload_empty_end.ogg", t = 69/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.625,
		FireASAP = false,
		DropMagAt = 0.85,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_akilo47_reload_fast_twist.ogg", t = 0.033},
            {s = path .. "wfoly_ar_akilo47_reload_fast_magout_01.ogg", t = 0.16},
			{s = path .. "wfoly_ar_akilo47_reload_fast_magout_02.ogg", t = 0.22},
			{s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_01.ogg", t = 0.65},
			{s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_02.ogg", t = 1.05},
			{s = path .. "wfoly_ar_akilo47_reload_fast_magout_end.ogg", t = 1.06},
        },
    },
    ["reload_fast_empty"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.725,
		FireASAP = false,
		DropMagAt = 1.15,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_akilo47_reload_empty_fast_twist.ogg", t = 0.033},
			{s = path .. "wfoly_ar_akilo47_reload_empty_fast_maghit_01.ogg", t = 0.13},
			{s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_01.ogg", t = 0.64},
			{s = path .. "wfoly_ar_akilo47_reload_empty_fast_magin_v2_02.ogg", t = 1.01},
			{s = path .. "wfoly_ar_akilo47_reload_empty_fast_chamber_01.ogg", t = 1.36},
			{s = path .. "wfoly_ar_akilo47_reload_empty_fast_end.ogg", t = 1.6},
        },
    },
    ["reload_drum"] = {
        Source = "reload_drum",
		MinProgress = 0.625,
		FireASAP = false,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_akilo47_drum_reload_grabmag.ogg", t = 0.066},
            {s = path .. "wfoly_ar_akilo47_drum_reload_magout_01.ogg", t = 0.47},
			{s = path .. "wfoly_ar_akilo47_drum_reload_twist.ogg", t = 0.96},
			{s = path .. "wfoly_ar_akilo47_drum_reload_magin_v2_01.ogg", t = 1.42},
			{s = path .. "wfoly_ar_akilo47_drum_reload_magin_v2_02.ogg", t = 1.67},
			{s = path .. "wfoly_ar_akilo47_drum_reload_end.ogg", t = 1.96},
        },
    },
    ["reload_drum_empty"] = {
        Source = "reload_drum_empty",
		MinProgress = 0.75,
		FireASAP = false,
		DropMagAt = 1.15,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.575,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_mvmnt.ogg", t = 0.066},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_magout_01.ogg", t = 0.73},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_01.ogg", t = 1.4},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_02.ogg", t = 1.6},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_rise.ogg", t = 2.06},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_chamber_01.ogg", t = 2.86},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_end.ogg", t = 3.16},
        },
    },
    ["reload_drum_fast"] = {
        Source = "reload_drum_fast",
		MinProgress = 0.625,
		FireASAP = false,
		--DropMagAt = 0.85,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.65,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_akilo47_drum_reload_fast_raise.ogg", t = 0.033},
			{s = path .. "wfoly_ar_akilo47_drum_reload_fast_magout_01.ogg", t = 0.27},
			{s = path .. "wfoly_ar_akilo47_drum_reload_fast_magin_v2_01.ogg", t = 0.82},
			{s = path .. "wfoly_ar_akilo47_drum_reload_fast_magin_v2_02.ogg", t = 1.05},
			{s = path .. "wfoly_ar_akilo47_drum_reload_fast_end.ogg", t = 1.25},
        },
    },
    ["reload_drum_fast_empty"] = {
        Source = "reload_drum_fast_empty",
		MinProgress = 0.75,
		FireASAP = false,
		DropMagAt = 1.15,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.65,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_raise.ogg", t = 0},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_mvmnt.ogg", t = 0.5},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_magout_01.ogg", t = 0.63},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_01.ogg", t = 1.18},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_magin_v2_02.ogg", t = 1.22},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_chamber_01.ogg", t = 1.93},
			{s = path .. "wfoly_ar_akilo47_drum_reload_empty_fast_end.ogg", t = 2.04},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.8,
		FireASAP = false,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_ar_ak47_inspect_03.ogg", t = 0/30},
            {s = path .. "wfoly_ar_akilo47_raise_first_chamber_01.ogg", t = 0/30},
            {s = path .. "wfoly_ar_akilo47_raise_first_end.ogg", t = 17/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.8,
		FireASAP = false,
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
	            {
                t = 0.6,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_raise.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 1
            },
        },
		--Mult = 0.8,
        EventTable = {
            {s = path .. "wfoly_ar_akilo47_drop.ogg", t = 0/30},
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
		Mult = 3,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		Mult = 3,
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
        EventTable = {
            {s = path .. "wfoly_ar_ak47_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_ar_ak47_inspect_02.ogg", t = 36/30},
			{s = path .. "wfoly_ar_ak47_inspect_03.ogg", t = 68/30},
			{s = path .. "wfoly_ar_ak47_inspect_04.ogg", t = 100/30},
			{s = path .. "wfoly_ar_ak47_inspect_05.ogg", t = 124/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
	    IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.6,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["firemode_1"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "weap_akilo47_selector_on.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "semi_off",
        EventTable = {
            {s = path .. "weap_akilo47_selector_off.ogg", t = 0/30},
        },
    },
    ["switchsights"] = {
        Source = "semi_on",
        EventTable = {
            {s = path .. "wfoly_ar_ak47_inspect_02.ogg", t = 0/30},
        },
    },
}

-------------------------- ATTACHMENTS

SWEP.HookP_NameChange = function(self, name)
	local att = self:GetElements()

	if att["cod2019_akilo47_mag_smg"] then
		name = "AK-74"
	end

    return name
end

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()

    if anim == "reload" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_drum") then
        return "reload_drum_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") and wep:HasElement("mag_drum") then 
        return "reload_drum_fast_empty"
    --------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("perk_speedreload") then
        return "reload_fast"
    elseif anim == "reload_empty" and wep:HasElement("perk_speedreload") then 
        return "reload_fast_empty"
    --------------------------------------------------------------------------
    elseif anim == "reload" and wep:HasElement("mag_drum") then
        return "reload_drum"
    elseif anim == "reload_empty" and wep:HasElement("mag_drum") then 
        return "reload_drum_empty"
    end
end

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(8, 0, 0.5),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.9,
    },
    ["cod2019_laser_02_cylinde_alt"] = {
    Sights = {
    {
        Pos = Vector(-1, 21, -2),
        Ang = Angle(0, 0, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["cod2019_laser_01_cylinde_alt"] = {
    Sights = {
    {
        Pos = Vector(-1, 21, -2),
        Ang = Angle(0, 0, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
    ["cod2019_laser_03_cylinde_alt"] = {
    Sights = {
    {
        Pos = Vector(-1, 21, -2),
        Ang = Angle(0, 0, 45),
        ViewModelFOV = 45,
        Magnification = 1.25,
        IgnoreExtra = false,
		KeepBaseIrons = true,
    },
    },
    },
}

SWEP.AttachmentElements = {
    ["body_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["sight_rail"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["pistol_grip"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["stock"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["barrel"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["mag_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["reciever_none"] = {
        Bodygroups = {
            {6,1},
        },
    },
    ["tag_laser"] = {
        Bodygroups = {
            {7,1},
        },
    },
    ["barrel_custom"] = {
    AttPosMods = { 
	[5] = { Pos = Vector(-2, 0, -0.1), },
	},
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("barrel_custom") then 
	model:SetBodygroup(2,2) 
	end
	
    if wep:HasElement("reciever_custom") then 
	model:SetBodygroup(5,0) 
	end
end

SWEP.Attachments = {
    {
        PrintName = "Barrels",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_ak47_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Optics",
        Bone = "tag_holo",
        Pos = Vector(1.5, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Category = {"cod2019_optic",},
        CorrectiveAng = Angle(0, 0, 0),
		InstalledElements = {"sight_rail"},
		ExcludeElements = {"forwardoptic"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = "cod2019_muzzle",
        Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		--InstalledElements = {"muzzle"},
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = "cod2019_tac_rail_cylinder",
        Bone = "tag_laser_attach",
        Pos = Vector(-0.34, -1.34, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"tag_laser"},
    },
    {
        PrintName = "Grips",
        DefaultAttName = "Default",
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 180),
		Scale = 1,
		InstalledElements = {"barrel"},
    },
    {
        PrintName = "Stock",
        DefaultAttName = "Standard Stock",
        Category = "cod2019_tube",
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		InstalledElements = {"stock"},
    },
    {
        PrintName = "Ammo",
        Bone = "j_mag1",
        Category = {"cod2019_ammo"},
        Pos = Vector(0, 0, -1.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
		Bone = "j_mag1",
        Category = {"cod2019_mag","cod2019_akilo47_mag"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Reciever",
        DefaultAttName = "Standard Barrel",
        Category = "cod2019_ak47_reciever",
        Bone = "tag_attachments",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(13, 0, 4.8),
    },
    {
        PrintName = "Perk",
        Category = {"cod2019_perks","cod2019_perks_soh"}
    },
    {
        PrintName = "Skins",
        --Bone = "v_weapon.Clip",
        Category = "cod2019_skins_ak47",
		CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_ak47_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_ak47_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_ak47_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Stickers",
        StickerModel = "models/weapons/cod2019/stickers/rif_ak47_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = "Charm",
        Category = "charm",
        Bone = "tag_cosmetic",
        Pos = Vector(0.5, 0, 0),
        Ang = Angle(0, 0, 0),
		Scale = 1.2,
    },
    {
        PrintName = "Stats",
        Category = {"killcounter","killcounter2"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -1),
        Ang = Angle(0, 0, 0),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.6
SWEP.GripPoseParam2 = 0.5
SWEP.CodStubbyGripPoseParam = 6
SWEP.CodStubbyTallGripPoseParam = 22
SWEP.CodAngledGripPoseParam = 21