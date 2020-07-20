minetest.register_node("minedecor:toilet",
				{ description = 'Toilet - Open the Toilet.',
				tiles = { 
					"toilet.png", "toilet.png", 
					"toilet2.png", "toilet2.png", 
					"toilet3.png", "toilet3.png",
				},
				drawtype = "nodebox",
				sunlight_propagates = false,
				paramtype = 'light',
				paramtype2 = "facedir",
				node_box = {
					type = "fixed",
					fixed = {
						{-0.2,-0.5,-0.2, 0.2,-0.45,0.5},
						{-0.1,-0.45,-0.1, 0.1,0,0.5},
						{-0.3,-0.2,-0.3, 0.3,0,0.35},
						{-0.25,0,-0.25, 0.25,0.05,0.25},
						{-0.3,0,0.3, 0.3,0.4,0.5},
						{-0.05,0.4,0.35, 0.05,0.45,0.45},
					},
				},
				drop ="minedecor:toilet",
				groups = {cracky=3},
				on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
					minetest.swap_node(pos, {name="minedecor:toilet_open", param2=node.param2})
				end,
			})

			minetest.register_node("minedecor:toilet_open",
				{ description = 'Toilet - Open the Toilet.',
				tiles = {
					"top_toilet.png", "toilet.png",
					"toilet.png", "toilet.png",
					"toilet2.png", "toilet2.png",
				},
				drawtype = "nodebox",
				sunlight_propagates = false,
				paramtype = 'light',
				paramtype2 = 'facedir',
				node_box = {
					type = "fixed",
					fixed = {
						{-0.2,-0.5,-0.2, 0.2,-0.45,0.5},
						{-0.1,-0.45,-0.1, 0.1,-0.2,0.5},
						{-0.1,-0.2,0.3, 0.1,0,0.5},
						{-0.3,-0.2,0.1, 0.3,0,0.35},
						{-0.3,-0.2,-0.3, -0.1,-0.15,0.1},
						{-0.1,-0.2,-0.3, 0.1,-0.15,-0.1},
						{0.1,-0.2,-0.3, 0.3,-0.15,0.1},
						{-0.3,-0.15,-0.3, -0.2,0,0.1},
						{-0.2,-0.15,-0.3, 0.2,0,-0.2},
						{0.2,-0.15,-0.3, 0.3,0,0.1},
						{-0.25,0,0.2, 0.25,0.5,0.25},
						{-0.3,0,0.3, 0.3,0.4,0.5},
					},
				},
				drop = "minedecor:toilet",
				groups = {cracky = 3},
				on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
					minetest.swap_node(pos, {name="minedecor:toilet", param2=node.param2})
					minetest.sound_play("toilet", {
						pos=pos,
						max_hear_distance = 10,
						gain = 0.5,
					})
				end,
})

minetest.register_node("minedecor:basket", {
    description = "Empty Basket",
	tiles = {
		"basket_top.png",
		"basket.png",
		"basket.png",
		"basket.png",
		"basket.png",
		"basket.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375}, -- NodeBox2
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox3
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5}, -- NodeBox4
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox5
		}
	},
    is_ground_content = false,
    groups = {cracky = 1, snappy = 1, crumbly = 1},
})
minetest.register_alias("basket:empty","minedecor:basket")

minetest.register_craft({
    type = "shaped",
    output = "minedecor:basket",
    recipe = {
        {"default:wood", "",  "default:wood"},                      
        {"default:wood", "",  "default:wood"},                   
        {"default:wood", "default:wood",  "default:wood"}        
    }
})

minetest.register_craft( {
		output = 'minedecor:toilet',
		recipe = {
			{'','','bucket:bucket_water'},
			{ 'default:cobble','default:cobble', 'default:cobble' },
			{ '', 'bucket:bucket_empty', '' },
    }
})

minetest.register_node("minedecor:chair",
			{ description = 'Chair',
			tiles = {
				"default_wood.png",
			},
			drawtype = "nodebox",
			sunlight_propagates = true,
			paramtype = 'light',
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.3,-0.5,0.2, -0.2,0.5,0.3},
					{0.2,-0.5,0.2, 0.3,0.5,0.3},
					{-0.3,-0.5,-0.3, -0.2,-0.1,-0.2},
					{0.2,-0.5,-0.3, 0.3,-0.1,-0.2},
					{-0.3,-0.1,-0.3, 0.3,0,0.2},
					{-0.2,0.1,0.25, 0.2,0.4,0.26}
				},
			},
			selection_box = {
				type = "fixed",
				fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3},
			},
			 groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2}
		})

minetest.register_craft( {
		output = 'minedecor:chair 2',
		recipe = {
			{ 'default:stick',''},
			{ 'default:wood','default:wood' },
			{ 'default:stick','default:stick' },
		},
	})

minetest.register_node("minedecor:table",
			{ description = 'Table',
			tiles = {
				"default_wood.png",
			},
			drawtype = "nodebox",
			sunlight_propagates = true,
			paramtype = 'light',
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
			{ -0.4, -0.5, -0.4, -0.3, 0.4, -0.3 }, -- foot 1
			{ 0.3, -0.5, -0.4, 0.4, 0.4, -0.3 }, -- foot 2
			{ -0.4, -0.5, 0.3, -0.3, 0.4, 0.4 }, -- foot 3
			{ 0.3, -0.5, 0.3, 0.4, 0.4, 0.4 }, -- foot 4
			{ -0.5, 0.4, -0.5, 0.5, 0.5, 0.5 } -- table top
				},
			},
			 groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2}
		})

minetest.register_craft( {
		output = 'minedecor:table',
		recipe = {
			{ 'default:stick','default:stick','default:stick'},
			{ '','default:stick','' },
			{ '','default:stick','' },
		},
	})