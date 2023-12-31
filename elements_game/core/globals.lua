require "elements_game.core.const"
math.randomseed(os.time())

STATE_GAME = {"start", "pause", "menu", "dead", "next_level", "upgrade"} 
EXP_LVL = {100, 200, 350, 500, 1500, 1950, 2450, 3050, 3700, 4200, 4800, 5400, 6000, 6650, 7300, 8100, 9000, 10000, 11200, 13000}

-- CONSTANTA
GREEN_COLOR = vmath.vector4(0.3,0.8,0.3,1)
BLACK_COLOR = vmath.vector4(0,0,0,1)
RED_COLOR = vmath.vector4(0.8,0.3,0.3,1)
GREY_COLOR = vmath.vector4(0.3,0.3,0.3,1)
WHITE_COLOR = vmath.vector4(1,1,1,1)

CHAR_HP = {value = math.random(3,5), key = "hp", 
text1 = " hp", text2 = "увеличивает максимальное здоровье", text11 = " hp", text22 = "maximizes health", 
img = 'img', buy = math.random(20,32)}
CHAR_DMG_BULLET = {value = math.random(2,5), key = "dmg_bullet", 
text1 = " к урону ружья", text2 = "увеличивает урон основного ружья", text11 = " to gun damage", text22 = "increases the damage of the main shotgun",
 img = 'img', buy = math.random(50,62)}
CHAR_SPEED_PLR = {value = math.random(2,5), key = "speed_pl", 
text1 = " к скорости огурчика", text2 = "увеличивает скорость бега", text11 = " to the speed of a pickle", text22 = "increases running speed.", 
img = 'img', buy = math.random(40,52)}
CHAR_REGEN = {value = math.random(3,5), key = "regen", 
text1 = " к регенерации HP", text2 = "увеличивает скорость регенерации здоровья в секунду", text11 = " to HP regeneration", text22 = "increases the rate of health regeneration per second",
 img = 'img', buy = math.random(20,32)}
CHAR_VAMPIR = {value = math.random(1,3), key = "vampir", 
text1 = " к вампиризму", text2 = "увеличивает кражу здоровья, получаемый урон от пуль конвертируется в здоровье",  text11 = " to vampirism", text22 = "increases health steal, bullet damage received is converted to health",
img = 'img', buy = math.random(60,82)}
CHAR_DMG_UNIT = {value = math.random(2,5), key = "dmg_unit", 
text1 = " к урону дополнительного оружия", text2 = "увеличивает урон дополнительного оружия",text11 = " to additional weapon damage", text22 = "increases additional weapon damage",
img = 'img', buy = math.random(100,150)}
CHAR_DMG_CRITICAL = {value = math.random(5,10), key = "dmg_critical", 
text1 = "% критического урона", text2 = "увеличивает критический урон", text11 = "% critical damage", text22 = "increases critical damage",
img = 'img', buy = math.random(60,80)}
CHAR_CRITICAL = {value = math.random(1,5), key = "critical", 
text1 = "% шанса критической атаки", text2 = "увеличивает шанс критической атаки",text11 = "% critical attack chance", text22 = "increases critical attack chance",
img = 'img', buy = math.random(40,50)}
CHAR_ARMOR = {value = math.random(1,5), key = "armor", 
text1 = " увеличить броню", text2 = "увеличить броню, броня уменьшает урон", text11 = " increase armor", text22 = " increase armor, armor reduces damage",
 img = 'img', buy = math.random(30,42)}
CHAR_UKLON = {value = math.random(1,5), key = "uklon",
text1 = "% увеличения уклонения", text2 = "Вы будете уклоняться от атак как бог", text11 = "% dodge increase", text22 = "You will dodge attacks like a god",
 img = 'img', buy = math.random(20,40)}
CHAR_SPEED_SHOOT = {value = math.random(2,5), key = "speed_shoot", 
text1 = " увеличивает скорость атаки", text2 = "увеличивает скорострельность главного орудия", text11 = " increases attack speed", text22 = "increases main gun speed", 
 img = 'img', buy = math.random(40,52)}
