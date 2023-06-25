SWEP.CustomSelectIcon = Material("vgui/hud/arc9_cod2019_nade_frag")

SWEP.Base = "arc9_base_nade"

SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = "Specials"

SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true

SWEP.PrintName = "Frag"
SWEP.Class = "Grenade"
SWEP.Description = [[Cookable fragmentation grenade.]]

SWEP.Credits = {
    Author = "Twilight Sparkle/Firmeteran",
    Assets = "Infinity Ward"
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Throwable"
        -- add other attachment modifiers
    },
}

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cod2019/c_eq_frag.mdl"
SWEP.WorldModel = "models/weapons/cod2019/c_eq_frag.mdl"
SWEP.MirrorVMWM = false
SWEP.WorldModelOffset = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(-10, 0, 180),
    TPIKPos = Vector(-10, 10, -10),
    TPIKAng = Angle(0, 0, 180),
    Scale = 1,
}

SWEP.BottomlessClip = true
SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.
SWEP.Crosshair = true

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "arc9_cod2019_thrownfrag"
SWEP.Ammo = "grenade"

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = true -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = 3 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 1000 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 1000 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 1000 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 1 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = false -- Grenade tumbles when thrown.
SWEP.Disposable = true 

-------------------------- HANDLING
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.
-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ViewModelFOVBase = 65

SWEP.SprintPos = Vector(0, 0, -5)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.SprintMidPoint = {
    Pos = Vector(0, -1.5, -0.15),
    Ang = Angle(0, 0, 0)
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -0.5, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.MovingPos = Vector(0, -1, -1)
SWEP.MovingAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.5, -0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 20, 3)

SWEP.CustomizeSnapshotPos = Vector(0, 20, 0)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false

SWEP.ShootPosOffset = Vector(0, 15, -5)

-------------------------- HoldTypes

SWEP.HoldType = "slam"
SWEP.HoldTypeSprint = "slam"
SWEP.HoldTypeHolstered = "slam"
SWEP.HoldTypeSights = "slam"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1

local path = "weapons/cod2019/throwables/frag/"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    -- ["idle_primed"] = {
        -- Source = "idle_primed"
    -- },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = path .. "grenade_pin_frag_cloth.ogg", t = 0/30},
            {s = path .. "grenade_pin_frag_01.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = path .. "grenade_pin_frag_cloth.ogg", t = 0/30},
        },
    },
    -- ["pullpin"] = {
        -- Source = "pullpin",
        -- MinProgress = 0.666,
        -- FireASAP = true,
		-- Mult = 1.5,
        -- EventTable = {
            -- {s = path .. "grenade_pin_frag_cloth.ogg", t = 0/30},
            -- {s = path .. "grenade_pin_frag_01.ogg", t = 0/30},
        -- },
    -- },
    ["throw"] = {
        Source = "throw",
        EventTable = {
            {s = path .. "grenade_frag_throw.ogg", t = 0/30},
        },
        MinProgress = 0.5
    },
    ["toss"] = {
        Source = "underhand",
        EventTable = {
            {s = path .. "grenade_frag_throw.ogg", t = 0/30},
        },
        MinProgress = 0.5
    },
    -- ["idle_sprint"] = {
        -- Source = "sprint",
    -- },
    -- ["enter_sprint"] = {
        -- Source = "sprint_in",
    -- },
    -- ["exit_sprint"] = {
        -- Source = "sprint_out",
    -- },
}

-------------------------- ATTACHMENTS

SWEP.Attachments = {
    {
        PrintName = "Functions",
        Category = {"go_nade_type"},
    },
}