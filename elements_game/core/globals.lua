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

CHAR_HP = {value = math.random(3,5), key = "hp", text1 = " hp", text2 = "увеличивает максимальное здоровье", img = 'img', buy = math.random(20,32)}
CHAR_DMG_BULLET = {value = math.random(2,5), key = "dmg_bullet", text1 = " урона пистолета", text2 = "увеличивает урон от пистолета", img = 'img', buy = math.random(20,32)}
CHAR_SPEED_PLR = {value = math.random(2,5), key = "speed_pl", text1 = " скорость огурчика", text2 = "увеличивает скорость бега", img = 'img', buy = math.random(20,32)}
CHAR_REGEN = {value = math.random(3,5), key = "regen", text1 = " востанавливает hp", text2 = "увеличивает восстанавление здоровья в секунду", img = 'img', buy = math.random(20,32)}
CHAR_VAMPIR = {value = math.random(1,3), key = "vampir", text1 = " вампиризм", text2 = "увеличивает кражу здоровья, нанесенный урон от пули преобразуется в здоровье", img = 'img', buy = math.random(20,32)}
CHAR_DMG_UNIT = {value = math.random(2,5), key = "dmg_unit", text1 = " урона АК47", text2 = "увеличивает урон всех юнитов", img = 'img', buy = math.random(100,150)}
CHAR_CRITICAL = {value = math.random(1,5), key = "critical", text1 = "% критический урон", text2 = "увеличивает критическую атаку, наносить на 300% больше урона", img = 'img', buy = math.random(20,32)}
CHAR_ARMOR = {value = math.random(1,5), key = "armor", text1 = " повысить броню", text2 = "увеличивает бронью, броня уменьшает урон", img = 'img', buy = math.random(20,32)}
CHAR_UKLON = {value = math.random(1,5), key = "uklon", text1 = "% повысить уклонение", text2 = "будешь уклонятся от атак как бог", img = 'img', buy = math.random(20,32)}
CHAR_SPEED_SHOOT = {value = math.random(2,5), key = "speed_shoot", text1 = " увеличивает скорость атаки", text2 = "увеличивает скорость стрельбы из пистолета", img = 'img', buy = math.random(20,32)}
SKILL_ADD_AK47 = {value = 0, key = "add_ak", text1 = "добавить ak47", text2 = "Добавляет ак47 которая стреляем самостоятельно", buy = math.random(200, 300), img = 'ak47'}
SKILL_ADD_KNIFE = {value = 0, key = "add_knife", text1 = "добавить меч", text2 = "добавляет мечи которые вращаются вокруг оугрчика", buy = math.random(200, 300), img = 'knife' }
SKILL_PROBITIE = {value = 0, key = "probitie", text1 = "пробивающие пули", text2 = "Ваши пули пробивают +1 врага", buy = math.random(200, 300), img = "img" }
SKILL_HEADSHOT = {value = 0, key = "headshot", text1 = "HEADSHOT", text2 = "Ваша пуля с 5% вероятностью делает HEADSHOT, моментально убивают врагов", buy = math.random(350, 450), img = "img" }
UP_DMG_KNIFE = {value = math.random(3,6), key = "up_dmg_knife", text1 = " увеличивает урон МЕЧА", text2 = "увеличивает урон меча", buy = math.random(100, 150), img =""}
UP_SPEED_AK = {value =  math.random(2,6), key = "up_speed_ak", text1 = " увеличивает скорость АК47", text2 = "увеличивает скорость атаки АК47", buy = math.random(100, 150), img =""}
UP_SPEED_KNIFE = {value =  math.random(2,6), key = "up_speed_knife", text1 = " увеличивает скорость меча", text2 = "увеличивает скорость меча", buy = math.random(100, 150), img =""}

UPGRADE_LIST = {CHAR_HP, CHAR_DMG_BULLET, CHAR_SPEED_PLR, CHAR_REGEN, CHAR_VAMPIR, CHAR_CRITICAL, CHAR_ARMOR,
CHAR_UKLON, CHAR_SPEED_SHOOT, SKILL_ADD_AK47, SKILL_ADD_KNIFE, SKILL_PROBITIE}

