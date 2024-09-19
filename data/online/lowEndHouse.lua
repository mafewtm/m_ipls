local object = {
    interior = {
        id = 149761,
        strip = {
            stages = {
                'studio_lo_strip_a',
                'studio_lo_strip_b',
                'studio_lo_strip_c',
            },
        },
        booze = {
            stages = {
                'studio_lo_booze_a',
                'studio_lo_booze_b',
                'studio_lo_booze_c',
            },
        },
        smoke = {
            stages = {
                'studio_lo_smoke_a',
                'studio_lo_smoke_b',
                'studio_lo_smoke_c',
            },
        },
    }
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

exports('GetLowEndHousesObject', function()
    return object
end)

return object