for _, value in pairs(farming.registered_plants) do
	minetest.register_decoration({
		name = value.crop .. "_" .. value.steps,
		deco_type = "simple",
		place_on = {"group:soil"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.00001,
			spread = {x = 100, y = 100, z = 100},
			octaves = 3,
			persist = 0.6
		},
		y_min = 0,
		y_max = 200,
		decoration = value.crop .. "_" .. value.steps,
	})
end
