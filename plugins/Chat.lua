local triggers = {
    '^/(unblock) (%d+)$',
    '^/(block) (%d+)$',
    '^/(unblock)$',
    '^/(block)$',
    '^/(chat)$',
    '^/(end)$',
	'^###cb:/(chat)',
	'^###cb:/(end)',
    '^(.*)$',
    }
	local function endchat()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'تمام', callback_data = '/end'}
	    }
    }
    return keyboard
end
local action = function(msg, matches)
redis:hset(hash, key, val)
local msg_id = msg.message_id
local user_id = msg.chat.id
local info = redis:hget('pm:user')
if matches[1] == 'chat' then
if info == 'ban' then 
 api.sendMessage(msg.chat.id, '`ننه جنده گرامی شما بن شده اید`', true) 
else
 redis:hset('pm:user' , user_id, 'true')
 api.sendMessage(msg.chat.id, 'چت شروع شد ، پیام خود را ارسال کنید', true) 
 end
 end
if matches[1] == 'end' then
if info == 'ban' or info == 'false' then 
return nil 
else
 redis:hset('pm:user', user_id, 'false')
api.sendMessage(msg.chat.id, 'چت به اتمام رسید', true) 
end
end
if msg.chat.type == 'private' and chat_info == 'true' then
if matches[1] == 'end' or matches[1] == 'chat' then return nil end
api.forwardMessage('-1001116065334', msg.chat.id, msg_id) 
api.sendKeyboard(msg.chat.id, 'ارسال شد', endchat(), true)
end
if matches[1] == 'ban' then
if msg.reply and msg.reply.forward_from and msg.chat.type == 'supergroup' and msg.chat.id == -1001116065334 and not matches[2] then
msg = msg.reply
local user_id = msg.forward_from.id
 redis:hset('pm:user', user_id, 'ban')
api.sendMessage(msg.chat.id, 'کاربر بلاک شد', true) 
api.sendMessage(user_id, '`ببخشید ننه خراب شما بن شدید`', true) 
else
 if msg.chat.type == 'supergroup' and msg.chat.id == -1001116065334 then
 if msg.reply then return nil end
local user_id = matches[2]
 redis:hset('pm:user', user_id, 'ban')
api.sendMessage(msg.chat.id, 'کاربر بلاک شد', true) 
api.sendMessage(user_id, '`ببخشید ننه خراب شما بن شدید`', true) 
end 
end
end
if matches[1] == 'unban' then
if msg.reply and msg.reply.forward_from and msg.chat.type == 'supergroup' and msg.chat.id == -1001116065334 and not matches[2] then
msg = msg.reply
local user_id = msg.forward_from.id
 redis:hset('pm:user', user_id, 'false')
api.sendMessage(msg.chat.id, 'کاربر ان بن شد', true) 
api.sendMessage(user_id, 'شما از بن ازاد شدید', true) 
else
 if msg.chat.type == 'supergroup' and msg.chat.id == -1001116065334 then
  if msg.reply then return nil end
local user_id = matches[2]
 redis:hset('pm:user', user_id, 'false')
api.sendMessage(msg.chat.id, 'کاربر ان بن شد', true) 
api.sendMessage(user_id, 'شما از بن ازاد شدید', true) 
end 
end
end
    if msg.reply and msg.reply.forward_from and msg.chat.type == 'supergroup' and msg.chat.id == -1001116065334 then
   msg = msg.reply_to_message
    local receiver = msg.forward_from.id
    local input = matches[1]
      api.sendMessage(receiver, 'پاسخ:\n\n'..input, false)
end
end
return {
  action = action,
        triggers = triggers,
}