SKILL_ADD_AK47 = {value = 0, key = "add_ak", 
text1 = "Добавить ak47", text2 = "Добавляет ak47, который стреляет сам по себе", text11 = "Add ak47", text22 = "Adds an ak47 that shoots by itself",
buy = math.random(200, 300), img = 'ak47'}
SKILL_ADD_KNIFE = {value = 0, key = "add_knife", 
text1 = "добавить меч", text2 = "добавляет мечи, вращающиеся вокруг оугрчика", text11 = "add sword", text22 = "adds swords revolving around the ougrchik",
buy = math.random(200, 300), img = 'knife' }
SKILL_PROBITIE = {value = 0, key = "probitie", 
text1 = "Пробивные пули", text2 = "Ваши пули пробивают +1 противника", text11 = "piercing bullets", text22 = "Your bullets pierce +1 enemy",
buy = math.random(200, 300), img = "img" }
SKILL_BOOM = {value = 0, key = "boom", 
text1 = "добавить взрыв", text2 = "регулярно огурец выпускает взрывную волну, которая наносит урон ближайшим врагам", text11 = "add blast", text22 = "regular pickle releases a blast wave that damages nearby enemies",
buy = math.random(350, 450), img = "img" }
SKILL_HEADSHOT = {value = 0, key = "headshot", 
text1 = "HEADSHOT", text2 = "Ваша пуля имеет 5% шанс сделать HEADSHOT, мгновенно убивая врагов", text11 = "HEADSHOT", text22 = "Your bullet has a 5% chance of doing a HEADSHOT, instantly killing enemies",
buy = math.random(350, 450), img = "img" }
UP_DMG_KNIFE = {value = math.random(3,6), key = "up_dmg_knife",
text1 = " увеличивает урон от меча", text2 = "увеличивает урон от меча", text11 = " increases sword damage", text22 = "increases sword damage", 
buy = math.random(100, 150), img =""}
UP_SPEED_AK = {value =  math.random(2,6), key = "up_speed_ak", 
text1 = " увеличивает скорость доп. оружия", text2 = "увеличивает скорость атаки дополнительного оружия", text11 = " increases the speed of an additional weapon", text22 = "increases the attack speed of an additional weapon",
buy = math.random(100, 150), img =""}
UP_SPEED_KNIFE = {value =  math.random(2,6), key = "up_speed_knife", 
text1 = " к скорости меча", text2 = "увеличивает скорость меча", text11 = " to sword speed", text22 = "increases sword speed",
buy = math.random(100, 150), img =""}
UP_DMG_BOOM = {value =  math.random(2,6), key = "dmg_boom", 
text1 = " к урону взрыва", text2 = "увеличивает урон регулярного взрыва", text11 = " to blast damage", text22 = "increases regular blast damage",
buy = math.random(100, 150), img =""}

UPGRADE_LIST = {}

STARNDART_LIST = {CHAR_HP, CHAR_DMG_BULLET, CHAR_SPEED_PLR, CHAR_REGEN, CHAR_VAMPIR, CHAR_CRITICAL, CHAR_ARMOR,
CHAR_UKLON, CHAR_SPEED_SHOOT, SKILL_ADD_AK47, SKILL_ADD_KNIFE, SKILL_PROBITIE, CHAR_DMG_CRITICAL}

STATE = "menu"

PLAYER_NAME = ""
-- STATISTIKA
ALL_KILL_MONSTER = 0
KOL_MONSTER = 0
KOL_MONEY = 0
KOL_DAMAGE = 0
KOL_REGEN_HP = 0
KOL_POL_URON = 0
KOL_POGL_URON = 0
KOL_REV = 0
EXP = 0
MONEY = 0

