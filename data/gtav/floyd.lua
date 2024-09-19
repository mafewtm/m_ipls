local object = {
    interior = {
        id = 171777,
        style = {
            normal = {
                'swap_clean_apt',
                'layer_debra_pic',
                'layer_whiskey',
                'swap_sofa_A'
            },
            messedUp = {
                'layer_mess_A',
                'layer_mess_B',
                'layer_mess_C',
                'layer_sextoys_a',
                'swap_sofa_B',
                'swap_wade_sofa_A',
                'layer_wade_shit',
                'layer_torture'
            },
        },
        mrJam = {
            normal = 'swap_mrJam_A',
            jammed = 'swap_mrJam_B',
            jammedOnTable = 'swap_mrJam_C',
        }
    },
}

---@param refresh boolean Whether to refresh or not
function object.interior.style:clear(refresh)
    local styles = lib.array.merge(self.normal, self.messedUp)

    SetIplPropState(object.interior.id, styles, false, refresh)
end

---@param style string | table Type of style to set
---@param refresh boolean Whether to refresh or not
function object.interior.style:set(style, refresh)
    self:clear(false)

    SetIplPropState(object.interior.id, style, true, refresh)
end

---@param refresh boolean Whether to refresh or not
function object.interior.mrJam:clear(refresh)
    SetIplPropState(object.interior.id, {
        self.normal,
        self.jammed,
        self.jammedOnTable
    }, false, refresh)
end

---@param style string Type of style to set
---@param refresh boolean Whether to refresh or not
function object.interior.mrJam:set(style, refresh)
    self:clear(false)

    SetIplPropState(object.interior.id, style, true, refresh)
end

function object:loadDefault()
    self.interior.style:set(self.interior.style.normal, false)
    self.interior.mrJam:set(self.interior.mrJam.normal, false)

    RefreshInterior(self.interior.id)
end

exports('GetFloydObject', function()
    return object
end)

return object