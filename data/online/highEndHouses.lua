-- -169.286 486.4938 137.4436 (3655 Wild Oats Drive)
-- 340.9412 437.1798 149.3925 (2044 North Conker Avenue)
-- 373.023 416.105 145.7006 (2045 North Conker Avenue)
-- -676.127 588.612 145.1698 (2862 Hillcrest Avenue)
-- -763.107 615.906 144.1401 (2868 Hillcrest Avenue)
-- -857.798 682.563 152.6529 (2874 Hillcrest Avenue)
-- 120.5 549.952 184.097 (2677 Whispymound Drive)
-- -1288 440.748 97.69459 (2133 Mad Wayne Thunder)
local object = {
    interior = {
        interiorIds = {
            houseHi1 = 207105,
            houseHi2 = 206081,
            houseHi3 = 206337,
            houseHi4 = 208129,
            houseHi5 = 207617,
            houseHi6 = 207361,
            houseHi7 = 206593,
            houseHi8 = 208385,
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
    self.interior.strip:enable(self.interior.interiorIds.houseHi1, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.houseHi1, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.houseHi1, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.houseHi1)

    self.interior.strip:enable(self.interior.interiorIds.houseHi2, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.houseHi2, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.houseHi2, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.houseHi2)

    self.interior.strip:enable(self.interior.interiorIds.houseHi3, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.houseHi3, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.houseHi3, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.houseHi3)

    self.interior.strip:enable(self.interior.interiorIds.houseHi4, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.houseHi4, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.houseHi4, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.houseHi4)

    self.interior.strip:enable(self.interior.interiorIds.houseHi5, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.houseHi5, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.houseHi5, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.houseHi5)

    self.interior.strip:enable(self.interior.interiorIds.houseHi6, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.houseHi6, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.houseHi6, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.houseHi6)

    self.interior.strip:enable(self.interior.interiorIds.houseHi7, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.houseHi7, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.houseHi7, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.houseHi7)

    self.interior.strip:enable(self.interior.interiorIds.houseHi8, self.interior.strip.stages, false, true)
    self.interior.booze:enable(self.interior.interiorIds.houseHi8, self.interior.booze.stages, false, true)
    self.interior.smoke:enable(self.interior.interiorIds.houseHi8, self.interior.smoke.stages, false, true)

    RefreshInterior(self.interior.interiorIds.houseHi8)
end

exports('GetHighEndHousesObject', function()
    return object
end)

return object