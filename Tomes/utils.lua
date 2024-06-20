-- Various pre-made strings
Br = "<br>" --break
Nbullet = "* " 
Nl = "\n" --new line
Rs = "| "
Rss = " || "
Hd = "! "


Survivors = {
	[1]  = "Dwight",
	[2]  = "Meg",
	[3]  = "Claudette",
	[4]  = "Jake",
	[5]  = "Nea",
	[6]  = "Laurie",
	[7]  = "Ace",
	[8]  = "Bill",
	[9]  = "Feng",
	[10] = "David",
	[11] = "Quentin",
	[12] = "Tapp",
	[13] = "Kate",
	[14] = "Adam",
	[15] = "Jeff",
	[16] = "Jane",
	[17] = "Ash",
	[18] = "Nancy",
	[19] = "Steve",
	[20] = "Yui",
	[21] = "Zarina",
	[22] = "Cheryl",
	[23] = "Felix",
	[24] = "Elodie",
	[25] = "Yun-Jin",
	[26] = "Jill",
	[27] = "Leon",
	[28] = "Mikaela",
	[29] = "Jonah",
	[30] = "Yoichi",
	[31] = "Haddie",
	[32] = "Ada",
	[33] = "Rebecca",
	[34] = "Vittorio",
	[35] = "Thalita",
	[36] = "Renato",
	[37] = "Gabriel",
	[38] = "Nicolas",
	[39] = "Ellen",
	[40] = "Alan",
	[41] = "Sable",
	[42] = "Aestri Yazar & Baermar Uraz"
}

Killers = {
    [1] = "trapper",
    [2] = "wraith",
    [3] = "hillbilly",
    [4] = "nurse",
    [5] = "shape",
    [6] = "hag",
    [7] = "doctor",
    [8] = "huntress",
    [9] = "cannibal",
    [10] = "nightmare",
    [11] = "pig",
    [12] = "clown",
    [13] = "spirit",
    [14] = "legion",
    [15] = "plague",
    [16] = "ghost face",
    [17] = "demogorgon",
    [18] = "oni",
    [19] = "deathslinger",
    [20] = "executioner",
    [21] = "blight",
    [22] = "twins",
    [23] = "trickster",
    [24] = "nemesis",
    [25] = "cenobite",
    [26] = "artist",
    [27] = "onryō",
    [28] = "dredge",
    [29] = "mastermind",
    [30] = "knight",
    [31] = "skull merchant",
    [32] = "singularity",
    [33] = "xenomorph",
    [34] = "good guy",
    [35] = "unknown",
    [36] = "lich",
    
}


TableStrings = {
    ["1"]  = "<big>{{#Invoke:Utils|clr|14|COMMUNITY CHALLENGES}}</big>",
    ["2"]  = "<big>REGULAR CHALLENGES</big>",
    ["5"]  = "<big>{{#Invoke:Utils|clr|10|MASTER CHALLENGES}}</big>",
    ["8"]  = "<big>{{#Invoke:Utils|clr|21|CORE MEMORY CHALLENGES}}</big>",
    ["9"]  = "<big>{{#Invoke:Utils|clr|15|GLYPH CHALLENGES}}</big>",
    ["10"] = "<big>{{#Invoke:Utils|clr|5|REWARD NODES}}</big>",

    ["openTable"] = '{| class="wikitable"' .. Nl ..
    '|-' .. Nl ..
    '! rowspan="2" | Challenge' .. Nl ..
    '! rowspan="2" | Task' .. Nl ..
    '! rowspan="2" | Character' .. Nl,
    ["Bloodpoints"]        = "[[File:IconCurrency bloodpoints.png|32px]]",
    ["RiftFragments"]      = "[[File:RiftFragments.png|32px]]",
    ["archivesCollection"] = "[[File:IconHelp archivesCollection.png|32px]]",
    ["archivesMemory"]     = "[[File:IconHelp archivesMemory.png|32px]]",
    ["MemoryShard"]        = "[[File:ChallengeIcon memoryShard_terrifyingAnamnesis.png]]"
}

Icons = {
    [1]            = "[[File:ChallengeIcon community.png|64px]]",
    [2]            = "[[File:ChallengeIcon survivor.png|64px]]",
    [3]            = "[[File:ChallengeIcon killer.png|64px]]",
    [4]            = "[[File:ChallengeIcon survivorKiller.png|64px]]",
    [5]            = "[[File:ChallengeIcon survivor.png|64px]]",
    [6]            = "[[File:ChallengeIcon killer.png|64px]]",
    [7]            = "[[File:ChallengeIcon survivorKiller.png|64px]]",
    [8]            = "[[File:QuestIcons fragment.png|64px]]",
    [9] = {
        ["red"]    = "[[File:ChallengeIcon redGlyph.png]]",
        ["blue"]   = "[[File:ChallengeIcon blueGlyph.png]]",
        ["yellow"] = "[[File:ChallengeIcon yellowGlyph.png]]",
        ["purple"] = "[[File:ChallengeIcon purpleGlyph.png]]",
        ["white"]  = "[[File:ChallengeIcon whiteGlyph.png]]",
        ["green"]  = "[[File:ChallengeIcon greenGlyph.png]]",
        ["orange"] = "[[File:ChallengeIcon orangeGlyph.png]]",
        ["pink"]   = "[[File:ChallengeIcon pinkGlyph.png]]"
    },
    [10] = { --Event Currencies
    ["DT"]     = "[[File:IconCurrency darkTrinkets.png|32px]]",
    ["FT"]     = "[[File:IconCurrency frostyTrinkets.png|32px]]",
    ["TT"]     = "[[File:IconCurrency thromboticTrinkets.png|32px]]",
    ["GT"]     = "[[File:IconCurrency twistedTrinkets.png|32px]]"
    },
    [11] = { --Archive icons
        [1]        = "[[File:IconHelp archivesLog.png|32px]]",
        [2]        = "[[File:IconHelp archivesMemory.png|32px]]",
    }
}


-- local file = io.open("./TomeOutput.txt", "w") -- Opens a file in write mode
-- if file then
--     for i = 1, #killers, 1 do
--         file:write("{id = ".. killers[i].id ..", name = " .. '"' .. string.lower(killers[i].name) .. '"' .. "},\n")
--     end
-- else
--     print("Error opening file.")
-- end
