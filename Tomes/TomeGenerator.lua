require("utils")
require("challenges")

local function getData(tome, level)
    local call = challenges[tostring(tome)][tostring(level)]
    if call then
        return call
    else
        error("No data available in table")
    end
end

local function getCLR(data,currency)
    if data.rewards[currency] == data.RR[currency].value then
        return data.RR[currency].clr
    else
        return 3
    end
end


local function len(table) local count = 0; for _ in pairs(table) do count = count + 1 end return count end

local function filterByType(data, type)
    local temp, result = {},{}
    for _, row in pairs(data) do
        if row.type == type then -- Is it the challenges we're after?
            if row.char ~= nil then -- Does it have a char value? (I.E. Challenge for a specific survivor / killer)
                if temp[row.char] == nil then temp[row.char] = {id = row.char} end
                table.insert(temp[row.char], row)
            else

                if temp[0] == nil then temp[0] = {id = 1} end
                table.insert(temp[0], row) -- if not, add to 0th table
            end
        end
    end

    for _, Table in pairs(temp) do
        table.insert(result, Table)
    end
    table.sort(result, function (a, b) return a.id < b.id end)
    return result
end

local function rewardRarityCalc(data)
    local rewardRarity = {
        ["EC"] = {value = 0, clr = "4"},
        ["BP"] = {value = 0, clr = "4"},
        ["RF"] = {value = 0, clr = "4"}
    }
    for _, row in pairs(data) do
        for key,value in pairs(row.rewards) do
            if rewardRarity[key] ~= nil then
                value = (type(value) == "table" and value["value"]) or value
                if tonumber(value) > rewardRarity[key].value then
                    rewardRarity[key].value = tonumber(value)
                end
            end
        end
    end
    return rewardRarity
end

local function assembleTableRow(data, isHeading, isRewardIcons, isRewardNode)
    -- data: table {type= "", char = "", glyph = "", heading="", desc="", rewards={}, RR = {}, colspan="" }
    -- isHeading: bool
    -- isRewardIcons: bool (for the icons below Completion Rewards)
    local returnString = "|-\n"

    if isHeading then -- for the headings (COMMUNITY CHALLENGES, REGULAR CHALLENGES, exc.)
        return returnString .. '! colspan="' .. data.colspan ..'" | '.. data.heading .. Nl
    
    elseif isRewardIcons then -- icons  that comes after Completion Rewards
        local ECurrency = " !! " 
        local comReward = '! colspan="'.. data.colspan .. '" | Completion Rewards\n'

        if data.rewards.EC then
            ECurrency = ECurrency .. Icons[10][data.rewards.EC.currency] .. " !! "
        end
        return comReward .. returnString .. Hd .. '[[File:RiftFragments.png|32px]] !! [[File:BloodpointsIcon2.png|32px]]' .. ECurrency .. '[[File:IconHelp archivesCollection.png|32px]]' .. Nl
    
    elseif isRewardNode then
        return returnString .. Hd .. data.heading .. Nl .. '| colspan="' .. data.colspan .. '" | ' .. data.desc .. Nl
    else
        -- Using type, get icon for the challenge
        local icon = Icons[data.type]
        if type(icon) ~= "string" then -- If it isn't a string, it has to be a glyph; 8 will return a table.
            icon = icon[data.glyph]
        end

        local BloodPoints = "'''{{#Invoke:Utils|clr|" .. getCLR(data,"BP") .. "|" .. string.sub(data.rewards.BP,1,2) .. ",000" .. "}}'''"
        local RiftFragments = "'''{{#Invoke:Utils|clr|" .. getCLR(data,"RF") .. "|" .. data.rewards.RF .. "}}'''"
        
        local EventCurrency = ""
        if data.rewards.EC then
            EventCurrency = "'''{{#Invoke:Utils|clr|" .. getCLR(data,"EC") .. "|" .. data.rewards.EC.value .. "}}'''" .. Rss
        end
        
        local archive = ""
        if data.rewards.Archive ~= 0 then
            archive = tostring(Icons[11][data.rewards.Archive])
        end

        return returnString .. Hd .. data.heading .. Nl .. Rs .. data.desc .. Nl .. Rs .. icon .. Rss .. RiftFragments .. Rss .. BloodPoints .. Rss .. EventCurrency ..  archive .. Nl
    end

end

local function assembleTable(tome, level)
    print("Assembling Table with following inputs: " .. tome .. ", " .. level)
    local success, result = pcall(getData,tome,level)
    if success then
        print("Data exists! Starting...")

        local file = io.open("./"..tome..level..".txt","w")
        if not file then
            return 0
        end

        local rewardRarity = rewardRarityCalc(result)

        local Colspan = 3 + len(result[1].rewards)
        local ECPresent = result[1].rewards.EC

        file:write(TableStrings["openTable"], assembleTableRow({rewards = {EC = ECPresent}, colspan = Colspan - 3},false,true))
        --following this order: Community -> Survivor -> Killer -> S/K -> Master Survivor -> Master Killer -> Master S/K -> Named Survivor -> Named Killer -> Glyph

        for challengeType = 1, 10, 1 do -- See challenges for order
            local filtered = filterByType(result, challengeType)
            if #filtered > 0 then
                print(TableStrings[tostring(challengeType)])
                if (type(TableStrings[tostring(challengeType)]) ~= "nil") then file:write(assembleTableRow({heading = TableStrings[tostring(challengeType)], colspan = Colspan},true)) end
                for _, group in pairs(filtered) do
                    for row = 1, #group do
                        local temp = group[row]
                        if challengeType ~= 10 then -- Type 10 entries are different, so they much be treated as such.
                            file:write(assembleTableRow({type = temp.type, heading = temp.name, desc = temp.desc, rewards = temp.rewards, RR = rewardRarity}))
                        else
                            file:write(assembleTableRow({heading = temp.name, desc = temp.desc, colspan = Colspan}, false, false, true))
                        end
                    end
                end
            end
        end

        file:write("|}")

    else print("No data!")
    end

end

assembleTable("EventTome","L1")

assembleTable("Reckoning","L1")
