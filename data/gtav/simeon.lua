local object = {
    ipl = {
        name = 'shr_int',
    },
    interior = {
        id = 7170,
        style = {
            normal = 'csr_beforeMission',
            noGlass = 'csr_inMission',
            destroyed = 'csr_afterMissionA',
            fixed = 'csr_afterMissionB',
        },
        shutter = {
            opened = 'shutter_open',
            closed = 'shutter_closed',
        },
    },
}

function object.ipl:load()
    EnableIpl(self.name, true)
end

function object.ipl:remove()
    EnableIpl(self.name, false)
end

---@param style string Type of style to set
---@param refresh boolean Whether to refresh or not
function object.interior.style:set(style, refresh)
    self:clear(false)

    SetIplPropState(object.interior.id, style, true, refresh)
end

---@param refresh boolean Whether to refresh or not
function object.interior.style:clear(refresh)
    SetIplPropState(object.interior.id, {
        self.normal,
        self.noGlass,
        self.destroyed,
        self.fixed
    }, false, refresh)
end

---@param style string Type of style to set
---@param refresh boolean Whether to refresh or not
function object.interior.shutter:set(style, refresh)
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
function object.interior.shutter:clear(refresh)
    SetIplPropState(object.interior.id, {
        self.opened,
        self.closed
    }, false, refresh)
end

function object:loadDefault()
    self.ipl:load()
    self.interior.style:set(self.interior.style.normal, false)
    self.interior.shutter:set(self.interior.shutter.opened, true)

    RefreshInterior(self.interior.id)
end

exports('GetSimeonObject', function()
    return object
end)

return object