local mod = get_mod("BrokerStimTimer")

local packages_to_load = {
	"packages/ui/hud/player_buffs/player_buffs",
	"packages/ui/hud/player_weapon/player_weapon",
}

local STIMM_ICON_MATERIAL = "content/ui/materials/icons/pocketables/hud/syringe_broker"
local _stimm_package_id = nil


local function get_stage_color(stage)
	local color = mod:get(stage .. "_color")
	if color then
		return {255, color[2] or 255, color[3] or 255, color[4] or 255}
	end
	return {255, 255, 255, 255}
end

mod.get_stage_color = get_stage_color

mod.on_enabled = function(is_first_call)
	if Managers.package then
		for _, package_path in ipairs(packages_to_load) do
			Managers.package:load(package_path, mod:get_name(), nil, true)
		end

		local resource_package = Application.resource_package(STIMM_ICON_MATERIAL)
		if resource_package and not _stimm_package_id then
			_stimm_package_id = Managers.package:load(STIMM_ICON_MATERIAL, mod:get_name(), nil, true)
		end
	end
end

mod:register_hud_element({
	class_name = "HudElementBrokerStimTimer",
	filename = "BrokerStimTimer/scripts/mods/BrokerStimTimer/hud/HudElementBrokerStimTimer",
	visibility_groups = {
		"alive"
	},
	use_hud_scale = false,
})

mod.on_disabled = function()
	mod:remove_require_path("BrokerStimTimer/scripts/mods/BrokerStimTimer/HudElementBrokerStimTimer")
end

mod.on_unload = function(exit_game)
	mod:remove_require_path("BrokerStimTimer/scripts/mods/BrokerStimTimer/HudElementBrokerStimTimer")
end

