for _, value in pairs(farming.registered_plants) do
	if
		value.crop ~= "farming:beanpole"
		and value.crop ~= "farming:cocoa"
		and value.crop ~= "farming:barley"
		and value.crop ~= "farming:oat"
		and value.crop ~= "farming:rice"
		and value.crop ~= "farming:grapes"
	then
		minetest.register_decoration({
			name = value.crop .. "_" .. value.steps,
			deco_type = "simple",
			place_on = {
				"group:soil",
				"livingdesert:coldsteppe_ground",
				"livingdesert:coldsteppe_ground2",
				"livingdesert:coldsteppe_ground3",
				"livingdesert:coldsteppe_ground4",
			},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.0001,
				spread = {x = 100, y = 100, z = 100},
				octaves = 3,
				persist = 0.6
			},
			y_min = 0,
			y_max = 200,
			decoration = value.crop .. "_" .. value.steps,
		})
	end
end
