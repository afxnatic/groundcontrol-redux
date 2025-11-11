-- this system allows you to register maps that should be added to the download list upon switching to it

GM.AutoDownloadMap = {}

function GM:RegisterAutoDownloadMap(mapName, workshopID)
    self.AutoDownloadMap[mapName] = tostring(workshopID)
end

function GM:GetAutoDownloadMapID(mapName)
    return self.AutoDownloadMap[mapName] or "No Workshop ID found"
end

function GM:VerifyAutoDownloadMap()
    local map = string.lower(game.GetMap())

    if self.AutoDownloadMap[map] then
        resource.AddWorkshop(self.AutoDownloadMap[map])
    end
end

GM:RegisterAutoDownloadMap("cs_jungle", "123379735")
GM:RegisterAutoDownloadMap("cs_siege_2010", "531654625")
GM:RegisterAutoDownloadMap("de_desert_atrocity_v3", "242494243")
GM:RegisterAutoDownloadMap("gc_outpost", "607623397")
GM:RegisterAutoDownloadMap("de_shanty_v3_fix", "528435972")
GM:RegisterAutoDownloadMap("de_secretcamp", "296555359")

--GM:RegisterAutoDownloadMap("gm_bay", "104484764")
-- example usage: GM:RegisterAutoDownloadMap("gm_some_map", "workshopID")
-- the workshop ID is numeric, ie 104484764, but has to be passed as a string, ie "104484764"