STARNDART_LIST = {CHAR_HP, CHAR_DMG_BULLET, CHAR_SPEED_PLR, CHAR_REGEN, CHAR_VAMPIR, CHAR_CRITICAL, CHAR_ARMOR,
CHAR_UKLON, CHAR_SPEED_SHOOT, SKILL_ADD_AK47, SKILL_ADD_KNIFE, SKILL_PROBITIE}

STATE = "menu"

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
MONEY = 50

IS_MOUSE = false
CUCUMBER = "hop"
-- SETTINGS
DURATION_SPAWN_MOSTER = 4
TIME_NEXT_LEVEL = 120
PUSH_MONSTER = 50
LEVEL = 1
TIME_HITTED = 0.3
LANG_RUS = true

-- CHAR PLAYER
HP_PLAYER = 100
MAX_HP_PLAYER = 100
REGEN_PLAYER = 0 -- /10 max 30
VAMPIR = 0 -- % max 9
DAMAGE_BULLET = 8
DAMAGE_UNIT = 30
CRITICAL = 3   -- %
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
			-- SPEED_SHOOT = MAX_SPEED_SHOOT
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
			-- TIME_SHOOT_AK47 = MAX_TIME_SHOOT_AK47
			for key, value in pairs(UPGRADE_LIST) do
				if value == UP_SPEED_AK then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "up_speed_knife" then
		TIME_KNIFE = TIME_KNIFE - value/100
		if TIME_KNIFE <= MAX_TIME_KNIFE then
			-- TIME_KNIFE = MAX_TIME_KNIFE
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
SCORE_BOSS = 500
HEALTH_BOSS = 200
DAMAGE_BOSS = MAX_HP_PLAYER 
SPEED_BOSS = 15
TIME_SHOOT_BOSS = 0.8
--MINIS
MONEY_MINIS = 2
SCORE_MINIS = 2
HEALTH_MINIS = DAMAGE_BULLET * 2
DAMAGE_MINIS = MAX_HP_PLAYER / 2
SPEED_MINIS = 80
--BOSS TYKVA
MONEY_BOSS_TYKVA = 150
SCORE_BOSS_TYKVA = 100
HEALTH_BOSS_TYKVA = 500
DAMAGE_BOSS_TYKVA = 80
SPEED_BOSS_TYKVA = 50
TIME_SHOOT_BOSS_TYKVA = 2

