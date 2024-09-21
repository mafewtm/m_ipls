local object = {
    ammunationIds = {
        140289, -- 249.8, -47.1, 70.0
        153857, -- 844.0, -1031.5, 28.2
        168193, -- -664.0, -939.2, 21.8
        164609, -- -1308.7, -391.5, 36.7
        176385, -- -3170.0, 1085.0, 20.8
        175617, -- -1116.0, 2694.1, 18.6
        200961, -- 1695.2, 3756.0, 34.7
        180481, -- -328.7, 6079.0, 31.5
        178689, -- 2569.8, 297.8, 108.7
    },
    gunClubIds = {
        137729, -- 19.1, -1110.0, 29.8
        248065, -- 811.0, -2152.0, 29.6
    },
    hooks = {
        store = 'GunStoreHooks', -- Hooks for gun displaying
        club = 'GunClubWallHooks', -- Hooks for gun displaying
    },
}

---@param id integer | integer[] Name(s) of the interior(s) to enable/disable
---@param hook string | string[] Name(s) of the IPL(s) to enable/disable
---@param state boolean Whether to enable or disable the IPL
---@param refresh boolean Whether to refresh the IPL
function object:enable(id, hook, state, refresh)
    SetIplPropState(id, hook, state, refresh)
end

function object:loadDefault()
    self:enable(self.ammunationIds,self.hooks.store, true, true)
    self:enable(self.gunClubIds,self.hooks.club, true, true)
end

exports('GetAmmunationsObject', function()
    return object
end)

return object