local triggers = {
  '^/(start)$',
  '^/(mod)$',
  '^###cb:/(admin)',
  '^###cb:/(about)',
  '^###cb:/(panel)',
  '^###cb:/(members)',
  '^###cb:/(stats)',
  '^###cb:/(reload)',
  '^###cb:/(kb)',
  '^###cb:/(md)',
  '^###cb:/(em)',
  '^###cb:/(sp)',
  '^###cb:/(Amir)',
  '^###cb:/(mehdi)',
  '^###cb:/(dastanak)',
  '^###cb:/(redastanak)',
  '^###cb:/(chistan)',
  '^###cb:/(rechistan)',
  '^###cb:/(jomlak)',
  '^###cb:/(rejomlak)',
  '^###cb:/(doa)',
  '^###cb:/(redans)',
  '^###cb:/(dans)',
  '^###cb:/(date)',
  '^###cb:/(time)',
  '^###cb:/(rtime)',
  '^###cb:/(tarfand)',
  '^###cb:/(retarfand)',
  '^###cb:/(sangin)',
  '^###cb:/(resangin)',
  '^###cb:/(love)',
  '^###cb:/(relove)',
  '^###cb:/(joke)',
  '^###cb:/(rejoke)',
  '^###cb:/(hadis)',
  '^###cb:/(rehadis)',
  '^###cb:/(home)',
  '^###cb:/(zekr)',
  '^###cb:/(back)',
  '^###cb:/(fall)',
  '^###cb:/(refal)',
}
local function start()
   local keyboard = {}
      keyboard.inline_keyboard = {
	    {
		  {text = "📿بخش اعتقادات و مذهبی", callback_data = "/em"}
		},
		{
		  {text = "😍بخش متنهای دوست داشتنی", callback_data = "/md"}
		},
        {
          {text = "🔖بخش کاربردی ها", callback_data = "/kb"}
        },
		{
          {text = "👥 پشتیبانی", callback_data = "/sp"}
        },
      }
    
    return keyboard
end
local function HOME()
       local keyboard = {}
          keyboard.inline_keyboard = {
	    {
		  {text = "📿بخش اعتقادات و مذهبی", callback_data = "/em"}
		},
		{
		  {text = "😍بخش متنهای دوست داشتنی", callback_data = "/md"}
		},
        {
          {text = "🔖بخش کاربردی ها", callback_data = "/kb"}
        },
		{
          {text = "👥 پشتیبانی", callback_data = "/sp"}
        },
      }
	  
    return keyboard
end
local function em()
    local keyboard = {}
          keyboard.inline_keyboard = {
		  {
		     {text = "گرفتن فال📮", callback_data = "/fall"}
		  },
		  {
           	 {text = "دعای روز🙏", callback_data = "/doa"}
          },
          {
             {text = "حديث📇", callback_data = "/hadis"}
         },
		 {
		    {text = "ذکر امروز🗓", callback_data = "/zekr"}
		  },
		 {
		    {text = "بازگشت به منوی اصلی🔚", callback_data = "/home"}
		 },
}		 
    
    return keyboard
end

local function modr()
    local keyboard = {}
          keyboard.inline_keyboard = {
            {
              {text = "بروز رساني افزونه ها♻️", callback_data= "/reload"}
            },
            {
              {text = "امار دقيق ربات📊", callback_data = "/stats"}
            },
          }

    return keyboard
end
local function admin()
    local keyboard = {}
          keyboard.inline_keyboard = {
            {
              {text = "بروز رساني افزونه ها♻️", callback_data= "/reload"}
            },
            {
              {text = "امار دقيق ربات📊", callback_data = "/stats"}
            },
          }

    return keyboard
end
local function md()
     local keyboard = {}
          keyboard.inline_keyboard = {
		  {
		    {text = "عاشقانه❤️", callback_data = "/love"}
		  },
		  {
		    {text = "سنگين😧", callback_data = "/sangin"}
		  },
		  {
		    {text = "داستانک😺", callback_data = "/dastanak"},{text = "دانستنیها🙃", callback_data = "/dans"}
		  },
		  {
		    {text = "چیستان🤔", callback_data = "/chistan"},{text = "ترفند😳", callback_data = "/tarfand"}
		  },
		  {
		    {text = "جملک😏", callback_data = "/jomlak"},{text = "جوک😂", callback_data = "/joke"}
		  },
		 {
		    {text = "بازگشت به منوی اصلی🔚", callback_data = "/home"}
		 },
}		 
    
    return keyboard