local add_every = 2
local add_five_level = 20
local add_ten_level = 40
local max_level = 20
function change_exp(value)
	if HARD_GAME == "easy" then
		add_every = 2
		add_five_level = 10
		add_ten_level = 20
	elseif HARD_GAME == "medium" then
		add_every = 3
		add_five_level = 20
		add_ten_level = 30
	elseif HARD_GAME == "hard" then
		add_every = 4
		add_five_level = 20
		add_ten_level = 40
	end
		
	EXP = EXP + value
	if max_level == LEVEL then
		table.insert(EXP_LVL, EXP_LVL[#EXP_LVL] + 1200)
	end
	if EXP >= EXP_LVL[LEVEL] then
		msg.post("/player/cucumber#cucumber", "next_level")
		LEVEL = LEVEL + 1
		HEALTH_BLUE = HEALTH_BLUE + add_every
		HEALTH_RED = HEALTH_RED + add_every
		HEALTH_PURPLE = HEALTH_PURPLE + add_every
		HEALTH_YELLOW = HEALTH_YELLOW + add_every
		DAMAGE_BLUE = DAMAGE_BLUE + add_every
		DAMAGE_RED = DAMAGE_RED + add_every
		DAMAGE_PURPLE = DAMAGE_PURPLE + add_every
		DAMAGE_YELLOW = DAMAGE_YELLOW + add_every
		if LEVEL % 5 == 0 then
			if LEVEL == 5 then
				table.insert(UPGRADE_LIST, SKILL_HEADSHOT)
			end
			HEALTH_BLUE = HEALTH_BLUE + add_five_level
			HEALTH_RED = HEALTH_RED + add_five_level
			HEALTH_PURPLE = HEALTH_PURPLE + add_five_level
			HEALTH_YELLOW = HEALTH_YELLOW + add_five_level + 20
			DAMAGE_BLUE = DAMAGE_BLUE + add_five_level
			DAMAGE_RED = DAMAGE_RED + add_five_level
			DAMAGE_PURPLE = DAMAGE_PURPLE + add_five_level
			DAMAGE_YELLOW = DAMAGE_YELLOW + add_five_level + 20
			MONEY_BLUE = 1.5
			MONEY_RED = 2
			MONEY_PURPLE = 2
			MONEY_YELLOW = 2.5 
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
			MONEY_BLUE = 1
			MONEY_RED = 1
			MONEY_PURPLE = 1
			MONEY_YELLOW = 2
		elseif LEVEL > 20 then
			add_every = 5
		elseif LEVEL > 25 then
			add_every = 10
		end
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
		DAMAGE_BULLET = 8
		SPEED_SHOOT = 0.8
	elseif value == "two-pistol" then
		DAMAGE_BULLET = 6
		SPEED_SHOOT = 0.7
	elseif value == "ak47" then
		DAMAGE_BULLET = 20
		SPEED_SHOOT = 0.8
	end
end
		
function hop_cucumber()
	CUCUMBER = "hop"
	HP_PLAYER = 100
	MAX_HP_PLAYER = 100
	REGEN_PLAYER = 0 -- /10 max 30
	VAMPIR = 0 -- % max 9
	DAMAGE_UNIT = 30
	CRITICAL = 3   -- %
	ARMOR = 3 -- %
	UKLON_PLAYER = 3 -- max 30 %
	SPEED_PLAYER = 80
	-- AK47
	TIME_SHOOT_AK47 = 1 -- max 0.3
	KNIFE_DAMAGE = 15
	TIME_KNIFE = 1.5 -- max 1 sek
	HEADSHOT = 0
	-- add ak47 and knife
	AK = 0
	KNIFE = 0
	-- STATISTIKA
	KOL_PROBITIE = 0
	KOL_MONSTER = 0
	KOL_MONEY = 0
	KOL_DAMAGE = 0
	KOL_REGEN_HP = 0
	KOL_POL_URON = 0
	KOL_POGL_URON = 0
	EXP = 0
	MONEY = 150
	-- MAX CHAR PLAYER
	MAX_VAMPIR = 9 -- % max 9
	MAX_CRITICAL = 25
	MAX_ARMOR = 25   -- %
	MAX_UKLON_PLAYER = 30 -- max 30 %
	MAX_SPEED_PLAYER = 100
	MAX_SPEED_SHOOT = 0.3 -- sekunda - max 0.2
	-- AK47 and KNIFE
	MAX_TIME_SHOOT_AK47 = 0.5 -- max 0.3
	MAX_TIME_KNIFE = 0.5 -- max 1 sek
	MAX_KOL_PROBITIE = 2
	--------
end
function nik_cucumber()
	CUCUMBER = "nik"
	HP_PLAYER = 150
	MAX_HP_PLAYER = 150
	REGEN_PLAYER = 0 -- /10 max 30
	VAMPIR = 0 -- % max 9
	DAMAGE_UNIT = 30
	CRITICAL = 5   -- %
	ARMOR = 3 -- %
	UKLON_PLAYER = 10 -- max 30 %
	SPEED_PLAYER = 90
	-- AK47
	TIME_SHOOT_AK47 = 1 -- max 0.3
	AK = 0
	KNIFE = 0
	KNIFE_DAMAGE = 15
	TIME_KNIFE = 1.5 -- max 1 sek
	-- MAX CHAR PLAYER
	MAX_VAMPIR = 9 -- % max 9
	MAX_CRITICAL = 40
	MAX_ARMOR = 20   -- %
	MAX_UKLON_PLAYER = 40 -- max 30 %
	MAX_SPEED_PLAYER = 120
	MAX_SPEED_SHOOT = 0.25 -- sekunda - max 0.2
	-- AK47 and KNIFE
	MAX_TIME_SHOOT_AK47 = 0.45 -- max 0.3
	MAX_TIME_KNIFE = 0.8 -- max 1 sek
	MAX_KOL_PROBITIE = 2
	--------
	HEADSHOT = 0
	KOL_PROBITIE = 0
	KOL_MONSTER = 0
	KOL_MONEY = 0
	KOL_DAMAGE = 0
	KOL_REGEN_HP = 0
	KOL_POL_URON = 0
	KOL_POGL_URON = 0
	EXP = 0
	MONEY = 100
end
function vampir_cucumber()
	CUCUMBER = "vampir"
	HP_PLAYER = 90
	MAX_HP_PLAYER = 90
	REGEN_PLAYER = 0 -- /10 max 30
	VAMPIR = 30 -- % max 9
	DAMAGE_UNIT = 30
	CRITICAL = 0   -- %
	ARMOR = 1 -- %
	UKLON_PLAYER = 0 -- max 30 %
	SPEED_PLAYER = 100
	-- AK47
	TIME_SHOOT_AK47 = 1 -- max 0.3
	AK = 0
	KNIFE = 0
	KNIFE_DAMAGE = 15
	TIME_KNIFE = 1.5 -- max 1 sek
	-- MAX CHAR PLAYER
	MAX_VAMPIR = 40 -- % max 9
	MAX_CRITICAL = 40
	MAX_ARMOR = 20   -- %
	MAX_UKLON_PLAYER = 30 -- max 30 %
	MAX_SPEED_PLAYER = 140
	MAX_SPEED_SHOOT = 0.25 -- sekunda - max 0.2
	-- AK47 and KNIFE
	MAX_TIME_SHOOT_AK47 = 0.4 -- max 0.3
	MAX_TIME_KNIFE = 0.7 -- max 1 sek
	MAX_KOL_PROBITIE = 2
	--------

	HEADSHOT = 0
	KOL_PROBITIE = 0
	KOL_MONSTER = 0
	KOL_MONEY = 0
	KOL_DAMAGE = 0
	KOL_REGEN_HP = 0
	KOL_POL_URON = 0
	KOL_POGL_URON = 0
	EXP = 0
	MONEY = 100
end
function arni_cucumber()
	CUCUMBER = "arni"
	HP_PLAYER = 250
	MAX_HP_PLAYER = 250
	REGEN_PLAYER = 50 -- /10 max 30
	VAMPIR = 0 -- % max 9
	DAMAGE_UNIT = 30
	CRITICAL = 0   -- %
	ARMOR = 30 --
	UKLON_PLAYER = 0 -- max 30 %
	SPEED_PLAYER = 80
	-- AK47
	TIME_SHOOT_AK47 = 0.8 -- max 0.3
	AK = 0
	KNIFE = 0
	KNIFE_DAMAGE = 25
	TIME_KNIFE = 1.1 -- max 1 sek
	HEADSHOT = 0
	-- MAX CHAR PLAYER
	MAX_VAMPIR = 9 -- % max 9
	MAX_CRITICAL = 40
	MAX_ARMOR = 60   -- %
	MAX_UKLON_PLAYER = 25 -- max 30 %
	MAX_SPEED_PLAYER = 100
	MAX_SPEED_SHOOT = 0.4 -- sekunda - max 0.2
	-- AK47 and KNIFE
	MAX_TIME_SHOOT_AK47 = 0.25 -- max 0.3
	MAX_TIME_KNIFE = 0.5 -- max 1 sek
	MAX_KOL_PROBITIE = 2
	--------
	
	KOL_PROBITIE = 0
	KOL_MONSTER = 0
	KOL_MONEY = 0
	KOL_DAMAGE = 0
	KOL_REGEN_HP = 0
	KOL_POL_URON = 0
	KOL_POGL_URON = 0
	EXP = 0
	MONEY = 100
end

function defold_monster()
	KOL_REV = 0
	add_every = 2
	add_five_level = 10
	add_ten_level = 20
	DURATION_SPAWN_MOSTER = 4
	UPGRADE_LIST = {}
	for key,value in pairs(STARNDART_LIST) do 
		UPGRADE_LIST[key] = value
	end
	MONEY_BOSS_TYKVA = 150
	SCORE_BOSS_TYKVA = 100
	HEALTH_BOSS_TYKVA = 500
	DAMAGE_BOSS_TYKVA = 80
	SPEED_BOSS_TYKVA = 50
	TIME_SHOOT_BOSS_TYKVA = 2
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
	SCORE_BOSS = 500
	HEALTH_BOSS = 100
	DAMAGE_BOSS = MAX_HP_PLAYER + ARMOR
	SPEED_BOSS = 15
	TIME_SHOOT_BOSS = 0.8
	--MINIS
	MONEY_MINIS = 2
	SCORE_MINIS = 2
	HEALTH_MINIS = DAMAGE_BULLET * 2
	DAMAGE_MINIS = MAX_HP_PLAYER / 2
	SPEED_MINIS = 80
end




	