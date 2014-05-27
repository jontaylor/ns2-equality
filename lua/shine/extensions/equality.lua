Script.Load("lua/Class.lua")

local Plugin = Plugin

function Plugin:Initialise()
  self:CreateCommands()
  self:OverrideMethods


  self.Enabled = true

  return true
end


function Plugin:CreateCommands()
end


--We call the base class cleanup to remove the console commands.
function Plugin:Cleanup()
  self.BaseClass.Cleanup( self )
end


function Plugin:OverrideMethods()
  self.OverrideDoDamage(  )
end






-- Override NS2 Classes

function Plugin:OverrideDoDamage()
  local originalDoDamage
  originalDoDamage = Class_ReplaceMethod( "DamageMixin", "DoDamage", 
      function(damage, target, point, direction, surface, altMode, showtracer)
          if Server then
            // The doer is always self
            local doer = self 
            if self:isa("Player") then // Lets not nerf things like mines, whips, arcs
              // Do damage reduction lookup here
            end  
          end
            
          originalDoDamage(damage, target, point, direction, surface, altMode, showtracer)
      end
  )
end


















Shine:RegisterExtension( "equality" , Plugin )