math.randomseed(os.time())

STATE_GAME = {"start", "pause", "menu", "dead", "next_level", "upgrade"} 
EXP_LVL = {200, 450, 750, 1100, 1500, 1950, 2450, 3050, 3700, 4200, 4800, 5400, 6000, 6650, 7300, 8100, 9000, 10000, 11200, 12500}

-- CONSTANTA
GREEN_COLOR = vmath.vector4(0.3,0.8,0.3,1)
BLACK_COLOR = vmath.vector4(0,0,0,1)
RED_COLOR = vmath.vector4(0.8,0.3,0.3,1)
GREY_COLOR = vmath.vector4(0.3,0.3,0.3,1)
WHITE_COLOR = vmath.vector4(1,1,1,1)

CHAR_HP = {value = math.random(3,9), key = "hp", text1 = " hp", text2 = "увеличивает максимальное здоровье", img = 'img', buy = math.random(20,32)}
CHAR_DMG_BULLET = {value = math.random(2,7), key = "dmg_bullet", text1 = " урона пистолета", text2 = "увеличивает урон от пистолета", img = 'img', buy = math.random(20,32)}
CHAR_SPEED_PLR = {value = math.random(2,6), key = "speed_pl", text1 = " скорость огурчика", text2 = "увеличивает скорость бега", img = 'img', buy = math.random(20,32)}
CHAR_REGEN = {value = math.random(1,7), key = "regen", text1 = " востанавливает hp", text2 = "увеличивает восстанавление здоровья в секунду", img = 'img', buy = math.random(20,32)}
CHAR_VAMPIR = {value = math.random(1,3), key = "vampir", text1 = " вампиризм", text2 = "увеличивает кражу здоровья, нанесенный урон от пули преобразуется в здоровье", img = 'img', buy = math.random(20,32)}
CHAR_DMG_UNIT = {value = math.random(2,7), key = "dmg_unit", text1 = " урона АК47", text2 = "увеличивает урон всех юнитов", img = 'img', buy = math.random(100,150)}
CHAR_CRITICAL = {value = math.random(2,6), key = "critical", text1 = "% критический урон", text2 = "увеличивает критическую атаку, наносить на 300% больше урона", img = 'img', buy = math.random(20,32)}
CHAR_ARMOR = {value = math.random(2,7), key = "armor", text1 = " повысить броню", text2 = "увеличивает бронью, броня уменьшает урон", img = 'img', buy = math.random(20,32)}
CHAR_UKLON = {value = math.random(2,6), key = "uklon", text1 = "% повысить уклонение", text2 = "будешь уклонятся от атак как бог", img = 'img', buy = math.random(20,32)}
CHAR_SPEED_SHOOT = {value = math.random(2,5), key = "speed_shoot", text1 = " увеличивает скорость атаки", text2 = "увеличивает скорость стрельбы из пистолета", img = 'img', buy = math.random(20,32)}
SKILL_ADD_AK47 = {value = 0, key = "add_ak", text1 = "добавить ak47", text2 = "Добавляет ак47 которая стреляем самостоятельно", buy = math.random(200, 300), img = 'ak47'}
SKILL_ADD_KNIFE = {value = 0, key = "add_knife", text1 = "добавить меч", text2 = "добавляет мечи которые вращаются вокруг оугрчика", buy = math.random(200, 300), img = 'knife' }
SKILL_PROBITIE = {value = 0, key = "probitie", text1 = "пробивающие пули", text2 = "Ваши пули пробивают +1 врага", buy = math.random(200, 300), img = "img" }
UP_DMG_KNIFE = {value = math.random(3,7), key = "up_dmg_knife", text1 = " увеличивает урон МЕЧА", text2 = "увеличивает урон меча", buy = math.random(100, 150), img =""}
UP_SPEED_AK = {value =  math.random(2,7), key = "up_speed_ak", text1 = " увеличивает скорость АК47", text2 = "увеличивает скорость атаки АК47", buy = math.random(100, 150), img =""}
UP_SPEED_KNIFE = {value =  math.random(2,7), key = "up_speed_knife", text1 = " увеличивает скорость меча", text2 = "увеличивает скорость меча", buy = math.random(100, 150), img =""}

UPGRADE_LIST = {CHAR_HP, CHAR_DMG_BULLET, CHAR_SPEED_PLR, CHAR_REGEN, CHAR_VAMPIR, CHAR_CRITICAL, CHAR_ARMOR,
CHAR_UKLON, CHAR_SPEED_SHOOT, SKILL_ADD_AK47, SKILL_ADD_KNIFE, SKILL_PROBITIE}

STATE = "start"

KOL_PROBITIE = 0
-- SETTINGS
TIME_NEXT_LEVEL = 60
PUSH_MONSTER = 50
IS_MOUSE = false
EXP = 0
MONEY = 50
LEVEL = 1
HP_PLAYER = 1
-- CHAR PLAYER
MAX_HP_PLAYER = 100
REGEN_PLAYER = 0 -- /10 max 30
VAMPIR = 0 -- % max 9
DAMAGE_BULLET = 8
DAMAGE_UNIT = 9
CRITICAL = 0.05   -- %
ARMOR = 3 -- %
UKLON_PLAYER = 0.05 -- max 0.6 %
SPEED_PLAYER = 80
SPEED_SHOOT = 0.8 -- sekunda - max 0.2
-- AK47
TIME_SHOOT_AK47 = 0.8 -- max 0.3


