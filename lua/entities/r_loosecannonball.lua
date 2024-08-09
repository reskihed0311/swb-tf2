AddCSLuaFile()

simple_weapons.Include("Convars")

ENT.Base = "base_anim"
ENT.Type = "anim"

ENT.AutomaticFrameAdvance = true

ENT.Model = Model("models/weapons/tf2_reshed/w_r_cannonball.mdl")

ENT.Damage = 150

function ENT:Initialize()
    self:SetModel(self.Model)

    if SERVER then
        self:PhysicsInitBox(Vector(-0.3, -0.3, -0.3), Vector(0.3, 0.3, 0.3))
        self:SetMoveType(MOVETYPE_FLYGRAVITY, MOVECOLLIDE_FLY_BOUNCE)

        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)

        self:SetGravity(0.5)

        -- Initialize the trail effect here
        local trail = util.SpriteTrail(self, 0, Color(255, 255, 255), false, 15, 1, 0.5, 0.01, "trails/smoke.vmt")

        self:DeleteOnRemove(trail)
    end
end

function ENT:Think()
    self:SetAngles(self:GetVelocity():Angle())
end

if SERVER then
    function ENT:Touch(ent)
        if self:GetTouchTrace().HitSky then
            SafeRemoveEntity(self)
            return
        end

        if bit.band(ent:GetSolidFlags(), FSOLID_VOLUME_CONTENTS + FSOLID_TRIGGER) > 0 then
            local takedamage = ent:GetSaveTable().m_takedamage
            if takedamage == 0 or takedamage == 1 then
                return
            end
        end

        local pos = self:WorldSpaceCenter()

        local explo = ents.Create("env_explosion")
        explo:SetOwner(self:GetOwner())
        explo:SetPos(pos)
        explo:SetKeyValue("iMagnitude", self.Damage * DamageMult:GetFloat())
        explo:SetKeyValue("spawnflags", 32)
        explo:Spawn()
        explo:Activate()
        explo:Fire("Explode")

        SafeRemoveEntity(self)
    end
end
