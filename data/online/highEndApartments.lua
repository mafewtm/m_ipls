local object = {
    interior = {
        interiorIds = {
            141313, -- -35.31277 -580.4199 88.71221 (4 Integrity Way, Apt 30)
            141314, -- 1477.14 -538.7499 55.5264 (Dell Perro Heights, Apt 7)
        },
        strip = {
            stages = {
                a = 'apart_hi_strip_a',
                b = 'apart_hi_strip_b',
                c = 'apart_hi_strip_c',
            },
        },
        booze = {
            stages = {
                a = 'apart_hi_booze_a',
                b = 'apart_hi_booze_b',
                c = 'apart_hi_booze_c',
            },
        },
        smoke = {
            stages = {
                a = 'apart_hi_smokes_a',
                b = 'apart_hi_smokes_b',
                c = 'apart_hi_smokes_c',
            },
        },
    },
}

---@param id integer | integer[] Name(s) of the interior(s) to enable/disable
---@param details string | string[] Name(s) of the prop(s) to enable/disable
---@param state boolean Whether to enable or disable the prop
---@param refresh boolean Whether to refresh the interior
function object.interior.strip:enable(id, details, state, refresh)
    SetIplPropState(id, details, state, refresh)
end

---@param id integer | integer[] Name(s) of the interior(s) to enable/disable
---@param details string | string[] Name(s) of the prop(s) to enable/disable
---@param state boolean Whether to enable or disable the prop
---@param refresh boolean Whether to refresh the interior
function object.interior.booze:enable(id, details, state, refresh)
    SetIplPropState(id, details, state, refresh)
end

---@param id integer | integer[] Name(s) of the interior(s) to enable/disable
---@param details string | string[] Name(s) of the prop(s) to enable/disable
---@param state boolean Whether to enable or disable the prop
---@param refresh boolean Whether to refresh the interior
function object.interior.smoke:enable(id, details, state, refresh)
    SetIplPropState(id, details, state, refresh)
end

function object:loadDefault()
    for i = 1, #self.interior.interiorIds do
        local interiodId = self.interior.interiorIds[i]

        self.interior.strip:enable(interiodId, self.interior.strip.stages, false, true)
        self.interior.booze:enable(interiodId, self.interior.booze.stages, false, true)
        self.interior.smoke:enable(interiodId, self.interior.smoke.stages, false, true)

        RefreshInterior(interiodId)
    end
end

exports('GetHighEndApartmentsObject', function()
    return object
end)

return object