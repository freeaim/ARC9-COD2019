AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_proj_strela_default", "vgui/killicons/cod2019_la_jokr.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_la_jokr.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_launcher") or "Launchers"

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_javelin") or "JOKR"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_launcher") or "Rocket Launcher"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_forgetac"),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Palindrone/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_javelin_desc") or [[Fire and forget lock-on portable missile launcher with a large explosive yield. Infrared guided missiles take a top-attack trajectory, ensuring destruction of heavily armored vehicles.]]

SWEP.ViewModel = "models/weapons/cod2019/c_eq_jokr.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_eq_jokr.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 8, -4),
    Ang = Angle(-17, 3, 190),
    TPIKPos = Vector(-10, 7.5, -5),
    TPIKAng = Angle(-9, 0, 175),
    Scale = 1
}

SWEP.CantPeek = true
SWEP.NoAimAssist = true

-------------------------- DAMAGE PROFILE

SWEP.ShootEnt = "arc9_cod2019_proj_jokr_default" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 4000

SWEP.ShootPosOffset = Vector(5, -1, -5)
SWEP.ShootAngOffset = Angle(0, 0, 0)

SWEP.ShootPosOffsetSights = Vector(5, -1, -5)
SWEP.ShootAngOffsetSights = Angle(0, 0, 0)

SWEP.PushBackForce = 5

-------------------------- MAGAZINE

SWEP.Ammo = "RPG_Round" -- what ammo type the gun uses

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 12 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 12 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.DrawCrosshair = true
SWEP.Crosshair = true
SWEP.MissileCrosshair = false

SWEP.CustomCrosshair = true
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair.png", "mips smooth")
SWEP.CustomCrosshairSize = 22

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = -1,
        PrintName = ARC9:GetPhrase("mw19_firemode_lockon_top"),
        TopAttack = true
    },
    {
        Mode = -1,
        PrintName = ARC9:GetPhrase("mw19_firemode_lockon"),
        TopAttack = false,
        ShootEnt = "arc9_cod2019_proj_jokr_default2",
		-- ToggleOnF = true,
        -- LaserColorPlayer = true,
        -- Laser = true,
        -- LaserStrength = 4,
        -- LaserColor = Color(0, 255, 0),
        -- LaserAttachment = 4,
    },
    -- {
        -- Mode = -1,
        -- PrintName = "Guided-Fire",
        -- TopAttack = false,
        -- ShootEnt = "arc9_cod2019_proj_jokr_saclos",
		-- -- ToggleOnF = true,
        -- -- LaserColorPlayer = true,
        -- -- Laser = true,
        -- -- LaserStrength = 4,
        -- -- LaserColor = Color(0, 255, 0),
        -- -- LaserAttachment = 4,
    -- },
}

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 3 -- Multiplier for vertical recoil

SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.3
SWEP.RecoilRandomSide = 0.3

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilDissipationRateSights = 50
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 10 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 3

SWEP.RecoilMultCrouch = 0.9

SWEP.RecoilPerShot = 1
SWEP.RecoilMax = 1

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true
SWEP.VisualRecoilMultSights = 0.6
SWEP.VisualRecoilPunchSights = 15
SWEP.VisualRecoilPunch = 3
SWEP.VisualRecoilUp = 0.1
SWEP.VisualRecoilRoll = 5
SWEP.VisualRecoilSide = -1/6

-------------------------- SPREAD

SWEP.Spread = 0.02

SWEP.SpreadAddRecoil = 0.01

SWEP.SpreadAddHipFire = 0
SWEP.SpreadAddMove = 0.005
SWEP.SpreadAddMidAir = 0.01
SWEP.SpreadAddCrouch = -0.03
SWEP.SpreadAddSights = -(SWEP.Spread)
-- SWEP.SpreadAddSights = -(SWEP.Spread + (SWEP.SpreadAddMove / 2))

SWEP.SpreadMultRecoil = 1
SWEP.RecoilModifierCap = 3
SWEP.RecoilModifierCapMove = 0
SWEP.RecoilModifierCapSights = 0

