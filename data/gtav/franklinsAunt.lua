local object = {
    interior = {
        id = 197889,
        style = {
            stuff = 'V_57_FranklinStuff',
            left = 'V_57_Franklin_LEFT',
        },
        props = {
            bandana = 'V_57_GangBandana', -- Bandana on the bed
            bag = 'V_57_Safari', -- Bag in the closet
        },
    },
}

---@param refresh boolean Whether to refresh or not
function object.interior.style:clear(refresh)
    SetIplPropState(object.interior.id, {
        self.stuff,
        self.left
    }, false, refresh)
end

---@param style string Type of style to set
---@param refresh boolean Whether to refresh or not
function object.interior.style:set(style, refresh)
    if not style then
        style = ''
    end

    self:clear(false)

    if style ~= '' then
        SetIplPropState(object.interior.id, style, true, refresh)
        return
    end

    if refresh then
        RefreshInterior(object.interior.id)
    end
end

---@param prop string Type of prop to set
---@param state boolean Whether to enable or disable
---@param refresh boolean Whether to refresh or not
function object.interior.props:enable(prop, state, refresh)
    SetIplPropState(object.interior.id, prop, state, refresh)
end

function object:loadDefault()
    self.interior.style:set('', false)
    self.interior.props:enable(self.interior.props.bandana, false, true)
    self.interior.props:enable(self.interior.props.bag, false, true)

    RefreshInterior(self.interior.id)
end

exports('GetFranklinsAuntObject', function()
    return object
end)

return object