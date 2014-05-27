--The plugin table registered in shared.lua is passed in as the global "Plugin".
local Plugin = Plugin

function Plugin:Initialise()
  self:CreateCommands()

  self.Enabled = true

  return true
end


function Plugin:CreateCommands()
end


--We call the base class cleanup to remove the console commands.
function Plugin:Cleanup()
  self.BaseClass.Cleanup( self )
end


Shine:RegisterExtension( "equality" , Plugin )