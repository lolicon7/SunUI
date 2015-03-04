﻿local S, L, P = unpack(select(2, ...)) --Import: Engine, Locales, ProfileDB, local

local BR = S:GetModule("BufferReminder")

--职业buff
BR.ReminderBuffs = {
		DEATHKNIGHT = {
			[1] = {
				["spells"] = {
					[57330]  = true,	-- 寒冬号角
				},
				["negate_spells"] = {
					[6673]   = true,	-- 战斗怒吼
					[19506]  = true,	-- 强击光环
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
			[2] = {
				["spells"] = {
					[48263]  = true,	-- 血脸 
				},
				["role"] = "Tank",
				["instance"] = true,
				["reversecheck"] = true,
			},
		},
		DRUID = {
			[1] = {
				["spells"] = {
					[1126]   = true,	-- 野性印记
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
		},
		MAGE = {
			[1] = {	-- Brilliance group
				["spells"] = {
					[1459]   = true,	-- 奥术光辉
					[61316]  = true,	-- 达拉然光辉
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
		},
		MONK = {
			[1] = {
				["spells"] = {
					[115921] = true,	-- 帝王传承
				},
				["negate_spells"] = {
					[1126]   = true,	-- 野性印记
					[160017] = true,	-- 金刚之力
					[90363]  = true,	-- 页岩蛛之拥
					[160077] = true,	-- 大地之力
					[116781] = true,	-- 白虎传承
					[20217]  = true,	-- 王者祝福
					[159988] = true,	-- 狂野怒吼
					[160206] = true,	-- 孤狼
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
			[2] = {
				["spells"] = {
					[116781] = true,	-- 白虎传承
				},
				["negate_spells"] = {
					[1126]   = true,	-- 野性印记
					[160017] = true,	-- 金刚之力
					[90363]  = true,	-- 页岩蛛之拥
					[160077] = true,	-- 大地之力
					[115921] = true,	-- 帝王传承
					[20217]  = true,	-- 王者祝福
					[159988] = true,	-- 狂野怒吼
					[160206] = true,	-- 孤狼
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
		},
		PALADIN = {
			[1] = {
				["spells"] = {
					[25780]  = true,	-- 正义之怒
				},
				["role"] = "Tank",
				["instance"] = true,
				["reversecheck"] = true,
				["negate_reversecheck"] = 1,
			},
--[[
			[2] = {
				["spells"] = {
					20217,	-- 王者祝福
				},
				["negate_spells"] = {
					[1126]   = true,	-- 野性印记
					[160017] = true,	-- 金刚之力
					[90363]  = true,	-- 页岩蛛之拥
					[160077] = true,	-- 大地之力
					[115921] = true,	-- 帝王传承
					[116781] = true,	-- 白虎传承
					[159988] = true,	-- 狂野怒吼
					[160206] = true,	-- 孤狼
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
			[3] = {
				["spells"] = {
					[19740]  = true,	-- 力量祝福
				},
				["negate_spells"] = {
					[116956] = true,	-- 风之优雅
					[93435]  = true,	-- 勇气咆哮
					[128997] = true,	-- 灵魂兽祝福
					[155522] = true,	-- 幽冥之力
					[24907]  = true,	-- 枭兽光环
					[160039] = true,	-- 敏锐感知
					[160073] = true,	-- 平步青云
					[160198] = true,	-- 孤狼
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
--]]
		},
		PRIEST = {
			[1] = {
				["spells"] = {
					[21562]  = true,	-- 真言术：韧
				},
				["negate_spells"] = {
					[90364]  = true,	-- 其拉虫群坚韧
					[160003] = true,	-- 野性活力
					[160014] = true,	-- 坚韧
					[166928] = true,	-- 血之锲约
					[469]    = true,	-- 命令怒吼
					[111922] = true,	-- 坚韧
					[160199] = true,	-- 孤狼
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true
			},
		},
		HUNTER = { 
			[1] = {
				["spells"] = {
					[77769] = true,		-- 陷阱发射器
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
			[2] = {
				["spells"] = {
					[162537] = true,	-- 毒液弹
				},
				["negate_spells"] = {
					[162536] = true,	-- 烈焰弹
					[162539] = true,	-- 寒冰弹
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
		},
		ROGUE = {
			[1] = {
				["spells"] = {
					[2823]   = true,	-- 致命药膏
					[8679]   = true,	-- 致伤药膏
					[157584] = true,	-- 速效毒药
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
		},
		SHAMAN = {
			[1] = {	-- Shields group
				["spells"] = {
					[52127]  = true,	-- 水之护盾
					[324]    = true,	-- 闪电之盾
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
		},
		WARLOCK = {
			[1] = {	-- Dark Intent group
				["spells"] = {
					[109773] = true,	-- 黑暗意图
				},
				["combat"] = true,
				["instance"] = true,
				["pvp"] = true,
			},
		},
		WARRIOR = {
			[1] = {
				["spells"] = {
					[469]    = true,	-- 命令怒吼
				},
				["negate_spells"] = {
					[90364]  = true,	-- 其拉虫群坚韧
					[160003] = true,	-- 野性活力
					[160014] = true,	-- 坚韧
					[166928] = true,	-- 血之锲约
					[21562]  = true,	-- 真言术：韧
					[111922] = true,	-- 坚韧
					[160199] = true,	-- 孤狼
				},
				["combat"] = true,
				["role"] = "Tank",
				["instance"] = true,
				["pvp"] = true,
			},
			[2] = {
				["spells"] = {
					[6673]   = true,	-- 战斗怒吼
				},
				["negate_spells"] = {
					[19506]  = true,	-- 强击光环
					[57330]  = true,	-- 寒冬号角
				},
				["combat"] = true,
				["role"] = "Melee",
				["instance"] = true,
				["pvp"] = true,
			},
		},
	}


--团队buff
BR.RaidBuffList = {
	[1] = { 	 -- 5%属性
		 20217,  -- 王者祝福
		  1126,  -- 野性印记
		115921,  -- 帝王传承
		116781,  -- 白虎传承
		 90363,  -- 页岩蛛:页岩蛛之拥(兽王)
		159988,  -- 淡水兽:狂野怒吼
		160017,  -- 猩猩:金刚之力
		160077,  -- 虫:大地之力
		160206,  -- 独来独往:巨猿之力
		 69378,  -- 遗忘王者祝福:4%属性
		144053,  -- 试炼场
	},
	[2] = { 	 -- 10%耐力
		 21562,  -- 真言术:韧
		   469,  -- 命令怒吼
		166928,  -- 血之锲约
		 90364,  -- 其拉虫:其拉虫群坚韧
		160003,  -- 双头飞龙:野性活力
		160014,  -- 山羊:坚韧
		 50256,  -- 熊:振奋咆哮
		160199,  -- 独来独往:巨熊之韧
		111922,  -- 坚韧符文卷轴:8%耐力
		144051,  -- 试炼场
	},
	[3] = { 	 -- 精通
		 19740,  -- 力量祝福
		155522,  -- 幽冥之力
		 24907,  -- 枭兽光环
		116956,  -- 风之优雅
		128997,  -- 灵魂兽:灵魂兽祝福
		 93435,  -- 豹:勇气咆哮
		160039,  -- 九头蛇:敏锐感知
		160073,  -- 陆行鸟:平步青云
		160198,  -- 独来独往:猫之优雅
		144048,  -- 试炼场
	},
	[4] = { 	 -- 5%暴击
		 17007,  -- 兽群领袖
		  1459,  -- 奥术光辉
		 61316,  -- 达拉然光辉
		116781,  -- 白虎传承
		 24604,  -- 狼:狂怒之嚎
		126309,  -- 水黾:静水
		 90309,  -- 魔暴龙:惊人咆哮
		126373,  -- 魁麟:无畏之嚎
		160052,  -- 迅猛龙:兽群之力
		 90363,  -- 页岩蛛:页岩蛛之拥
		160200,  -- 独来独往:迅猛龙之恶
		144047,  -- 试炼场
	},
	[5] = { 	 -- 10%法强
		  1459,  -- 奥术光辉
		 61316,  -- 达拉然光辉
		109773,  -- 黑暗意图
		 90364,  -- 其拉虫:其拉虫群坚韧
		126309,  -- 水黾:静水
		128433,  -- 蛇:蛇之狡黠
		160205,  -- 独来独往:神龙之智
		144042,  -- 试炼场
	},
	[6] = { 	 -- 10%攻强
		  6673,  -- 战斗怒吼
		 19506,  -- 强击光环
		 57330,  -- 寒冬号角
		144041,  -- 试炼场
	},
	[7] = { 	 -- 5%急速
		 49868,  -- 思维加速
		 55610,  -- 邪恶光环
		113742,  -- 迅刃之黠
		116956,  -- 风之优雅
		135678,  -- 孢子蝠:充能孢子
		160003,  -- 双头飞龙:野性活力
		160074,  -- 蜂:虫群之速
		128432,  -- 土狼:厉声嚎叫
		160203,  -- 独来独往:土狼之速
		144046,  -- 试炼场
	},
	[8] = { 	 -- 3%全能
		  1126,  -- 野性印记
		 55610,  -- 邪恶光环
		167187,  -- 圣洁光环
		167188,  -- 英姿勃发
		159735,  -- 猛禽:坚韧
		 35290,  -- 野猪:不屈
		160045,  -- 刺猬:防御鬃毛
		 50518,  -- 掠夺者:角质护甲
		 57386,  -- 犀牛:狂野之力
		160077,  -- 虫:大地之力
		173035,  -- 雄鹿:优雅
		172967,  -- 独来独往:掠食者之力
		175649,  -- 试炼场
	},
	[9] = { 	 -- 5%溅射
		166916,  -- 狂风骤雨
		 49868,  -- 思維敏捷
		113742,  -- 迅刃之黠
		109773,  -- 黑暗意图
		 58604,  -- 熔岩犬:狂暴撕咬
		 34889,  -- 龙鹰:迅疾打击
		 57386,  -- 犀牛:狂野之力
		 24844,  -- 风蛇:狂风呼啸
		 50519,  -- 蝙蝠:音波聚集
		159736,  -- 奇美拉:齐头并进
		172968,  -- 独来独往:龙鹰之速
		175651,  -- 试炼场
	},
}
