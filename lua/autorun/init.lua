-- lua/autorun/init.lua

-- Make sure to send the client-side files to clients if needed
if SERVER then
    AddCSLuaFile("swb/client/cl_subcategories.lua")
    -- Include any server-side scripts here, if necessary
end

-- Include client-side files
if CLIENT then
    include("swb/client/cl_subcategories.lua")
end