SWEP.RecoilPatternDrift = 20

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.SpeedMult = 0.9 -- Walk speed multiplier
SWEP.SpeedMultSights = 0.75 -- When aiming
SWEP.SpeedMultShooting = 0.5

SWEP.AimDownSightsTime = 0.8 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.4 -- How long it takes to go from sprinting to being able to fire.

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.6

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 255, 155) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-0.65, -12.25, 1.59),
    Ang = Angle(0, 15, 9.25),
    Magnification = 1.25,
    ViewModelFOV = 64,
    CrosshairInSights = false
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(1.4, -2, 0),
    Ang = Angle(0.45, 0, 0.23),
}

--- RT Reticle ---
SWEP.RTScope = true
SWEP.RTScopeSubmatIndex = 7
SWEP.RTScopeFOV = 56 / 2 -- FOV multiplied by zoom level
SWEP.RTScopeReticle = Material("hud/arc9_cod2019/overlays/jokr_crosshair.png")
SWEP.RTScopeColorable = false
SWEP.RTScopeShadowIntensity = 0
SWEP.RTScopeNoShadow = true
SWEP.RTScopeBlackBox = false
SWEP.RTScopeBlackBoxShadow = false
SWEP.ScopeScreenRatio = 1
SWEP.RTScopeReticleScale = 1

SWEP.RTScopeFLIR = true
SWEP.RTScopeFLIRSolid = false -- Solid color FLIR instead of like a shaded look
SWEP.RTScopeFLIRCCCold = { -- Color correction drawn only on FLIR targets
    [ "$pp_colour_addr" ] = 0,
    [ "$pp_colour_addg" ] = 0,
    [ "$pp_colour_addb" ] = 0,
    [ "$pp_colour_brightness" ] = 0,
    [ "$pp_colour_contrast" ] = 0.5,
    [ "$pp_colour_colour" ] = 0.5,
    [ "$pp_colour_mulr" ] = 0,
    [ "$pp_colour_mulg" ] = 0,
    [ "$pp_colour_mulb" ] = 0
}
SWEP.RTScopeFLIRCCHot = { -- Color correction drawn only on FLIR targets
    ["$pp_colour_addr"] = 1,
    ["$pp_colour_addg"] = 1,
    ["$pp_colour_addb"] = 1,
    ["$pp_colour_brightness"] = -0.59,
    ["$pp_colour_contrast"] = 1,
    ["$pp_colour_colour"] = 0,
    ["$pp_colour_mulr"] = 0,
    ["$pp_colour_mulg"] = 0,
    ["$pp_colour_mulb"] = 0
}

local noise = Material("models/cod2019/shared/mw19_thermalnoise")
local shadow = Material("arc9/shadow_square")

SWEP.RTScopeDrawFunc = function(swep, rtsize)
cam.Start2D()
surface.SetMaterial(noise)
surface.SetDrawColor(255,255,255)
surface.DrawTexturedRectRotated((rtsize / 2) + (rtsize * math.Rand(-0.25, 0.25)), (rtsize / 2) + (rtsize * math.Rand(-0.25, 0.25)), rtsize, rtsize, math.Rand(0, 360))
surface.DrawTexturedRectRotated((rtsize / 2) + (rtsize * math.Rand(-0.5, 0.5)), (rtsize / 2) + (rtsize * math.Rand(-0.5, 0.5)), rtsize * 2, rtsize * 2, math.Rand(0, 360))
cam.End2D()

DrawBloom( 0.65, 2, 9, 9, 1, 1, 1, 1, 1 )
end
----------------------------------------------------

SWEP.ViewModelFOVBase = 65

SWEP.MovingMidPoint = {
    Pos = Vector(-0.5, -0.5, -0.5),
    Ang = Angle(0, 0, -5)
}

SWEP.ActivePosShooting = Vector(0, 0, 0)
SWEP.ActiveAngShooting = Angle(0, 0, 0)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(-1.5, -1, -1.5)
SWEP.MovingAng = Angle(0, 0, -8)

