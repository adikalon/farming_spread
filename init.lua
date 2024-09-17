local dirt_nodes = {
	"ebiomes:dirt_with_forest_litter",
	"ebiomes:dirt_with_grass_cold",
	"ebiomes:dirt_with_grass_med",
	"ebiomes:dirt_with_grass_steppe",
	"ebiomes:dirt_with_grass_steppe_cold",
	"ebiomes:dirt_with_grass_steppe_warm",
	"ebiomes:dirt_with_grass_swamp",
	"ebiomes:dirt_with_grass_warm",
	"ebiomes:dirt_with_japanese_rainforest_litter",
	"ebiomes:dirt_with_jungle_savanna_grass",

	"variety:cherry_dirt_with_grass",
	"variety:dirt_with_bamboo",
	"variety:giant_coniferous_forest_dirt_with_grass",
	"variety:japanese_dirt_with_grass",
	"variety:meadow_dirt_with_grass",
	"variety:redwood_dirt_with_grass",
	"variety:tropical_rainforest_dirt_with_grass",

	"livingjungle:jungleground",
	"livingjungle:leafyjungleground",

	"naturalbiomes:alderswamp_litter",
	"naturalbiomes:alpine_litter",
	"naturalbiomes:bushland_bushlandlitter",
	"naturalbiomes:bushland_bushlandlitter2",
	"naturalbiomes:bushland_bushlandlitter3",
	"naturalbiomes:mediterran_litter",
	"naturalbiomes:savannalitter",

	"default:dirt_with_coniferous_litter",
	"default:dirt_with_rainforest_litter",
}

local dry_dirt_nodes = {
	"ebiomes:dry_dirt_with_grass_arid",
	"ebiomes:dry_dirt_with_grass_arid_cool",
	"ebiomes:dry_dirt_with_humid_savanna_grass",

	"livingdesert:coldsteppe_ground",
	"livingdesert:coldsteppe_ground2",
	"livingdesert:coldsteppe_ground3",
	"livingdesert:coldsteppe_ground4",

	"naturalbiomes:bambooforest_litter",
	"naturalbiomes:heath_litter",
	"naturalbiomes:heath_litter2",
	"naturalbiomes:heath_litter3",
	"naturalbiomes:outback_litter",

	"default:dry_dirt_with_dry_grass",
	"default:dirt_with_dry_grass",
}

for _, value in pairs(farming.registered_plants) do
	if
		value.crop ~= "farming:beanpole"
		and value.crop ~= "farming:cocoa"
		and value.crop ~= "farming:barley"
		and value.crop ~= "farming:oat"
		and value.crop ~= "farming:rice"
		and value.crop ~= "farming:grapes"
		and value.crop ~= "farming:wheat"
		and value.crop ~= "farming:rye"
	then
		local place_nodes = dirt_nodes

		if value.crop == "farming:cotton" then
			place_nodes = dry_dirt_nodes
		end

		minetest.register_decoration({
			name = value.crop .. "_" .. value.steps,
			deco_type = "simple",
			place_on = place_nodes,
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.0001,
				spread = {x = 100, y = 100, z = 100},
				octaves = 3,
				persist = 0.6
			},
			y_min = 0,
			y_max = 1000,
			decoration = value.crop .. "_" .. value.steps,
		})
	end
end
