require("utils")

challenges = {
    -- 1  = Community Challenge
    -- 2  = Survivor Challenge        
    -- 3  = Killer Challenge
    -- 4 = Survivor / Killer Challenge
    -- 5 = Survivor Master Challenge (if char specific, add char = id)
    -- 6 = Killer Master Challenge (if char specific, add char = id)
    -- 7 = Survivor / Killer Master Challenge
    -- 8  = Core Memory Challenge (Memory Shards)
    -- 9  = Glyph Challenge (add glyph = "colour")
    -- 10  = Reward Node (Upon consuming, rewards something like gilded tokens)
    -- Rewards:
    --         BP = "XX,000" -Rewards XX,000 Bloodpoints
    --         RF = X        -Rewards X Rift Fragments (if Tome is current rift)
    --         EC = X        -Event Currency (will come back to this)
    --         Archive = 0   -Rewards nothing 
    --         Archive = 1   -Rewards a Log
    --         Archive = 2   -Rewards a Memory
    -- {name = "", type = "", char = int, glyph = "", rewards = {BP = "", RF = int, Archive = int}, desc = ""}

    ["Reckoning"] = {
        ["L1"] = {

            {name = "Shining Light", type = 2, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Earn '''{{#Invoke:Utils|clror|5}} {{#Invoke:Utils|IconLink|Lightbringer}} Emblems''' of '''{{#Invoke:Utils|clr|25|Bronze Quality}}''' or better.<br>(Requires at least {{#Invoke:Utils|clro|5}} Trials to complete."},

            {name = "Protect Forever", type = 4, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Complete either of the following actions for a total of '''{{#Invoke:Utils|clror|5 times}}''' in a single Trial, while having {{#Invoke:Utils|IconLink|We're Gonna Live Forever}} equipped:" .. Nl ..
            Nbullet .. "Unhook a Survivor." .. Nl ..
            Nbullet .. "Take a ''Protection Hit''."},

            {name = "Liberator", type = 2, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Safely unhook Survivors a total of '''{{#Invoke:Utils|clror|5 times}}'''."},

            {name = "Go For Broke", type = 2, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Sabotage '''Hooks''' a total of '''{{#Invoke:Utils|clror|10 times}}'''."},

            {name = "Poised Performance", type = 4, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Safely unhook Survivors a total of '''{{#Invoke:Utils|clror|5 times}}'''."},

            {name = "Jane's Victory", type = 4, char = 16, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Playing as '''Jane Romero''', stun the Killer '''{{#Invoke:Utils|clror|1 time}}'''."},

            {name = "The Last Place You Look", type = 2, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Search '''Chests''' a total of '''{{#Invoke:Utils|clror|6 times}}'''."},

            {name = "Craft Time's Over", type = 2, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Cleanse '''Totems''' a total of '''{{#Invoke:Utils|clror|12 times}}'''."},

            {name = "David's Protection", type = 4, char = 10, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Playing as '''David King''', take a ''Protection Hit'' '''{{#Invoke:Utils|clror|1 time}}'''."},

            {name = "Escape Artist", type = 2, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Escape Trials a total of '''{{#Invoke:Utils|clror|2 times}}'''."},

            {name = "Dead Hardy", type = 4, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Avoid ''Basic Attacks'' from the Killer '''{{#Invoke:Utils|clror|1 time}}''', while having {{#Invoke:Utils|IconLink|Dead Hard}} equipped."},

            {name = "Silver Hero", type = 4, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Playing as a Survivor, earn '''{{#Invoke:Utils|clror|2}} Emblems''' of '''{{#Invoke:Utils|clr|7|Silver Quality}}''' or higher in a single Trial."},

            {name = "Bring The Light", type = 2, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Complete repairs on '''Generators''' a total of '''{{#Invoke:Utils|clror|4 times}}'''."},

            {name = "Spilling Blood", type = 3, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Earn '''{{#Invoke:Utils|clror|5}} {{#Invoke:Utils|IconLink|Devout}} Emblems''' of '''{{#Invoke:Utils|clr|25|Bronze Quality}}''' or higher."},

            {name = "Gruesome", type = 3, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Hook Survivors a total of '''{{#Invoke:Utils|clror|20 times}}'''.<br>(Requires at least {{#Module:Utils|clro|2}}) Trials to complete."},

            {name = "Take Charge", type = 6, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Damage '''Generators''' a total of '''{{#Invoke:Utils|clror|4 times}}''' in a single Trial, while having {{#Invoke:Utils|IconLink|Overcharge}} equipped."},

            {name = "Mad About You", type = 6, char = 7, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Playing as '''The Doctor''', inflict the '''''Madness I'' Status Effect''' on '''{{#Invoke:Utils|clror|2}}''' different Survivors in a single Trial."},

            {name = "Sealed Shut", type = 6, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Close the '''Hatch {{#Invoke:Utils|clror|1 time}}'''."},

            {name = "Execution", type = 3, rewards = {BP = 15000, RF = 3, Archive = 0},
            desc = "Kill Survivors by any means a total of {{#Invoke:Utils|clror|10 times}}'''.<br> (Requires at least {{#Module:Utils|clro|3}}) Trials to complete."},

            {name = "Phase Warrior", type = 6, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Playing as '''The Spirit''', Hit Survivors just after ''phasing'' {{#Invoke:Utils|clror|1 time}}'''."},

            {name = "Silver Blade", type = 6, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Playing as a Killer, earn '''{{#Invoke:Utils|clror|2}} Emblems''' of '''{{#Invoke:Utils|clr|7|Silver Quality}}''' or higher in a single Trial."},

            {name = "Bronze Age", type = 4, rewards = {BP = 25000, RF = 5, Archive = 1},
            desc = "Earn '''Emblems''' of '''{{#Invoke:Utils|clr|25|Bronze Quality}}''' or higher a total of '''{{#Invoke:Utils|clror|15 times}}'''."}
        }
    },
    ["EventTome"] = {
        ["L1"] = {
            {name = "Test Challenge", type = 2, rewards = {BP = 25000, RF = 5, Archive = 2, EC = {currency = "GT", value = 100}},
            desc = "Consume this node for some event currency idk"},
            {name = "{{#Invoke:Utils|clr|24|Gilded Trinkets}}<br>[[File:IconCurrency twistedTrinkets.png|64px]]", type = 10, rewards = {},
            desc = "Consume {{#Invoke:Utils|clror|1}} Node for {{#Invoke:Utils|clro|100}} '''Gilded Trinkets'''."}
        }
    }
}