local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")

igor = Tunnel.getInterface("devtoolsblocking")



RegisterNUICallback('opening',function()
   igor.ban()
end)