end
		
	local function kb()
      local keyboard = {}
          keyboard.inline_keyboard = {
		  {
		    {text = "زمان🕰", callback_data = "/time"}
		},
		{
		    {text = "تاریخ📆", callback_data = "/date"}
		},
		{
		    {text = "تعداد کاربران📊", callback_data = "/members"}
		},
		{
		    {text = "درباره ما™", callback_data = "/about"}
		},
		 {
		    {text = "بازگشت به منوی اصلی🔚", callback_data = "/home"}
		 },
	}
    
    return keyboard
end

local function fal()
       local keyboard = {}  
          keyboard.inline_keyboard = {
            {
              {text = "گرفتن فال دوباره", callback_data="/refal"},
            },
            {
              {text = "بازگشت🔙", callback_data="/em"},
            },
          }
    return keyboard
end

local function doa()
       local keyboard = {}
          keyboard.inline_keyboard = {
            {
              {text = "بازگشت🔙", callback_data="/em"},
            },
		  }
    return keyboard
end

local function hadis()
      local keyboard = {}  
          keyboard.inline_keyboard = {
            {
              {text = "گرفتن حديث دوباره", callback_data="/rehadis"},
            },
            {
              {text = "بازگشت🔙", callback_data="/em"},
            },
          }
    return keyboard
end

local function zekr()
      local keyboard = {}  
          keyboard.inline_keyboard = {
            {
              {text = "بازگشت🔙", callback_data="/em"},
            },
          }
    return keyboard
end

local function love()
       local keyboard = {}  
          keyboard.inline_keyboard = {
            {
              {text = "دريافت متن عاشقانه ديگر", callback_data="/relove"},
            },
            {
              {text = "بازگشت🔙", callback_data="/md"},
            },
          }
    return keyboard
end

local function sangin()
       local keyboard = {}  
          keyboard.inline_keyboard = {
            {
              {text = "دريافت متن سنگين ديگر", callback_data="/resangin"},
            },
            {
              {text = "بازگشت🔙", callback_data="/md"},
            },
          }
    return keyboard
end

local function das()
      local keyboard = {}
          keyboard.inline_keyboard = {
            {
              {text = 'دریافت داستانک دیگر', callback_data = '/redastanak'}
            },
            {
              {text = "بازگشت🔙", callback_data="/md"},
            },
          }
    return keyboard
end

local function dans()
      local keyboard = {}
          keyboard.inline_keyboard = {
            {
              {text = 'دریافت دانستنی دیگر', callback_data = '/redans'}
            },
            {
              {text = "بازگشت🔙", callback_data="/md"},
            },
          }
    return keyboard
end

local function chistan()
      local keyboard = {}
          keyboard.inline_keyboard = {
            {
              {text = 'دریافت چیستان دیگر', callback_data = '/rechistan'}
            },
            {
              {text = "بازگشت🔙", callback_data="/md"},
            },
          }
    return keyboard
end

local function tarfand()
             local keyboard = {}  
          keyboard.inline_keyboard = {
            {
              {text = "دريافت يه ترفند ديگر", callback_data="/retarfand"},
            },
            {
              {text = "بازگشت🔙", callback_data="/md"},
            },
          }
    return keyboard
end

local function tarfand()
                 local keyboard = {}
          keyboard.inline_keyboard = {
            {
              {text = 'دریافت جملک دیگر', callback_data = '/rejomlak'}
            },
            {
              {text = "بازگشت🔙", callback_data="/md"},
            },
          }
    return keyboard
end
local function update()
                 local keyboard = {}
          keyboard.inline_keyboard = {
      {
        {text = "بازگشت به منوي اصلي", callback_data = "/panel"},
      },
    }
    return keyboard
end
local function joke()
                 local keyboard = {}  
          keyboard.inline_keyboard = {
            {
              {text = "يه جوک ديگه", callback_data="/rejoke"},
            },
            {
              {text = "بازگشت🔙", callback_data="/md"},
            },
          }
    return keyboard
