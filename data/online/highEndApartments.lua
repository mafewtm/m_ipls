-- -35.31277 -580.4199 88.71221 (4 Integrity Way, Apt 30)
-- 1477.14 -538.7499 55.5264 (Dell Perro Heights, Apt 7)
local object = {
    interior = {
        interiorIds = {
            apartmentHi1 = 141313,
            apartmentHi2 = 141314,
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
    self.interior.strip:enable(self.interior.interiorIds.apartmentHi1, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.apartmentHi1, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.apartmentHi1, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.apartmentHi1)

    self.interior.strip:enable(self.interior.interiorIds.apartmentHi2, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.apartmentHi2, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.apartmentHi2, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.apartmentHi2)
end

exports('GetHighEndApartmentsObject', function()
    return object
end)

return object