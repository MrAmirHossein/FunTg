local triggers = {
	'^/(bc) (.*)$',
	'^/(id)$',
}
	
local action = function(msg, matches)
	
	if is_admin(msg) and matches[1] == 'bc' then
		local users = client:smembers('BcUsernames')
		local text = ''
		if not users then
		text = 'No User Available!'
		end
		for i=1, #users do
		api.sendMessage(users[i], matches[2], true)
		print(colors('%{green bright}Sent For'), users[i])
		text = 'Message Sent For *All* Users!'
		end
		api.sendReply(msg, text, true)
	end
if  is_admin(msg) and matches[1] == 'id' then
if not msg.reply then return end
if msg.reply then
local id = msg.reply.from.id
if msg.reply.forward_from then
id = msg.reply.forward_from.id
elseif msg.reply.forward_from_chat then
id = msg.reply.forward_from_chat.id
end

api.sendMessage(msg.chat.id, id, true)
end
end
end

	
return {
	action = action,
	triggers = triggers,
}