SWEP.CrouchPos = Vector(-1, -0.5, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(1, 0, -2.5)
SWEP.SprintAng = Angle(0, -2, 0)

SWEP.CustomizeAng = Angle(90, -5, 20)
SWEP.CustomizePos = Vector(8, 37, 3)
SWEP.CustomizeRotateAnchor = Vector(3, -2.25, -4)
SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeNoRotate = false
SWEP.CustomizeSnapshotPos = Vector(-1, 15, 3)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_m79"
SWEP.AfterShotParticle = "AC_muzzle_smoke_barrel"
SWEP.AfterShotParticleDelay = -1
SWEP.MuzzleEffectQCA = 1
SWEP.ProceduralViewQCA = 1

--- LASER FUNCTION
SWEP.ToggleOnF = true
SWEP.LaserColorPlayer = true
SWEP.Laser = true
SWEP.TacticalName = "Laser"
SWEP.LaserStrength = 4
SWEP.LaserColor = Color(255, 0, 0)
SWEP.LaserAttachment = 4
------------------------------------

SWEP.CamQCA = 3
SWEP.CamQCA_Mult = 1

SWEP.NoShellEject = true

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false
SWEP.DropMagazineModel = "models/weapons/cod2019/mags/w_eq_strela_shell.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {
"weapons/cod2019/shared/magazine_drops/iw8_phys_shell_drop_large_shell_concrete_01.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_shell_drop_large_shell_concrete_02.ogg",
"weapons/cod2019/shared/magazine_drops/iw8_phys_shell_drop_large_shell_concrete_03.ogg",
}
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.4
SWEP.DropMagazineQCA = 2
SWEP.DropMagazineAng = Angle(0, -90, 0)

-------------------------- SOUNDS

local path = "weapons/cod2019/jokr/"

SWEP.ShootSound = "COD2019.JOKR.Fire"
SWEP.ShootSoundIndoor = "COD2019.JOKR.Fire"

-- Outside
SWEP.LayerSound = "Layer_Sniper.Outside"
SWEP.DistantShootSound = "Distant_Strela.Outside"
-- Inside
SWEP.LayerSoundIndoor = "Layer_Shotgun.Inside"
SWEP.DistantShootSoundIndoor = "Distant_Strela.Inside"
---------------------------------------------------

SWEP.DryFireSound = "weapons/cod2019/strela/weap_kgolf_fire_plr_fcg_01.ogg"
SWEP.FiremodeSound = "weapons/cod2019/strela/weap_kgolf_fire_plr_fcg_01.ogg"

SWEP.EnterSightsSound = "weapons/cod2019/jokr/weap_la_juliet_ads_up.ogg"
SWEP.ExitSightsSound = "weapons/cod2019/jokr/weap_la_juliet_ads_down.ogg"

SWEP.TriggerDelay = 0.02 -- Set to > 0 to play the "trigger" animation before shooting. Delay time is based on this value.
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.02 -- Time until weapon fires.

SWEP.TriggerDownSound = ""
SWEP.TriggerUpSound = ""

SWEP.BulletBones = {
    [1] = {"j_rocket","j_frontfin_1","j_frontfin_2","j_rearfin_1","j_rearfin_2","j_rearfin_3","j_rearfin_4"},
}

SWEP.HookP_BlockFire = function(self)
    return self:GetSightAmount() < 1
end

SWEP.Hook_GetShootEntData = function(self, data)
    local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 1)

    if tracktime >= 1 and self.TargetEntity and IsValid(self.TargetEntity) then
        data.Target = self.TargetEntity
    end
end

SWEP.Hook_HUDPaintBackground = function(self)
    if self:GetSightAmount() >= 0.75 then
        if self.TargetEntity and IsValid(self.TargetEntity) and self:Clip1() > 0 then
             local toscreen = self.TargetEntity:GetPos():ToScreen()
             local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 2)
             
             if tracktime >= 1 then
                surface.SetDrawColor(255, 0, 0)
                surface.DrawLine(0, toscreen.y, ScrW(), toscreen.y)
                surface.DrawLine(toscreen.x, 0, toscreen.x, ScrH()) 
             else
                surface.SetDrawColor(255, 255, 255)
                surface.DrawOutlinedRect( toscreen.x-ScrW()/50, toscreen.y-ScrW()/50, 50, 50,2 )
             end
        end
    end