end
local function date()
                 local keyboard = {}
          keyboard.inline_keyboard = {
            {
              {text = "زمان🕰", callback_data= "/time"},
            },
            {
              {text = "بازگشت🔙", callback_data="/kb"},
            },
          }
    return keyboard
end
local function time()
                 local keyboard = {}
          keyboard.inline_keyboard = {
		    {
              {text = "تاریخ📆", callback_data = "/date"}
            },
            {
              {text = "بازگشت🔙", callback_data="/kb"},
            },
          }
    return keyboard
end
local function Members()
                 local keyboard = {}
          keyboard.inline_keyboard = {
        {
          {text = "بازگشت🔙", callback_data="/kb"},

        }
      }
    return keyboard
end
local function jomlak()
                 local keyboard = {}  
          keyboard.inline_keyboard = {
            {
              {text = "دریافت جملک دیگر", callback_data="/rejomlak"},
            },
            {
              {text = "بازگشت🔙", callback_data="/md"},
            },
          }
    return keyboard
end
local function sp()
                local keyboard = {}
          keyboard.inline_keyboard = {
		    {
			  {text = "Mr.AmirHossein", callback_data = "/Amir"}
		    },
			{
			  {text = "Mehdi", callback_data = "/mehdi"}
			},
--  		{
--			  {text = "ارتباط مستقیم", callback_data = "/chat"}
--		    },
		    {
		      {text = "بازگشت به منوی اصلی🔚", callback_data = "/home"}
			},
		}
    return keyboard
end
local function about()
                local keyboard = {}
          keyboard.inline_keyboard = {
            {

              {text = "سازنده ربات", url = "https://t.me/Bot_Api"},{text = "همین حالا 5 ستاره دهید", url = "https://t.me/storebot?start=FallGirRobot"},
            },
            {
              {text = "کمک کننده", url = "https://t.me/HEXTOR"},{text = "Api نویس سایت", url = "https://t.me/Bots_sudo"},
            },
            {
              {text = "کانال ربات", url = "https://t.me/BeyondTeam"},{text = "کانال اخبار ربات", url = "https://t.me/NewsBotApi"}
            },
            {
              {text = "ربات مترجم ما",  url = "https://t.me/TranslateProBot"},{text = "اسپانسر تیم", url = "https://t.me/StoreVps",}
            },
            {
              {text = "بازگشت🔙", callback_data = "/kb"},
            },
          }
    return keyboard
end
local function AmirH()
                local keyboard = {}
          keyboard.inline_keyboard = {
			{
		      {text = "ارسال پیام", url = "https://t.me/Bot_Api"},
			},
			{
			  {text = "ریپورتم", url = "https://t.me/MrAmirAloneBot"},
			},
			{
			  {text = "کانال شخصی", url = "https://t.me/MrAmirAlone"},
		  },
		    {
			  {text = "بازگشت🔙", callback_data="/sp"},
            },
		}
    return keyboard
end
local function mehdi()
       local keyboard = {}
          keyboard.inline_keyboard = {
		    {
			  {text = "ارسال پیام", url = "https://t.me/NeroDev"},
			},
			{
			  {text = "ریپورتم", url = "https://t.me/NeroDevBot"},
			},
			{
			  {text = "کانال", url = "https://t.me/NeroTeam"},
			},
            {
              {text = "بازگشت🔙", callback_data="/sp"},
            },
		  }
	return keyboard
end
local function join()
       local keyboard = {}
          keyboard.inline_keyboard = {
		    {
			  {text = "عضو میشم", url = "https://t.me/NewsBotApi"}
			},
	}
	return keyboard
