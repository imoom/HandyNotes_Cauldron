local myname, ns = ...

local merge = function(t1, t2)
    if not t2 then return t1 end
    for k, v in pairs(t2) do
        t1[k] = v
    end
end
ns.merge = merge

local path_meta = {__index = {
    label = "Path to treasure",
    atlas = "map-icon-SuramarDoor.tga",
    path = true,
    scale = 1.1,
}}
local path = function(details)
    return setmetatable(details or {}, path_meta)
end
ns.path = path

ns.map_spellids = {
    -- [862] = 0, -- Zuldazar
    -- [863] = 0, -- Nazmir
    -- [864] = 0, -- Vol'dun
    -- [895] = 0, -- Tiragarde Sound
    -- [896] = 0, -- Drustvar
    -- [942] = 0, -- Stormsong Valley
}

ns.points = {
    --[[ structure:
    [uiMapID] = { -- "_terrain1" etc will be stripped from attempts to fetch this
        [coord] = {
            label=[string], -- label: text that'll be the label, optional
            item=[id], -- itemid
            quest=[id], -- will be checked, for whether character already has it
            currency=[id], -- currencyid
            achievement=[id], -- will be shown in the tooltip
            junk=[bool], -- doesn't count for achievement
            npc=[id], -- related npc id, used to display names in tooltip
            note=[string], -- some text which might be helpful
            hide_before=[id], -- hide if quest not completed
        },
    },
    --]]
    [862] = { -- Zuldazar
        [43007400] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [45002500] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [49883970] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [54609063] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [59007700] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [64792940] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [67001700] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [70006200] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [73712645] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [83643917] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
    },

    [863] = { -- Nazmir
        [20546109] = {["label"] = "Boiling Cauldron", ["cont"] = true,},    
        [33006700] = {["label"] = "Boiling Cauldron, Entrance", ["cont"] = true,},
        [34098598] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [38005100] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [40006300] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [41802879] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [46004900] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [53427079] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [55615682] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [63005900] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [76003600] = {["label"] = "Boiling Cauldron", ["cont"] = true,}, 
    },

    [864] = { -- Vol'dun
        [30035312] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [34817984] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [37008900] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [40007500] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [41002800] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [43753430] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [47004600] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [48106702] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [49197804] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [57006400] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
    },

    [895] = { -- Tiragarde Sound
        [38742186] = {["label"] = "Boiling Cauldron Entrance", ["cont"] = true,},
        [53003400] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [55816776] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [58001400] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [61146163] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [67811887] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [70151401] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [76268262] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [85007500] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
    },

    [896] = { -- Drustvar
        --[19265426] = {["label"] = "Boiling Cauldron, bugged?", ["cont"] = true,},
        [24605690] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [24953718] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [29752758] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [30805010] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [31211734] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        --[33255758] = {["label"] = "Boiling Cauldron, bugged?", ["cont"] = true,},
        [51262126] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [56193815] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [57872355] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [64093109] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [68636391] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
    },
    
    [942] = { -- Stormsong Valley
        [22007300] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [29227589] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [37005300] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [48006600] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [50005600] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [59004100] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [67006000] = {["label"] = "Boiling Cauldron", ["cont"] = true,},
        [76592831] = {["label"] = "Boiling Cauldron", ["cont"] = true,},      
    },
    [1183] = { -- Thornheart
    },
    [1161] = { -- Boralus
    },
    [1165] = { -- Dazar'alor
    },
}
