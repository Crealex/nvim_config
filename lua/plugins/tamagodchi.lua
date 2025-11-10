return {
	"raquentin/tamagotchi.nvim",
	opts = {
		window_toggle_keybind = "<leader>tg",
		tick_length_ms = 1000, -- 1 second per tick
		default_pet = "Sushi",
		pets = {
			{
				name = "Ilya",

				sprite_update_interval = 5,

				initial_mood = 75,
				initial_satiety = 75,
				decay_speed = 2, -- 0-6 scale (0=none, 6=extreme)

				vim_events = {
					{
						name = "BufWritePost",
						mood_increment = 5,
						satiety_increment = 3,
					},
					{
						name = "TextYankPost",
						mood_increment = 2,
						satiety_increment = 1,
					},
				},
			},
		},
	},
}
