-- Devloper @Bot_Api
-- Channel @NewsBotApi
local triggers = {
		'^/(contact) (.+)$',
		'^/(pm) (%d+)', 
}
	
local action = function(msg, matches)
if matches[1] == 'contact' and matches[2] then

api.sendChatAction(msg.chat.id, 'typing')
api.sendMessage(msg.chat.id, '*Sent!*', true)

api.sendChatAction(msg.chat.id, 'typing')
api.forwardMessage(config.admin, msg.from.id, msg.message_id)
end

if is_admin(msg) and matches[1] == 'pm' and matches[2] and matches[3] then
local is_member = client:sismember('BcUsernames', matches[2])

if is_member then
api.sendChatAction(matches[2], 'typing')
api.sendMessage(matches[2], '#New Message\n'..matches[3], true)

api.sendChatAction(msg.chat.id, 'typing')
api.sendReply(msg, '*Sent For '..matches[2]..'*', true)
else
api.sendChatAction(msg.chat.id, 'typing')
api.sendReply(msg, '*I Can Not Send Any Messages To This User!*', true)
end
end

end

return {
  action = action,
  triggers = triggers,
}
-- Devloper @Bot_Api
-- Channel @NewsBotApi
