local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")

igor = {}
Tunnel.bindInterface("devtoolsblocking", igor)

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

local logdodevltools = "https://discord.com/api/webhooks/880908394146463824/rrOVyfKVIRO6KR5zKiSq3LWYjjMMGw8NQL0eYz706FFYEFBQm-UbMOAU-LS8fEPAVyBP"

function igor.ban()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        vRP.kick(source,'BEIJOS DO IGOR! xD')
        vRP.setBanned(parseInt(source),true)
        SendWebhookMessage(logdodevltools, "```ini\n [ TENTATIVA DE ACESSO AO DEVTOOLS ]``` \n ```diff\n- [FUNÇÃO]: (devtoolsban)\n- [PUNIÇÃO]: (BANIMENTO)\n- [ID]: ("..user_id..") \n- [MOTIVO]: O ID ("..user_id..") TENTOU ACESSAR O NUI DEV TOOLS.```")
    end
end