IS_MOUSE = false
CUCUMBER = "hop"
-- SETTINGS
DURATION_SPAWN_MOSTER = 4
TIME_NEXT_LEVEL = 120
PUSH_MONSTER = 50
LEVEL = 1
TIME_HITTED = 0.3
LANG_RUS = true
BOOS_TIME = 3
GAMEPAD_ON = false
BOSS_DEAD = false
BOSS_UPDATE = 1
-- CHAR PLAYER
HP_PLAYER = 100
MAX_HP_PLAYER = 100
REGEN_PLAYER = 0 -- /10 max 30
VAMPIR = 0 -- % max 9
DAMAGE_BULLET = 8
DAMAGE_UNIT = 30
CRITICAL = 3   -- %
DMG_CRITICAL = 150 
ARMOR = 3 -- %
UKLON_PLAYER = 3 -- max 30 %
SPEED_PLAYER = 80
SPEED_SHOOT = 0.8 -- sekunda - max 0.2
-- AK47
TIME_SHOOT_AK47 = 1 -- max 0.3
AK = 0
KNIFE = 0
KNIFE_DAMAGE = 15
TIME_KNIFE = 1.5 -- max 1 sek
KOL_PROBITIE = 0
HEADSHOT = 0 --%
BOOM_DAMAGE = 30
BOOM_TIME = 3

function add_ak()
	AK = AK + 1
	if AK == 1 then
		msg.post("/player/ak471", "add_ak", {value =  vmath.vector3(15,27,0)})
		table.insert(UPGRADE_LIST, UP_SPEED_AK)
		table.insert(UPGRADE_LIST, CHAR_DMG_UNIT)
	elseif AK == 2 then
		msg.post("/player/ak47", "add_ak", {value =  vmath.vector3(-15,27,0)})
		for key, value in pairs(UPGRADE_LIST) do
			if value == SKILL_ADD_AK47 then
				table.remove(UPGRADE_LIST, key)
			end
		end
	end
end

function add_knife()
	KNIFE = KNIFE + 1
	if KNIFE == 1 then
		msg.post("/player/knife", "add_knife")
		table.insert(UPGRADE_LIST, UP_DMG_KNIFE)
		table.insert(UPGRADE_LIST, UP_SPEED_KNIFE)
	elseif KNIFE == 2 then
		msg.post("/player/knife1", "add_knife")
	elseif KNIFE == 3 then
		msg.post("/player/knife2", "add_knife")
		msg.post("/player/knife3", "add_knife")
		for key, value in pairs(UPGRADE_LIST) do
			if value == SKILL_ADD_KNIFE then
				table.remove(UPGRADE_LIST, key)
			end
		end
	end
end

