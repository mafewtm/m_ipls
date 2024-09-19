local object = {
    interior = {
        id = 148225,
        strip = {
            stages = {
                'apart_mid_strip_a',
                'apart_mid_strip_b',
                'apart_mid_strip_c',
            },
        },
        booze = {
            stages = {
                'apart_mid_booze_a',
                'apart_mid_booze_b',
                'apart_mid_booze_c',
            }
        },
        smoke = {
            stages = {
                'apart_mid_smoke_a',
                'apart_mid_smoke_b',
                'apart_mid_smoke_c',
            }
        },
    },
}

---@param details string | string[] Name(s) of the prop(s) to enable/disable
---@param state boolean Whether to enable or disable the prop
---@param refresh boolean Whether to refresh the interior
function object.interior.strip:enable(details, state, refresh)
    SetIplPropState(object.interior.id, details, state, refresh)
end

---@param details string | string[] Name(s) of the prop(s) to enable/disable
---@param state boolean Whether to enable or disable the prop
---@param refresh boolean Whether to refresh the interior
function object.interior.booze:enable(details, state, refresh)
    SetIplPropState(object.interior.id, details, state, refresh)
end

function object.interior.smoke:clear(refresh)
    SetIplPropState(object.interior.id, self.stages, false, refresh)
end

function object.interior.smoke:set(smoke, refresh)
    self:clear(false)

    if not smoke then
        SetIplPropState(object.interior.id, smoke, true, refresh)
        return
    end

    if refresh then
        RefreshInterior(object.interior.id)
    end
end

function object:loadDefault()
    self.interior.strip:enable(self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.booze.stages, false, true)
    self.interior.smoke:set('', true)

    RefreshInterior(self.interior.id)
end

exports('GetMidEndHousesObject', function()
    return object
end)

return object