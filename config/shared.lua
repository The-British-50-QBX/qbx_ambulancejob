return {
    checkInCost = 100, -- Price for using the hospital check-in system
    minForCheckIn = 2, -- Minimum number of people with the ambulance job to prevent the check-in system from being used

    locations = { -- Various interaction points
        duty = {
            vec3(351.15, -588.42, 28.8),
            vec3(-1417.38, -271.77, 46.48), -- Rockford
        },
        vehicle = {
            vec4(336.92, -580.3, 28.48, 340.07),
            vec4(-1426.1, -261.25, 46.01, 131.21), -- Rockford
        },
        helicopter = {
            vec4(351.58, -587.45, 74.16, 160.5),
            vec4(-475.43, 5988.353, 31.716, 31.34),
        },
        armory = {
            {
                shopType = 'AmbulanceArmory',
                name = 'Armory',
                groups = { ambulance = 0 },
                inventory = {
                    { name = 'radio', price = 0 },
                    { name = 'bandage', price = 0 },
                    { name = 'painkillers', price = 0 },
                    { name = 'firstaid', price = 0 },
                    { name = 'weapon_flashlight', price = 0 },
                    { name = 'weapon_fireextinguisher', price = 0 },
                },
                locations = {
                    vec3(-1423.53, -252.31, 46.48)
                }
            }
        },
        roof = {
            vec3(338.54, -583.88, 74.17),
        },
        main = {
            vec3(342.03, -585.44, 28.8),
        },
        stash = {
            {
                name = 'ambulanceStash',
                label = 'Personal stash',
                weight = 100000,
                slots = 30,
                groups = { ambulance = 0 },
                owner = true, -- Set to false for group stash
                location = vec3(309.78, -596.6, 43.29)
            }
        },

        ---@class Bed
        ---@field coords vector4
        ---@field model number

        ---@type table<string, {coords: vector3, checkIn?: vector3|vector3[], beds: Bed[]}>
        hospitals = {
            pillbox = {
                coords = vec3(350, -580, 43),
                checkIn = vec3(308.19, -595.35, 43.29),
                beds = {
                    {coords = vec4(317.670, -585.368, 43.84, 340.00), model = 1631638868},
                    {coords = vec4(314.465, -584.201, 43.84, 340.00), model = 1631638868},
                    {coords = vec4(311.057, -582.961, 43.84, 340.00), model = 2117668672},
                    {coords = vec4(322.616, -587.168, 43.34, 340.00), model = 2117668672},
                    {coords = vec4(307.717, -581.745, 43.84, 340.00), model = 2117668672},
                    {coords = vec4(309.353, -577.378, 43.84, 156.00), model = -1091386327},
                    {coords = vec4(313.929, -579.043, 43.84, 156.00), model = -1091386327},
                },
            },
            paleto = {
                coords = vec3(-250, 6315, 32),
                checkIn = vec3(-254.54, 6331.78, 32.43),
                beds = {
                    {coords = vec4(-252.43, 6312.25, 32.34, 313.48), model = 2117668672},
                    {coords = vec4(-247.04, 6317.95, 32.34, 134.64), model = 2117668672},
                    {coords = vec4(-255.98, 6315.67, 32.34, 313.91), model = 2117668672},
                },
            },
            jail = {
                coords = vec3(1761, 2600, 46),
                beds = {
                    {coords = vec4(1761.96, 2597.74, 45.66, 270.14), model = 2117668672},
                    {coords = vec4(1761.96, 2591.51, 45.66, 269.8), model = 2117668672},
                    {coords = vec4(1771.8, 2598.02, 45.66, 89.05), model = 2117668672},
                    {coords = vec4(1771.85, 2591.85, 45.66, 91.51), model = 2117668672},
                },
            },
        },

        stations = {
            {label = 'Pillbox Hospital', coords = vec4(304.27, -600.33, 43.28, 272.249)},
        }
    },
}