function upgrade_skills(key, value)
	if key == "hp" then
		HP_PLAYER = HP_PLAYER + value
		MAX_HP_PLAYER = MAX_HP_PLAYER + value
	elseif key == "dmg_bullet" then
		DAMAGE_BULLET = DAMAGE_BULLET + value
	elseif key == "speed_pl" then
		SPEED_PLAYER = SPEED_PLAYER + value
		if SPEED_PLAYER >= MAX_SPEED_PLAYER then
			for key, value in pairs(UPGRADE_LIST) do
				if value == CHAR_SPEED_PLR then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "regen" then
		REGEN_PLAYER = REGEN_PLAYER + value
	elseif key == "vampir" then
		VAMPIR = VAMPIR + value
		if VAMPIR >= MAX_VAMPIR then
			for key, value in pairs(UPGRADE_LIST) do
				if value == CHAR_VAMPIR then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "dmg_unit" then
		DAMAGE_UNIT = DAMAGE_UNIT + value
	elseif key == "dmg_critical" then
		DMG_CRITICAL = DMG_CRITICAL + value
	elseif key == "critical" then
		CRITICAL = CRITICAL + value
		if CRITICAL > MAX_CRITICAL then
			for key, value in pairs(UPGRADE_LIST) do
				if value == CHAR_CRITICAL then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "armor" then
		ARMOR = ARMOR + value
		if ARMOR > MAX_ARMOR then
			for key, value in pairs(UPGRADE_LIST) do
				if value == CHAR_ARMOR then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "uklon" then
		UKLON_PLAYER = UKLON_PLAYER + value
		if UKLON_PLAYER >= MAX_UKLON_PLAYER then
			for key, value in pairs(UPGRADE_LIST) do
				if value == CHAR_UKLON then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "speed_shoot" then
		SPEED_SHOOT = SPEED_SHOOT - value/100
		if SPEED_SHOOT < MAX_SPEED_SHOOT then
			SPEED_SHOOT = MAX_SPEED_SHOOT
			for key, value in pairs(UPGRADE_LIST) do
				if value == CHAR_SPEED_SHOOT then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "add_ak" then
		add_ak()
	elseif key == "add_knife" then
		add_knife()
	elseif key == "probitie" then
		KOL_PROBITIE = KOL_PROBITIE + 1
		if KOL_PROBITIE >= MAX_KOL_PROBITIE then
			for key, value in pairs(UPGRADE_LIST) do
				if value == SKILL_PROBITIE then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "up_dmg_knife" then
		KNIFE_DAMAGE = KNIFE_DAMAGE + value
	elseif key == "up_speed_ak" then
		TIME_SHOOT_AK47 = TIME_SHOOT_AK47 - value/100
		if TIME_SHOOT_AK47 <= MAX_TIME_SHOOT_AK47 then
			TIME_SHOOT_AK47 = MAX_TIME_SHOOT_AK47
			for key, value in pairs(UPGRADE_LIST) do
				if value == UP_SPEED_AK then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "up_speed_knife" then
		TIME_KNIFE = TIME_KNIFE - value/100
		msg.post("/player/knife", "speed_knife")
		msg.post("/player/knife1", "speed_knife")
		msg.post("/player/knife2", "speed_knife")
		msg.post("/player/knife3", "speed_knife")
		if TIME_KNIFE <= MAX_TIME_KNIFE then
			TIME_KNIFE = MAX_TIME_KNIFE
			for key, value in pairs(UPGRADE_LIST) do
				if value == UP_SPEED_KNIFE then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "headshot" then
		HEADSHOT = HEADSHOT + 5
		for key, value in pairs(UPGRADE_LIST) do
			if value == SKILL_HEADSHOT then
				table.remove(UPGRADE_LIST, key)
			end
		end
	elseif key == "boom" then
		BOOM_DAMAGE = BOOM_DAMAGE + 30
		msg.post("/player/cucumber#cucumber", "add_boom")
		table.insert(UPGRADE_LIST, UP_DMG_BOOM)
		for key, value in pairs(UPGRADE_LIST) do
			if value == SKILL_BOOM then
				table.remove(UPGRADE_LIST, key)
			end
		end
	elseif key == "dmg-boom" then
		BOOM_DAMAGE = BOOM_DAMAGE + value
	end
end
--SUNDUK
HP_SUNDUK = 50
TIME_SUNDUK = 52
MONEY_SUNDUK = math.random(150,300)
SCORE_SUNDUK = 20
SPAWN_SUNDUK = 0.51 --%
--RED MONSTER
MONEY_RED = 6
SCORE_RED = 4
DAMAGE_RED = 10
SPEED_RED = 40
TIME_SHOOT_RED = 1.5
HEALTH_RED = 10
--BLUE MONSTER
MONEY_BLUE = 5
SCORE_BLUE = 4
HEALTH_BLUE = 12
DAMAGE_BLUE = 15
SPEED_BLUE = 60
--PURpLE MONSTER
MONEY_PURPLE = 7
SCORE_PURPLE = 5
HEALTH_PURPLE = 10
DAMAGE_PURPLE = 10
SPEED_PURPLE = 60
TIME_SHOOT_PURPLE = 2.5
--YELLOW MONSTER
MONEY_YELLOW = 7
SCORE_YELLOW = 6
HEALTH_YELLOW = 60
DAMAGE_YELLOW = 25
SPEED_YELLOW = 40
--BOSS
MONEY_BOSS = 500
SCORE_BOSS = 1
HEALTH_BOSS = 300
DAMAGE_BOSS = 50
SPEED_BOSS = 15
TIME_SHOOT_BOSS = 0.8
--MINIS
MONEY_MINIS = 2
SCORE_MINIS = 0.5
HEALTH_MINIS = DAMAGE_BULLET * 5
DAMAGE_MINIS = MAX_HP_PLAYER
SPEED_MINIS = 80
--BOSS TYKVA
MONEY_BOSS_TYKVA = 150
SCORE_BOSS_TYKVA = 100
HEALTH_BOSS_TYKVA = DAMAGE_BULLET * 300
DAMAGE_BOSS_TYKVA = MAX_HP_PLAYER
SPEED_BOSS_TYKVA = 50
TIME_SHOOT_BOSS_TYKVA = 2

