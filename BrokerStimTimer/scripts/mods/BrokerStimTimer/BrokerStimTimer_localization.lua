local loc = {
	mod_name = {
		en = "Broker Stim Timer",
		["zh-cn"] = "巢都渣滓兴奋剂计时器",
	},
	mod_description = {
		en = "A detachable timer for the broker stim ability that can be positioned anywhere on screen.",
		["zh-cn"] = "独立的巢都渣滓兴奋剂计时组件，可以放置在屏幕任意位置",
	},
	general = {
		en = "General",
		["zh-cn"] = "通用设置",
	},
	display_group = {
		en = "Display",
		["zh-cn"] = "显示设置",
	},
	font_size = {
		en = "Font Size",
		["zh-cn"] = "字体大小",
	},
	icon_size = {
		en = "Icon Size",
		["zh-cn"] = "图标尺寸",
	},
	show_decimals = {
		en = "Show Decimals",
		["zh-cn"] = "显示小数",
	},
	link_all_positions = {
		en = "Link All Positions",
		["zh-cn"] = "统一全部位置参数",
	},
	shared_position_group = {
		en = "Shared Position",
		["zh-cn"] = "共用位置",
	},
	shared_icon_x = {
		en = "Icon Position X",
		["zh-cn"] = "图标‑横向偏移",
	},
	shared_icon_y = {
		en = "Icon Position Y",
		["zh-cn"] = "图标‑纵向偏移",
	},
	shared_text_x = {
		en = "Text Position X",
		["zh-cn"] = "文字‑横向偏移",
	},
	shared_text_y = {
		en = "Text Position Y",
		["zh-cn"] = "文字‑纵向偏移",
	},
	ready_group = {
		en = "Ready",
		["zh-cn"] = "就绪状态",
	},
	ready_icon_x = {
		en = "Icon Position X",
		["zh-cn"] = "图标‑横向偏移",
	},
	ready_icon_y = {
		en = "Icon Position Y",
		["zh-cn"] = "图标‑纵向偏移",
	},
	ready_show_icon = {
		en = "Show Icon",
		["zh-cn"] = "显示图标",
	},
	active_group = {
		en = "Active",
		["zh-cn"] = "生效期间",
	},
	active_icon_x = {
		en = "Icon Position X",
		["zh-cn"] = "图标‑横向偏移",
	},
	active_icon_y = {
		en = "Icon Position Y",
		["zh-cn"] = "图标‑纵向偏移",
	},
	active_text_x = {
		en = "Text Position X",
		["zh-cn"] = "文字‑横向偏移",
	},
	active_text_y = {
		en = "Text Position Y",
		["zh-cn"] = "文字‑纵向偏移",
	},
	active_show_icon = {
		en = "Show Icon",
		["zh-cn"] = "显示图标",
	},
	active_show_timer = {
		en = "Show Timer",
		["zh-cn"] = "显示倒计时",
	},
	cooldown_group = {
		en = "Cooldown",
		["zh-cn"] = "冷却阶段",
	},
	cooldown_icon_x = {
		en = "Icon Position X",
		["zh-cn"] = "图标‑横向偏移",
	},
	cooldown_icon_y = {
		en = "Icon Position Y",
		["zh-cn"] = "图标‑纵向偏移",
	},
	cooldown_text_x = {
		en = "Text Position X",
		["zh-cn"] = "文字‑横向偏移",
	},
	cooldown_text_y = {
		en = "Text Position Y",
		["zh-cn"] = "文字‑纵向偏移",
	},
	cooldown_show_icon = {
		en = "Show Icon",
		["zh-cn"] = "显示图标",
	},
	cooldown_show_timer = {
		en = "Show Timer",
		["zh-cn"] = "显示计时器",
	},
	active = {
		en = "Active Color",
		["zh-cn"] = "激活状态颜色",
	},
	active_preset = {
		en = "Color Preset",
		["zh-cn"] = "颜色预设",
	},
	active_r = {
		en = "Red",
		["zh-cn"] = "红",
	},
	active_g = {
		en = "Green",
		["zh-cn"] = "绿",
	},
	active_b = {
		en = "Blue",
		["zh-cn"] = "蓝",
	},
	cooldown = {
		en = "Cooldown Color",
		["zh-cn"] = "冷却文字颜色",
	},
	cooldown_preset = {
		en = "Color Preset",
		["zh-cn"] = "颜色预设",
	},
	cooldown_r = {
		en = "Red",
		["zh-cn"] = "红",
	},
	cooldown_g = {
		en = "Green",
		["zh-cn"] = "绿",
	},
	cooldown_b = {
		en = "Blue",
		["zh-cn"] = "蓝",
	},
	ready = {
		en = "Ready Color",
		["zh-cn"] = "就绪状态颜色",
	},
	ready_preset = {
		en = "Color Preset",
		["zh-cn"] = "颜色预设",
	},
	ready_r = {
		en = "Red",
		["zh-cn"] = "红",
	},
	ready_g = {
		en = "Green",
		["zh-cn"] = "绿",
	},
	ready_b = {
		en = "Blue",
		["zh-cn"] = "蓝",
	},
	default = {
		en = "Default",
		["zh-cn"] = "默认",
	},
}

local default_stage_colors = {
	active = {r = 226, g = 199, b = 126},
	cooldown = {r = 246, g = 69, b = 69},
	ready = {r = 74, g = 177, b = 85},
}

for stage, c in pairs(default_stage_colors) do
	local text = string.format("{#color(%s,%s,%s)}Default{#reset()}", c.r, c.g, c.b)
	loc["default_" .. stage] = { en = text }
end

for _, color_name in ipairs(Color.list or {}) do
	local c = Color[color_name](255, true)
	local text = string.format("{#color(%s,%s,%s)}%s{#reset()}", c[2], c[3], c[4], string.gsub(color_name, "_", " "))
	loc[color_name] = { en = text }
end

return loc