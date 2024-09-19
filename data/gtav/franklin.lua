local object = {
    interior = {
        id = 206849,
        style = {
            unpacking = 'franklin_unpacking',
            settled = 'franklin_settled',
            empty = 'showhome_only',
        },
        glassDoor = {
            opened = 'unlocked',
            closed = 'locked',
        },
        props = {
            flyer = 'progress_flyer', -- Mountain flyer on the kitchen counter
            tux = 'progress_tux', -- Tuxedo suit in the wardrobe
            tshirt = 'progress_tshirt', -- 'I <3 LS' tshirt on the bed
            bong = 'bong_and_wine', -- Bong on the table
        },
    }
}

---@param refresh boolean Whether to refresh or not
function object.interior.style:clear(refresh)
    SetIplPropState(object.interior.id, {
        self.empty,
        self.unpacking,
        self.settled
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

---@param refresh boolean Whether to refresh or not
function object.interior.glassDoor:clear(refresh)
    SetIplPropState(object.interior.id, {
        self.opened,
        self.closed,
    }, false, refresh)
end

---@param door string Type of style to set
---@param refresh boolean Whether to refresh or not
function object.interior.glassDoor:set(door, refresh)
    self:clear(false)

    SetIplPropState(object.interior.id, door, true, refresh)
end

---@param prop string Type of prop to set
---@param state boolean Whether to enable or disable
---@param refresh boolean Whether to refresh or not
function object.interior.props:enable(prop, state, refresh)
    SetIplPropState(object.interior.id, prop, state, refresh)
end

function object:loadDefault()
    self.interior.style:set('', false)
    self.interior.glassDoor:set(self.interior.glassDoor.opened, true)
    self.interior.props:enable(self.interior.props.flyer, false, true)
    self.interior.props:enable(self.interior.props.tux, false, true)
    self.interior.props:enable(self.interior.props.tshirt, false, true)
    self.interior.props:enable(self.interior.props.bong, false, true)

    RefreshInterior(self.interior.id)
end

exports('GetFranklinObject', function()
    return object
end)

return object