local add_every = 2
local add_five_level = 20
local add_ten_level = 40
local max_level = 20
function change_exp(value)
	KOL_MONSTER = KOL_MONSTER + 1
	EXP = EXP + value
	if HARD_GAME == "easy" then
		add_every = 1
		add_five_level = 10
		add_ten_level = 20
	elseif HARD_GAME == "medium" then
		add_every = 2
		add_five_level = 30
		add_ten_level = 50
	elseif HARD_GAME == "hard" then
		add_every = 3
		add_five_level = 40
		add_ten_level = 60
	end
	if max_level == LEVEL then
		table.insert(EXP_LVL, EXP_LVL[#EXP_LVL] + 1500)
	end
	if EXP >= EXP_LVL[LEVEL] then
		LEVEL = LEVEL + 1
		msg.post("/player/cucumber#cucumber", "next_level")
		HEALTH_BLUE = HEALTH_BLUE + add_every
		HEALTH_RED = HEALTH_RED + add_every
		HEALTH_PURPLE = HEALTH_PURPLE + add_every
		HEALTH_YELLOW = HEALTH_YELLOW + add_every
		DAMAGE_BLUE = DAMAGE_BLUE + add_every
		DAMAGE_RED = DAMAGE_RED + add_every
		DAMAGE_PURPLE = DAMAGE_PURPLE + add_every
		DAMAGE_YELLOW = DAMAGE_YELLOW + add_every
		if LEVEL % 6 == 0 then
			if LEVEL == 6 then
				table.insert(UPGRADE_LIST, SKILL_HEADSHOT)
				table.insert(UPGRADE_LIST, SKILL_BOOM)
			end
			HEALTH_BLUE = HEALTH_BLUE + add_five_level
			HEALTH_RED = HEALTH_RED + add_five_level
			HEALTH_PURPLE = HEALTH_PURPLE + add_five_level
			HEALTH_YELLOW = HEALTH_YELLOW + add_five_level + 20
			DAMAGE_BLUE = DAMAGE_BLUE + add_five_level
			DAMAGE_RED = DAMAGE_RED + add_five_level
			DAMAGE_PURPLE = DAMAGE_PURPLE + add_five_level
			DAMAGE_YELLOW = DAMAGE_YELLOW + add_five_level + 20
			HEALTH_BOSS_TYKVA = HEALTH_BOSS_TYKVA + 250 + add_five_level
			DAMAGE_BOSS_TYKVA = DAMAGE_BOSS_TYKVA + 10 + add_five_level
		elseif LEVEL == 10 or LEVEL == 20 then
			HEALTH_BOSS_TYKVA = HEALTH_BOSS_TYKVA + add_ten_level
			DAMAGE_BOSS_TYKVA = DAMAGE_BOSS_TYKVA + add_ten_level
			HEALTH_BLUE = HEALTH_BLUE + add_ten_level
			HEALTH_RED = HEALTH_RED + add_ten_level
			HEALTH_PURPLE = HEALTH_PURPLE + add_ten_level
			HEALTH_YELLOW = HEALTH_YELLOW + add_ten_level + 20
			DAMAGE_BLUE = DAMAGE_BLUE + add_ten_level
			DAMAGE_RED = DAMAGE_RED + add_ten_level
			DAMAGE_PURPLE = DAMAGE_PURPLE + add_ten_level
			DAMAGE_YELLOW = DAMAGE_YELLOW + add_ten_level + 20
			MONEY_BLUE = MONEY_BLUE / 2
			MONEY_RED = MONEY_BLUE / 2
			MONEY_PURPLE = MONEY_PURPLE / 2
			MONEY_YELLOW = MONEY_YELLOW / 2
		elseif LEVEL > 20 and LEVEL < 25 then
			DURATION_SPAWN_MOSTER = 2
			add_every = 5
		elseif LEVEL >= 25 and LEVEL < 30 then
			DURATION_SPAWN_MOSTER = 1
			add_every = 10
		elseif LEVEL >= 30 then
			add_every = 15
		end
	end
end

function imba_mode()
	add_every = add_every + 5
	-- MAX CHAR PLAYER
	MAX_VAMPIR = 50 -- % max 9
	MAX_CRITICAL = 50
	MAX_ARMOR = 60   -- %
	MAX_UKLON_PLAYER = 60 -- max 30 %
	MAX_SPEED_PLAYER = 200
	MAX_SPEED_SHOOT = 0.1 -- sekunda - max 0.2
	-- AK47 and KNIFE
	MAX_TIME_SHOOT_AK47 = 0.1 -- max 0.3
	MAX_TIME_KNIFE = 0.1 -- max 1 sek
	MAX_KOL_PROBITIE = 5
	--------
	UPGRADE_LIST = {}
	for key,value in pairs(STARNDART_LIST) do 
		UPGRADE_LIST[key] = value
	end

	if KNIFE == 3 then
		table.insert(UPGRADE_LIST, UP_DMG_KNIFE)
		table.insert(UPGRADE_LIST, UP_SPEED_KNIFE)
		for key, value in pairs(UPGRADE_LIST) do
			if value == SKILL_ADD_KNIFE then
				table.remove(UPGRADE_LIST, key)
			end
		end
	elseif KNIFE < 3 and KNIFE > 0 then
		table.insert(UPGRADE_LIST, UP_DMG_KNIFE)
		table.insert(UPGRADE_LIST, UP_SPEED_KNIFE)
	end
	
	if AK == 1 then
		table.insert(UPGRADE_LIST, UP_SPEED_AK)
		table.insert(UPGRADE_LIST, CHAR_DMG_UNIT)
	elseif AK == 2 then
		table.insert(UPGRADE_LIST, UP_SPEED_AK)
		table.insert(UPGRADE_LIST, CHAR_DMG_UNIT)
		for key, value in pairs(UPGRADE_LIST) do
			if value == SKILL_ADD_AK47 then
				table.remove(UPGRADE_LIST, key)
			end
		end
	end
	if HEADSHOT == 0 then
		table.insert(UPGRADE_LIST, SKILL_HEADSHOT)
	end
	if BOOM_DAMAGE == 30 then
		table.insert(UPGRADE_LIST, SKILL_BOOM)
	end
end
function change_hp(value)
	if value > 0 then
		KOL_REGEN_HP = KOL_REGEN_HP + value
	else
		KOL_POL_URON = KOL_POL_URON - value
	end
	if value == 100 then
		HP_PLAYER = 0
	end
	local hp = HP_PLAYER + value
	if hp <= MAX_HP_PLAYER then
		HP_PLAYER = hp
	else
		HP_PLAYER = MAX_HP_PLAYER
	end
end

function change_money(value)
	MONEY = MONEY + value
	if value > 0 then
		KOL_MONEY = KOL_MONEY + value
	end
end

function change_state(value)
	STATE = value
end

function change_level(value)
	LEVEL = value
end

HARD_GAME = 1
WEAPONS = "pistol"
function change_weapon(value)
	WEAPONS = value
	if value == "pistol" then
		DAMAGE_BULLET = 10
		KOL_PROBITIE = 0
	elseif value == "two-pistol" then
		DAMAGE_BULLET = 5
		KOL_PROBITIE = 0
	elseif value == "ak47" then
		DAMAGE_BULLET = 20
		KOL_PROBITIE = 1
	end
end
		
function hop_cucumber()
	CUCUMBER = "hop"
	SPEED_SHOOT = 0.8 -- max 0.8
	HP_PLAYER = 100
	MAX_HP_PLAYER = 100
	REGEN_PLAYER = 0 -- /10 max 30
	VAMPIR = 2 -- % max 10
	DAMAGE_UNIT = 30
	DMG_CRITICAL = 150 
	CRITICAL = 3   -- %
	ARMOR = 3 -- %
	UKLON_PLAYER = 3 -- max 30 %
	SPEED_PLAYER = 80
	-- AK47
	TIME_SHOOT_AK47 = 1--1 -- max 0.3
	KNIFE_DAMAGE = 30--15
	TIME_KNIFE = 0.9 --1.5 -- max 1 sek
	HEADSHOT = 0
	-- add ak47 and knife
	AK = 0
	KNIFE = 0
	-- STATISTIKA
	MONEY = 150
	-- MAX CHAR PLAYER
	MAX_VAMPIR = 10 -- % max 9
	MAX_CRITICAL = 25
	MAX_ARMOR = 25   -- %
	MAX_UKLON_PLAYER = 30 -- max 30 %
	MAX_SPEED_PLAYER = 100
	MAX_SPEED_SHOOT = 0.3 -- sekunda - max 0.2
	-- AK47 and KNIFE
	MAX_TIME_SHOOT_AK47 = 0.3 -- max 0.3
	MAX_TIME_KNIFE = 0.5 -- max 1 sek
	MAX_KOL_PROBITIE = 2
	--------
end
function nik_cucumber()
	CUCUMBER = "nik"
	SPEED_SHOOT = 0.65
	HP_PLAYER = 150
	MAX_HP_PLAYER = 150
	REGEN_PLAYER = 0 -- /10 max 30
	VAMPIR = 0 -- % max 9
	DAMAGE_UNIT = 30
	DMG_CRITICAL = 150 
	CRITICAL = 5   -- %
	ARMOR = 5 -- %
	UKLON_PLAYER = 10 -- max 30 %
	SPEED_PLAYER = 90
	-- AK47
	TIME_SHOOT_AK47 = 1 -- max 0.3
	AK = 0
	KNIFE = 0
	KNIFE_DAMAGE = 25
	TIME_KNIFE = 1.2 -- max 1 sek
	-- MAX CHAR PLAYER
	MAX_VAMPIR = 9 -- % max 9
	MAX_CRITICAL = 40
	MAX_ARMOR = 20   -- %
	MAX_UKLON_PLAYER = 40 -- max 30 %
	MAX_SPEED_PLAYER = 120
	MAX_SPEED_SHOOT = 0.2 -- sekunda - max 0.2
	-- AK47 and KNIFE
	MAX_TIME_SHOOT_AK47 = 0.3 -- max 0.3
	MAX_TIME_KNIFE = 0.8 -- max 1 sek
	MAX_KOL_PROBITIE = 2
	--------
	HEADSHOT = 0
	EXP = 0
	MONEY = 170
end
function vampir_cucumber()
	CUCUMBER = "vampir"
	SPEED_SHOOT = 0.7
	HP_PLAYER = 90
	MAX_HP_PLAYER = 90
	REGEN_PLAYER = 0 -- /10 max 30
	VAMPIR = 30 -- % max 9
	DAMAGE_UNIT = 30
	DMG_CRITICAL = 150 
	CRITICAL = 0   -- %
	ARMOR = 1 -- %
	UKLON_PLAYER = 0 -- max 30 %
	SPEED_PLAYER = 100
	-- AK47
	TIME_SHOOT_AK47 = 1 -- max 0.3
	AK = 0
	KNIFE = 0
	KNIFE_DAMAGE = 20
	TIME_KNIFE = 1.5 -- max 1 sek
	-- MAX CHAR PLAYER
	MAX_VAMPIR = 40 -- % max 9
	MAX_CRITICAL = 40
	MAX_ARMOR = 20   -- %
	MAX_UKLON_PLAYER = 30 -- max 30 %
	MAX_SPEED_PLAYER = 140
	MAX_SPEED_SHOOT = 0.25 -- sekunda - max 0.2
	-- AK47 and KNIFE
	MAX_TIME_SHOOT_AK47 = 0.3 -- max 0.3
	MAX_TIME_KNIFE = 0.7 -- max 1 sek
	MAX_KOL_PROBITIE = 2
	--------

	HEADSHOT = 0
	MONEY = 180
end
function arni_cucumber()
	CUCUMBER = "arni"
	SPEED_SHOOT = 0.6
	HP_PLAYER = 250
	MAX_HP_PLAYER = 250
	REGEN_PLAYER = 50 -- /10 max 30
	VAMPIR = 0 -- % max 9
	DAMAGE_UNIT = 30
	DMG_CRITICAL = 150 
	CRITICAL = 0   -- %
	ARMOR = 30 --
	UKLON_PLAYER = 0 -- max 30 %
	SPEED_PLAYER = 80
	-- AK47
	TIME_SHOOT_AK47 = 0.8 -- max 0.3
	AK = 0
	KNIFE = 0
	KNIFE_DAMAGE = 25
	TIME_KNIFE = 1 -- max 1 sek
	HEADSHOT = 0
	-- MAX CHAR PLAYER
	MAX_VAMPIR = 9 -- % max 9
	MAX_CRITICAL = 40
	MAX_ARMOR = 60   -- %
	MAX_UKLON_PLAYER = 25 -- max 30 %
	MAX_SPEED_PLAYER = 100
	MAX_SPEED_SHOOT = 0.3 -- sekunda - max 0.2
	-- AK47 and KNIFE
	MAX_TIME_SHOOT_AK47 = 0.25 -- max 0.3
	MAX_TIME_KNIFE = 0.5 -- max 1 sek
	MAX_KOL_PROBITIE = 2
	--------
	
	MONEY = 200
end

function defold_monster()
	BOSS_UPDATE = 1
	BOSS_DEAD = false
	BOOM_DAMAGE = 30
	BOOM_TIME = 3
	KOL_MONSTER = 0
	KOL_MONEY = 0
	KOL_DAMAGE = 0
	KOL_REGEN_HP = 0
	KOL_POL_URON = 0
	KOL_POGL_URON = 0
	EXP = 0
	KOL_REV = 0
	add_every = 2
	add_five_level = 10
	add_ten_level = 20
	DURATION_SPAWN_MOSTER = 4
	TIME_NEXT_LEVEL = 120
	UPGRADE_LIST = {}
	for key,value in pairs(STARNDART_LIST) do 
		UPGRADE_LIST[key] = value
	end
	MONEY_BOSS_TYKVA = 150
	SCORE_BOSS_TYKVA = 100
	HEALTH_BOSS_TYKVA = DAMAGE_BULLET * 300
	DAMAGE_BOSS_TYKVA = MAX_HP_PLAYER 
	SPEED_BOSS_TYKVA = 90
	TIME_SHOOT_BOSS_TYKVA = 1.5
	--SUNDUK
	HP_SUNDUK = 50
	TIME_SUNDUK = 60
	MONEY_SUNDUK = 300
	SCORE_SUNDUK = 20
	SPAWN_SUNDUK = 51 --%
	--RED MONSTER
	MONEY_RED = 6
	SCORE_RED = 4
	DAMAGE_RED = 10
	SPEED_RED = 30
	TIME_SHOOT_RED = 1.5
	HEALTH_RED = 10
	--BLUE MONSTER
	MONEY_BLUE = 5
	SCORE_BLUE = 4
	HEALTH_BLUE = 12
	DAMAGE_BLUE = 15
	SPEED_BLUE = 60
	--PURpLE MONSTER
	MONEY_PURPLE = 7
	SCORE_PURPLE = 5
	HEALTH_PURPLE = 10
	DAMAGE_PURPLE = 10
	SPEED_PURPLE = 50
	TIME_SHOOT_PURPLE = 2.5
	--YELLOW MONSTER
	MONEY_YELLOW = 7
	SCORE_YELLOW = 6
	HEALTH_YELLOW = 60
	DAMAGE_YELLOW = 25
	SPEED_YELLOW = 35
	--BOSS
	MONEY_BOSS = 500
	SCORE_BOSS = 1
	HEALTH_BOSS = 300
	DAMAGE_BOSS = 50
	SPEED_BOSS = 15
	TIME_SHOOT_BOSS = 0.7
	--MINIS
	MONEY_MINIS = 1
	SCORE_MINIS = 1
	HEALTH_MINIS = DAMAGE_BULLET * 10
	DAMAGE_MINIS = MAX_HP_PLAYER
	SPEED_MINIS = 120
end




	