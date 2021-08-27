local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")

func = {}
Tunnel.bindInterface("core_devtools", func)

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

local webhook = ""
function func.Punicao()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        vRP.kick(source,'Você foi expulso por estar utilizando o Dev Tools, não mecha nisso!')
        SendWebhookMessage(webhook, "ANTI DEVTOOLS     [ID]: "..user_id.."  [KICKADO]		[MOTIVO: ACESSANDO O DEVTOOLS]	")
    end
end