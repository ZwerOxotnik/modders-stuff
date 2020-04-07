data:extend{
    {
        type = "tile",
        name = "red",
        order = "z-z-r",
        collision_mask = {"ground-tile"},
        layer = 70,
        variants =
        {
        main =
        {
            {
            picture = "__modders-stuff__/graphics/terrain/lab-tiles/red.png",
            count = 1,
            size = 1
            }
        },
        empty_transitions = true
        },
        map_color={r=1, g=0, b=0},
        pollution_absorption_per_second = 0
    },
    {
        type = "tile",
        name = "green",
        order = "z-z-g",
        collision_mask = {"ground-tile"},
        layer = 70,
        variants =
        {
        main =
        {
            {
            picture = "__modders-stuff__/graphics/green.png",
            count = 1,
            size = 1
            }
        },
        empty_transitions = true
        },
        map_color={r=0, g=1, b=0},
        pollution_absorption_per_second = 0
    },
    {
        type = "tile",
        name = "blue",
        order = "z-z-b",
        collision_mask = {"ground-tile"},
        layer = 70,
        variants =
        {
        main =
        {
            {
            picture = "__modders-stuff__/graphics/blue.png",
            count = 1,
            size = 1
            }
        },
        empty_transitions = true
        },
        map_color={r=0, g=0, b=1},
        pollution_absorption_per_second = 0
    }
}