end

---- LOCK-IN FUNCTIONS

SWEP.NextBeepTime = 0
SWEP.TargetEntity = nil
SWEP.StartTrackTime = 0
SWEP.LockTime = 1

SWEP.Hook_Think2 = function(self)
    if self:GetSightAmount() >= 0.75 and self:Clip1() > 0 and self:GetCurrentFiremodeTable().TopAttack then

        if self.NextBeepTime > CurTime() then return end

        local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 2)

        -- if CLIENT then
        if tracktime >= 1 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("weapons/cod2019/jokr/JOKR_ui_reticle_locked.ogg", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.15
        elseif tracktime >= 0 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("weapons/cod2019/jokr/JOKR_ui_reticle_tracking.ogg", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.4
        else
            if CLIENT then
                self:EmitSound("", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.4
        end
        -- end

        local targets = ents.FindInCone(self:GetShootPos() + (self:GetShootDir():Forward() * 32), self:GetShootDir():Forward(), 30000, math.cos(math.rad(10)))

        local best = nil
        local targetscore = 0

        for _, ent in ipairs(targets) do
            -- if ent:Health() <= 0 then continue end
            -- if !(ent:IsPlayer() or ent:IsNPC() or ent:GetOwner():IsValid()) then continue end
            if ent:IsWorld() then continue end
            if ent == self:GetOwner() then continue end
            if ent.IsProjectile then continue end
            if ent.UnTrackable then continue end

            local aa, bb = ent:GetRotatedAABB(ent:OBBMins(), ent:OBBMaxs())
            local vol = math.abs(bb.x - aa.x) * math.abs(bb.y - aa.y) * math.abs(bb.z - aa.z)

            if vol <= 100000 and !ent:IsPlayer() then continue end

            local dot = (ent:GetPos() - self:GetShootPos()):GetNormalized():Dot(self:GetShootDir():Forward())

            local entscore = 1

            if ent:IsPlayer() then entscore = entscore + 5 end
            if ent:IsNextBot() then entscore = entscore + 6 end
            if ent:IsNPC() then entscore = entscore + 2 end
            if ent:IsVehicle() then entscore = entscore + 10 end

            entscore = entscore + dot * 5

            entscore = entscore + (ent.ARC9TrackingScore or 0)

            if entscore > targetscore then
                local tr = util.TraceLine({
                    start = self:GetShootPos(),
                    endpos = ent:WorldSpaceCenter(),
                    filter = self:GetOwner(),
                    mask = MASK_SHOT
                })
                if tr.Entity == ent then
                best = ent
                bestang = dot
                targetscore = entscore
                end
            end
        end

        if !best then self.TargetEntity = nil return end

        if !self.TargetEntity then
            self.StartTrackTime = CurTime()
        end

        self.TargetEntity = best
    else
        self.TargetEntity = nil
    end
end

SWEP.Animations = {
	["enter_sights"] = {
		Source = "idle",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
	},
    ["fire"] = {
        Source = "shoot1",
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.8,
		--DropMagAt = 2.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_la_juliet_reload_start.ogg", t = 9/30},
			{s = path .. "wfoly_la_juliet_reload_rocketin_01.ogg", t = 25/30},
			{s = path .. "wfoly_la_juliet_reload_end.ogg", t = 51/30},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.95,
		FireASAP = true,
		RefillProgress = 0.75,
		--DropMagAt = 1.5,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{s = path .. "wfoly_la_juliet_reload_start.ogg", t = 1/30},
			{s = path .. "wfoly_la_juliet_reload_rocketin_01.ogg", t = 10/30},
			{s = path .. "wfoly_la_juliet_reload_end.ogg", t = 34/30},
        },
    },
    ["ready"] = {
        Source = {"draw"},
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_la_juliet_raise_first_up.ogg", t = 3/30},
			{s = path .. "wfoly_la_juliet_raise_first_settle.ogg", t = 20/30},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.4,
        FireASAP = true,
        EventTable = {
            {s = path .. "wfoly_la_juliet_raise_up.ogg", t = 2/30},
			{s = path .. "wfoly_la_juliet_raise_settle.ogg", t = 22/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "weap_la_juliet_ads_down.ogg", t = 3/30},
            {s = path .. "wfoly_la_juliet_raise_first_settle.ogg", t = 7/30},
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
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Mult = 3,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Mult = 3,
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Mult = 3,
    },
    ["inspect"] = {
        Source = "lookat01",
        MinProgress = 0.1,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 1.1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_la_juliet_inspect_01.ogg", t = 1/30},
			{s = path .. "wfoly_la_juliet_inspect_02.ogg", t = 47/30},
			{s = path .. "wfoly_la_juliet_inspect_03.ogg", t = 78/30},
        },
    },
    ["bash"] = {
        Source = "melee_01",
    },
    ["firemode_1"] = {
        Source = "firemode",
    },
    ["firemode_2"] = {
        Source = "firemode",
	},
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendEmpty

-------------------------- ATTACHMENTS

--- Fast & Tac. Sprint ---
local Translate_Fast = {
    ["reload"] = "reload_fast",
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

    if super_sprint and Translate_TacSprint[anim] then
        return Translate_TacSprint[anim]
    end

    if speedload then
        if Translate_Fast[anim] then
            return Translate_Fast[anim]
            end
        end
    end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(0, 0, 0),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["cod2019_perks_super_sprint"] = {
    SprintPos = Vector(0, 0, -2.5),
    SprintAng = Angle(0, 0, 0)
    },
}

-- SWEP.AttachmentElements = {
    -- ["grip"] = {
        -- Bodygroups = {
            -- {1,1},
        -- },
    -- },
    -- ["sights_scope"] = {
        -- Bodygroups = {
            -- {2,1},
        -- },
    -- },
-- }

-- SWEP.Hook_ModifyBodygroups = function(wep, data)
    -- local model = data.model
    -- if wep:HasElement("sights_scope") then model:SetBodygroup(2,0) end
-- end

SWEP.Attachments = {
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_optic"),
		-- DefaultIcon = Material("arc9/def_att_icons/optic.png", "mips smooth"),
        -- Bone = "tag_launcher_offset",
        -- Pos = Vector(5, -3.1, 1.9),
        -- Ang = Angle(0, 0, -90),
        -- -- Category = {"cod2019_optic","cod2019_optic_strela"},
        -- Category = {"cod2019_optic_strela"},
        -- InstalledElements = {"sights_scope"},
		-- --Installed = "cod2019_optic_scope_strela",
		-- --Integral = "cod2019_optic_scope_strela",
        -- CorrectiveAng = Angle(7, 6.2, -90),
    -- },
    -- {
        -- PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		-- DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        -- Bone = "tag_launcher_offset",
        -- Category = {"cod2019_strela_ammo"},
        -- Pos = Vector(5, 0, 0),
        -- Ang = Angle(0, 0, 0),
    -- },
    {
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "j_rocket",
        Category = {"cod2019_jokr_ammo"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
		PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"}
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        --Bone = "v_weapon.Clip",
        Category = "cod2019_jokr_skins",
		CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_strela_decal_a.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_strela_decal_b.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_strela_decal_c.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/eq_strela_decal_d.mdl",
        Category = "stickers",
    },
    {
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        Category = {"charm", "killcounter"},
		RejectAttachments = { ["arc9_stat_proscreen"] = true },
		CosmeticOnly = true,
        Bone = "tag_launcher_offset",
        Pos = Vector(3, -1.7, 0.7),
        Ang = Angle(0, 0, 0),
		Scale = 1.5,
    },
}
