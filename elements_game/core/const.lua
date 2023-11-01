--CONST PLAYER
CONST_MAX_HP_PLAYER = 80
CONST_REGEN_PLAYER = 0 
CONST_VAMPIR = 0 
CONST_DAMAGE_BULLET = 8
CONST_DAMAGE_UNIT = 30
CONST_CRITICAL = 3 
CONST_DMG_CRITICAL = 150 
CONST_ARMOR = 3 
CONST_UKLON_PLAYER = 3 
CONST_SPEED_PLAYER = 80
CONST_SPEED_SHOOT = 0.8 
-- AK47
CONST_TIME_SHOOT_AK47 = 1 
CONST_KNIFE_DAMAGE = 15
CONST_TIME_KNIFE = 1.5 
CONST_KOL_PROBITIE = 0
CONST_HEADSHOT = 0
CONST_BOOM_DAMAGE = 30


MAX_REGEN_PLAYER = 0 -- /10 max 30
-- MAX CHAR PLAYER
MAX_VAMPIR = 9 -- % max 9
MAX_CRITICAL = 30
MAX_ARMOR = 30   -- %
MAX_UKLON_PLAYER = 30 -- max 30 %
MAX_SPEED_PLAYER = 100
MAX_SPEED_SHOOT = 0.29 -- sekunda - max 0.2
-- AK47 and KNIFE
MAX_TIME_SHOOT_AK47 = 0.5 -- max 0.3
MAX_TIME_KNIFE = 0.8 -- max 1 sek
MAX_KOL_PROBITIE = 2
--------
LANG_TEXT_LVL_SHOP = " LVL - магазин"
LANG_TEXT_BUY = "Купить"
LANG_TEXT_SELECT = "Выбрать"
LANG_TEXT_CLOSE = "закрыть"
LANG_TEXT_CHANGE = "Поменять - "
LANG_TEXT_ADS = "+300 за рекламу "
LANG_TEXT_CHAR = "Показатели:"

LANG_TEXT_CHAR_SPEED = "скорость: "
LANG_TEXT_CHAR_DMG = "урон: "
LANG_TEXT_CHAR_REGEN = "регенерация: 0."
LANG_TEXT_CHAR_VAMPIR = "вампиризм: "
LANG_TEXT_CHAR_UNIT= "урон доп. оружий: "
LANG_TEXT_CHAR_DMG_CRIT = "критический урон % "
LANG_TEXT_CHAR_CRIT = "шанс крит. атаки % "
LANG_TEXT_CHAR_ARMOR = "броня: "
LANG_TEXT_CHAR_UKLON = "уклонение %: "
LANG_TEXT_CHAR_SPD_SHOT = "скорость атаки: "
LANG_TEXT_CHAR_PROB = "пробитие: "
LANG_TEXT_CHAR_SPD_UNIT = "скорость доп. оружий: "
LANG_TEXT_CHAR_SPD_KNIFE = "скорость меча: "
LANG_TEXT_CHAR_DMG_KNIFE = "урон меча: "
LANG_TEXT_CHAR_DMG_BOOM = "урон взрыва: "

function change_langugage(value)
	if value then
		LANG_TEXT_LVL_SHOP = " LVL - магазин"
		LANG_TEXT_BUY = "Купить"
		LANG_TEXT_SELECT = "Выбрать"
		LANG_TEXT_CLOSE = "закрыть"
		LANG_TEXT_CHANGE = "Поменять - "
		LANG_TEXT_ADS = "+300 за рекламу "
		LANG_TEXT_CHAR = "Показатели:"
		
		LANG_TEXT_CHAR_SPEED = "скорость: "
		LANG_TEXT_CHAR_DMG = "урон: "
		LANG_TEXT_CHAR_REGEN = "регенерация: 0."
		LANG_TEXT_CHAR_VAMPIR = "вампиризм: "
		LANG_TEXT_CHAR_UNIT= "урон доп. оружия: "
		LANG_TEXT_CHAR_DMG_CRIT = "критический урон % "
		LANG_TEXT_CHAR_CHAR_CRIT = "шанс критической атаки % "
		LANG_TEXT_CHAR_ARMOR = "броня: "
		LANG_TEXT_CHAR_UKLON = "уклонение %: "
		LANG_TEXT_CHAR_SPD_SHOT = "скорость атаки: "
		LANG_TEXT_CHAR_PROB = "пробитие: "
		LANG_TEXT_CHAR_SPD_UNIT = "скорость доп. оружия: "
		LANG_TEXT_CHAR_SPD_KNIFE = "скорость меча: "
		LANG_TEXT_CHAR_DMG_KNIFE = "урон меча: "
		LANG_TEXT_CHAR_DMG_BOOM = "урон взрыва: "
	else
		LANG_TEXT_LVL_SHOP = " LVL - shop"
		LANG_TEXT_BUY = "buy"
		LANG_TEXT_SELECT = "select"
		LANG_TEXT_CLOSE = "close"
		LANG_TEXT_CHANGE = "change - "
		LANG_TEXT_ADS = "+300 for ads"
		LANG_TEXT_CHAR = "stats:"
		
		LANG_TEXT_CHAR_SPEED = "speed: "
		LANG_TEXT_CHAR_DMG = "damage: "
		LANG_TEXT_CHAR_REGEN = "regeneration: 0."
		LANG_TEXT_CHAR_VAMPIR = "vampirism: "
		LANG_TEXT_CHAR_UNIT = "extra weapon damage: "
		LANG_TEXT_CHAR_DMG_CRIT = "critical damage % "
		LANG_TEXT_CHAR_CHAR_CRIT = "critical attack chance % "
		LANG_TEXT_CHAR_ARMOR = "armor: "
		LANG_TEXT_CHAR_UKLON = "evasion %: "
		LANG_TEXT_CHAR_SPD_SHOT = "attack speed: "
		LANG_TEXT_CHAR_PROB = "penetration: "
		LANG_TEXT_CHAR_SPD_UNIT = "extra weapon speed: "
		LANG_TEXT_CHAR_SPD_KNIFE = "sword speed: "
		LANG_TEXT_CHAR_DMG_KNIFE = "sword damage: "
		LANG_TEXT_CHAR_DMG_BOOM = "blast damage: "
	end
end