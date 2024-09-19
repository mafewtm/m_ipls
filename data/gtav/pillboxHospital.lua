local object = {
    ipls = {
        default = 'rc12b_default',
        fixed = 'rc12b_fixed',
        destroyed = 'rc12b_destroyed', -- Destroyed and hospital interior need to be loaded at the same time
        interior = 'rc12b_interior',
    }
}

---@param ipl string Name of the IPL
---@param state boolean Whether to enable or disable
function object:enable(ipl, state)
    EnableIpl(ipl, state)
end

function object:clear()
    self:enable(self.ipls.default, false)
    self:enable(self.ipls.fixed, false)
    self:enable(self.ipls.destroyed, false)
    self:enable(self.ipls.interior, false)
end

function object:loadDefault()
    self:clear()

    self:enable(self.ipls.default, true)
end

exports('GetPillboxHospitalObject', function()
    return object
end)

return object