AK = 0
KNIFE = 0
KNIFE_DAMAGE = 15
TIME_KNIFE = 2 -- max 1 sek

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
	elseif key == "regen" then
		REGEN_PLAYER = REGEN_PLAYER + value
	elseif key == "vampir" then
		VAMPIR = VAMPIR + value
		if VAMPIR >= 9 then
			for key, value in pairs(UPGRADE_LIST) do
				if value == CHAR_VAMPIR then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "dmg_unit" then
		DAMAGE_UNIT = DAMAGE_UNIT + value
	elseif key == "critical" then
		CRITICAL = CRITICAL + value/100
	elseif key == "armor" then
		ARMOR = ARMOR + value
	elseif key == "uklon" then
		UKLON_PLAYER = UKLON_PLAYER + value/100
		if UKLON_PLAYER <= 0.3 then
			for key, value in pairs(UPGRADE_LIST) do
				if value == CHAR_UKLON then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "speed_shoot" then
		SPEED_SHOOT = SPEED_SHOOT - value/100
		if SPEED_SHOOT < 0.2 then
			SPEED_SHOOT = 0.2
			for key, value in pairs(UPGRADE_LIST) do
				if value == SPEED_SHOOT then
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
		if KOL_PROBITIE > 3 then
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
		if TIME_SHOOT_AK47 <= 0.25 then
			TIME_SHOOT_AK47 = 0.25
			for key, value in pairs(UPGRADE_LIST) do
				if value == UP_SPEED_AK then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	elseif key == "up_speed_knife" then
		TIME_KNIFE = TIME_KNIFE - value/100
		if TIME_KNIFE <= 1 then
			TIME_KNIFE = 0.9
			for key, value in pairs(UPGRADE_LIST) do
				if value == UP_SPEED_KNIFE then
					table.remove(UPGRADE_LIST, key)
				end
			end
		end
	end
end


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
DAMAGE_BOSS = 50
SPEED_BOSS = 15
TIME_SHOOT_BOSS = 0.8
--MINIS
MONEY_MINIS = 2
SCORE_MINIS = 2
HEALTH_MINIS = 100
DAMAGE_MINIS = 10
SPEED_MINIS = 80

local max_level = 20
function change_exp(value)
	EXP = EXP + value
	if max_level == LEVEL then
		table.insert(EXP_LVL, EXP_LVL[#EXP_LVL] + 1200)
	end
	if EXP >= EXP_LVL[LEVEL] then
		change_state("next")
		LEVEL = LEVEL + 1
		HEALTH_BLUE = HEALTH_BLUE + 1
		HEALTH_RED = HEALTH_RED + 1
		DAMAGE_BLUE = DAMAGE_BLUE + 1
		DAMAGE_RED = DAMAGE_RED + 1
		HEALTH_PURPLE = HEALTH_PURPLE + 1
		HEALTH_YELLOW = HEALTH_YELLOW + 1
		DAMAGE_PURPLE = DAMAGE_PURPLE + 1
		DAMAGE_YELLOW = DAMAGE_YELLOW + 1
		if LEVEL % 5 == 0 then
			-- HEALTH_BLUE = HEALTH_BLUE + 10
			-- HEALTH_RED = HEALTH_RED + 10
			-- HEALTH_PURPLE = HEALTH_PURPLE + 10
			-- HEALTH_YELLOW = HEALTH_YELLOW + 20
			DAMAGE_BLUE = DAMAGE_BLUE + 5
			DAMAGE_RED = DAMAGE_RED + 5
			DAMAGE_PURPLE = DAMAGE_PURPLE + 5
			DAMAGE_YELLOW = DAMAGE_YELLOW + 5
			MONEY_BLUE = 1.5
			MONEY_RED = 2
			MONEY_PURPLE = 2
			MONEY_YELLOW = 2.5 
		elseif LEVEL % 11 == 10 then
			-- HEALTH_BLUE = HEALTH_BLUE + 20
			-- HEALTH_RED = HEALTH_RED + 20
			-- HEALTH_PURPLE = HEALTH_PURPLE + 20
			-- HEALTH_YELLOW = HEALTH_YELLOW + 40
			DAMAGE_BLUE = DAMAGE_BLUE + 10
			DAMAGE_RED = DAMAGE_RED + 10
			DAMAGE_PURPLE = DAMAGE_PURPLE + 10
			DAMAGE_YELLOW = DAMAGE_YELLOW + 10
			MONEY_BLUE = 1.2
			MONEY_RED = 1.5
			MONEY_PURPLE = 1.5
			MONEY_YELLOW = 2
		end
	end
end

function change_hp(value)
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
end

function change_state(value)
	STATE = value
end

function change_level(value)
	LEVEL = value
end