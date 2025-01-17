AddCSLuaFile()

ENT.Base = "arc9_cod2019_arrow_base"
ENT.PrintName = "Explosive Crossbow Bolt"

ENT.Projectile = {
	Speed = 7000,
	Gravity = 1,
	PickUp = false
}

ENT.Model = "models/weapons/cod2019/mags/w_eq_crossbow_bolt.mdl"

if CLIENT then
    killicon.Add( "arc9_cod2019_proj_crossbow_he", "hud/killicons/default", Color( 255, 255, 255, 255 ) )
end

function ENT:Impact(tr1, phys, bHull)
	local effectdata = EffectData()
	effectdata:SetOrigin( self:GetPos() )
	effectdata:SetAngles( self:GetAngles() )
	SafeRemoveEntityDelayed(self, 20)

	phys:EnableMotion(false)

	if (self.Projectile.PickUp) then
		self:AddEffects(EF_ITEM_BLINK)
	end

	self:SetMoveType(MOVETYPE_NONE)
	self:SetNailed(true)

	self:StopParticles()
	
	util.BlastDamage(self, self:GetOwner(), self:GetPos(), 64, 150)
	EffectData():SetOrigin(self:GetPos())
	EffectData():SetAngles(self:GetAngles())
	EffectData():SetNormal(self:GetForward())
	if self:WaterLevel() >= 1 then
	  util.Effect( "WaterSurfaceExplosion", effectdata )
	  self:EmitSound("weapons/underwater_explode3.wav", 125, 100, 1, CHAN_AUTO)
	  self:Remove()
	   else
	  ParticleEffect("muzzleflash_slug", self:GetPos(), self:GetAngles(), nil)
	  util.Decal("Scorch", self:GetPos(), self:GetPos() - Vector(0, 0, 50), self)
	  self:EmitSound("COD2019.HE_ExplosiveHit")
	end
	self:Remove()
	sound.Play("MW19_Crossbow.Hit", self:GetPos())
	self:FireBullets({
		Attacker = self:GetOwner(),
		Num = 1,
		Tracer = 0,
		Damage = 125,
		Force = 25,
		Src = self.LastPos,
		Dir = (phys:GetPos() - self.LastPos):GetNormalized(),
		HullSize = bHull && self.Maxs:Length() * 2 || 1,
		IgnoreEntity = self,
	})
end