end
local action = function(msg, matches)
-- Join Channel
res = api.getChatMember("@NewsBotApi", msg.from.id)
 vardump(res)
 if res.result.status == "member" or res.result.status == "administrator" or res.result.status == "creator" then
 else
 local Join = [[😅دوست عزیز شرمنده ام تو در کانال ما عضو نیستی
 اول تو کانال ما عضو شو بعدا ربات رو شروع کن
 دقت کن اگه شروع نکنی نمیتونی از ربات استفاده کنی
 اگه عضو شدی مجددا /start و برای من بفرست تا دکمه هارو واست نمایش بدم😁☺️]]
 local keyboard = join()
 api.sendKeyboard(msg.chat.id, Join, keyboard, true)
   if true then
 return false 
 end
 end
 --start
    if matches[1] == 'start' then
      local Start = [[سلام دوست عزیز به بهترین ربات سرگرمی تلگرام خوش امدید
          این ربات از نظر سرعت و امکانات یکی از بهترین ربات های تلگرامی در قسمت سرگرمیه
		  اگر مشکلی داشتید میتوانید از بخش پشتیبانی با ما در میان بگذارید😉
          ]]
      local keyboard = start()
      api.sendKeyboard(msg.chat.id, Start, keyboard, true)
    end
  
  
  if matches[1] == 'em' then
    local Em = [[به بخش اعتقادات و مذهبی خوش امدید
		یکی را انتخاب کنید : ]]
        local keyboard = em()
    api.editMessageText(msg.chat.id, msg.message_id, Em, keyboard, true)
    end
    
  if matches[1] == 'md' then
    local Md = [[به بخش متن های دوست داشتنی خوش امدید
		یکی را انتخاب کنید : ]]
        local keyboard = md()
       api.editMessageText(msg.chat.id, msg.message_id, Md, keyboard, true)
     end
     
     if matches[1] == 'kb' then
    local Kb = [[به بخش کاربردی ها خوش امدید
		یکی را انتخاب کنید : ]]
        local keyboard = kb()
         api.editMessageText(msg.chat.id, msg.message_id, Kb, keyboard, true)
    end
    	-- Requests
     if matches[1] == 'fall' then
          local req = HTTPS.request('https://apio.a7n.ir/falhafez/')
          new_text = req:gsub('<pre>','')
          new_text2 = new_text:gsub('</pre>','')
		  local keyboard = fal()
          api.editMessageText(msg.chat.id, msg.message_id, 'فال شما : \n*'..new_text2..'*', keyboard, true)
        end		
		
		 if matches[1] == 'refal' then
          local req = HTTPS.request('https://apio.a7n.ir/falhafez/')
          new_text = req:gsub('<pre>','')
          new_text2 = new_text:gsub('</pre>','')
         local keyboard = fal()
          api.editMessageText(msg.chat.id, msg.message_id, 'فال شما : \n*'..new_text2..'*', keyboard, true)
        end
		
		 if matches[1] == 'doa'then
           local Doa = HTTPS.request('http://hektor-tm.ir/api/today-Pray/')
          local keyboard = doa()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Doa..'*', keyboard, true)
        end
		
		if matches[1] == 'hadis' then
          local Hadis = HTTPS.request('http://hektor-tm.ir/api/hadis/')
          local keyboard = hadis()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Hadis..'*', keyboard, true)
        end
		
		if matches[1] == 'rehadis' then
          local Hadis = HTTPS.request('http://hektor-tm.ir/api/hadis/')
                  local keyboard = hadis()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Hadis..'*', keyboard, true)
        end
		
		if matches[1] == 'zekr' then
          local Zekr = HTTPS.request('http://hektor-tm.ir/api/zekr/')
         local keyboard = zekr()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Zekr..'*', keyboard, true)
        end
		
		if matches[1] == 'love' then
          local Love = HTTPS.request('http://hektor-tm.ir/api/asheghane/index.php')
         local keyboard = love()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Love..'*', keyboard, true)
        end
		
		if matches[1] == 'relove' then
          local Love = HTTPS.request('http://hektor-tm.ir/api/asheghane/index.php')
         local keyboard = love()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Love..'*', keyboard, true)
        end
		
		if matches[1] == 'sangin' then
          local Sangin = HTTPS.request('http://hektor-tm.ir/api/sangin/index.php')
         local keyboard = sangin()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Sangin..'*', keyboard, true)
        end
		
		if matches[1] == 'resangin' then
          local Sangin = HTTPS.request('http://hektor-tm.ir/api/sangin/index.php')
         local keyboard = sangin()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Sangin..'*', keyboard, true)
        end
		
		if matches[1] == 'dastanak' then
		local dastanak = HTTP.request('https://api-mramirhossein.ml/bot/dastanak.php')
          new_text = dastanak:gsub('<pre>','')
          new_text2 = new_text:gsub('</pre>','')
          local keyboard = das()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..new_text2..'*', keyboard, true)
		  end
		  
		  	if matches[1] == 'redastanak' then
		local dastanak = HTTP.request('https://api-mramirhossein.ml/bot/dastanak.php')
          new_text = dastanak:gsub('<pre>','')
          new_text2 = new_text:gsub('</pre>','')
          local keyboard = das()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..new_text2..'*', keyboard, true)
		  end
		  
		  if matches[1] == 'dans' then
          local Danestania = HTTPS.request('http://hektor-tm.ir/api/danestani/')
         local keyboard = dans()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Danestania..'*', keyboard, true)
        end
		
		if matches[1] == 'redans' then
          local Danestania = HTTPS.request('http://hektor-tm.ir/api/danestani/')
         local keyboard = dans()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Danestania..'*', keyboard, true)
        end
		
		if matches[1] == 'chistan' then
		local Chistan = HTTP.request('http://api-mramirhossein.ml/bot/chistan.php')
          new_text = Chistan:gsub('<pre>','')
          new_text2 = new_text:gsub('</pre>','')
          local keyboard = chistan()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..new_text2..'*', keyboard, true)
		  end
		  
		  if matches[1] == 'rechistan' then
		local Chistan = HTTP.request('http://api-mramirhossein.ml/bot/chistan.php')
          new_text = Chistan:gsub('<pre>','')
          new_text2 = new_text:gsub('</pre>','')
          local keyboard = chistan()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..new_text2..'*', keyboard, true)
		  end
		  
		  if matches[1] == 'tarfand' then
          local Tarfand = HTTPS.request('http://hektor-tm.ir/api/tarfand/')
          local keyboard = tarfand()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Tarfand..'*', keyboard, true)
        end
		
		 if matches[1] == 'retarfand' then
          local Tarfand = HTTPS.request('http://hektor-tm.ir/api/tarfand/')
          local keyboard = tarfand()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Tarfand..'*', keyboard, true)
        end
		
		if matches[1] == 'jomlak' then
		local Jomlak = HTTP.request('http://api-mramirhossein.ml/bot/jomlak.php')
      local keyboard = jomlak()
          api.editMessageText(msg.chat.id, msg.message_id, '*این بخش در حال تعمیر میباشد*', keyboard, true)
		  end
		  
		  if matches[1] == 'rejomlak' then
		local Jomlak = HTTP.request('http://api-mramirhossein.ml/bot/jomlak.php')
      local keyboard = jomlak()
          api.editMessageText(msg.chat.id, msg.message_id, '*این بخش در حال تعمیر میباشد*', keyboard, true)
		  end
		  
		  if matches[1] == 'joke' then
          local Joke = HTTPS.request('https://api-mramirhossein.ml/bot/joke.php')
          local keyboard = joke()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Joke..'*', keyboard, true)
        end
		
		if matches[1] == 'rejoke' then
          local Joke = HTTPS.request('https://api-mramirhossein.ml/bot/joke.php')
          local keyboard = joke()
          api.editMessageText(msg.chat.id, msg.message_id, '*'..Joke..'*', keyboard, true)
        end
		if matches[1] == 'about' then
		local About = [[نسخه ربات "6.5"
          تشکر ميکنم از دوست خوبم [رضا](https://t.me/HEXTOR) و [پارسا](https://t.me/prs1378)
          زبان برنامه نويسي شده ربات : لوا]]
		local keyboard = about()
		api.editMessageText(msg.chat.id, msg.message_id, About, keyboard, true)
	   end
        if is_admin(msg) and  matches[1] == 'reload' then
         bot_init(true)
         local out = '*بروز رساني هاي اخير اعمال شدند*'
		 local keyboard = update()
         api.editMessageText(msg.chat.id, msg.message_id, out, keyboard, true)
  end
        if is_admin(msg) and matches[1] == 'mod' then
           local panel = [[
👨🏻‍💼سلام قربان به منوی مدیریت خوش امدید
    برای مدیریت ربات یکی از آیتم های زیر را انتخاب نمائید :]]
		   local keyboard = modr()
		   api.sendKeyboard(msg.chat.id, panel, keyboard, true)
		 end
        if is_admin(msg) and matches[1] == 'panel' then
           local Panel = [[👨🏻‍💼سلام قربان به منوی مدیریت خوش امدید
    برای مدیریت ربات یکی از آیتم های زیر را انتخاب نمائید :]]
		   local keyboard = modr()
		   api.editMessageText(msg.chat.id, msg.message_id, Panel, keyboard, true)
		 end
if is_admin(msg) and matches[1] == 'stats' then
  keyboard = {}
  keyboard.inline_keyboard = {
    {
      {text = "بازگشت به منوي اصلي", callback_data = "/panel"},
    }
  }
  --local inlines = client:get('InlineNums') or '0'
  local msgs = client:get('MsgNums') or '0'
  local starts = client:get('StartNums') or '0'
  local blocked = client:get('BlockedUsersN') or '0'
  local members = client:smembers('BcUsernames')
  local mem = ''
  if members then
    for i=1, #members do
      mem = '*Members Count* : `'..i..'`\n'
    end
  end

  local text = '#Stats\n*Blocked Users* : `'..blocked..'`\n*Messages* : `'..msgs..'`\n*Starts* : `'..starts..'`\n'..mem
  local dbinfo = client:info()
  text = text..'\n\n#Clinet Info\n'
  text = text..'1 - *Client Version* : `'..dbinfo.server.redis_version..'`\n'
  text = text..'2 - *Uptime Days* : `'..dbinfo.server.uptime_in_days..'('..dbinfo.server.uptime_in_seconds..' seconds)`\n'
  text = text..'3 - *Commands Processed* : `'..dbinfo.stats.total_commands_processed..'`\n'
  text = text..'5 - *Expired Keys* : `'..dbinfo.stats.expired_keys..'`\n'
  text = text..'6 - *Ops/sec* : `'..dbinfo.stats.instantaneous_ops_per_sec..'`\n'
  api.editMessageText(msg.chat.id, msg.message_id, text, keyboard, true)
end
  -- Members
  local members = client:smembers('BcUsernames')
  local mem = ''
  if members then
    for i=1, #members do
      mem = '`'..i..'`'
    end
    if matches[1] == 'members' then
      local members =  'تعداد کاربران : \n'..mem
	  local keyboard = Members()
      api.editMessageText(msg.chat.id, msg.message_id, members, keyboard, true)
    end
        -- Back for Home
        if matches[1] == 'home' then
          local home = [[سلام دوست عزیز به بهترین ربات سرگرمی تلگرام خوش امدید
          این ربات از نظر سرعت و امکانات یکی از بهترین ربات های تلگرامی در قسمت سرگرمیه
		  اگر مشکلی داشتید میتوانید از بخش پشتیبانی با ما در میان بگذارید😉
          ]]
		  local keyboard = HOME()
          api.editMessageText(msg.chat.id, msg.message_id, home, keyboard, true)
end
	
       
        -- Date
        if matches[1] == 'date' then
          local FAdate = HTTP.request('http://api-mramirhossein.ml/bot/td.php')
          local td = json:decode(FAdate)
		  local keyboard = date()
          api.editMessageText(msg.chat.id, msg.message_id, '📆تاریخ امروز  : *'..td.FAdate..'میباشد*', keyboard, true)
        end
        -- Time
        if matches[1] == 'time' then
          local FAtime = HTTP.request('http://api-mramirhossein.ml/bot/td.php')
          local td = json:decode(FAtime)
		  local keyboard = time()
          api.editMessageText(msg.chat.id, msg.message_id, '🕰ساعت هم اکنون : *'..td.ENtime..'میباشد*', keyboard, true)
        end
		if matches[1] == 'sp' then
         local keyboard = sp()
          api.editMessageText(msg.chat.id, msg.message_id, 'یکی از اشخاص زیر را انتخاب کنید : ', keyboard, true)
        end
   				if matches[1] == 'Amir' then
		 local AHossein = 'نام : امیرحسین \nبا استفاده از اینلاین های زیر متوانید با امیرحسین در ارتباط باشید'
         local keyboard = AmirH()
          api.editMessageText(msg.chat.id, msg.message_id, AHossein, keyboard, true)
        end
        if matches[1] == 'mehdi' then
         local keyboard = mehdi()
		 local MEHDI = 'نام : مهدی\nبا استفاده از اینلاین های زیر میتوانید  با مهدی در ارتباط باشید'
        api.editMessageText(msg.chat.id, msg.message_id, MEHDI, keyboard, true)
       end
		
   
        
end
      end
    return {
      action = action,
      triggers = triggers,

    }
