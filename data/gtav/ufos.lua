local object = {
    hippie = {
        ipl = 'ufo',
    },
    chiliad = {
        ipl = 'ufo_eye',
    },
    zancudo = {
        ipl = 'ufo_lod',
    }
}

---@param state boolean Whether to enable or disable
function object.hippie:enable(state)
    EnableIpl(self.ipl, state)
end

---@param state boolean Whether to enable or disable
function object.chiliad:enable(state)
    EnableIpl(self.ipl, state)
end

---@param state boolean Whether to enable or disable
function object.zancudo:enable(state)
    EnableIpl(self.ipl, state)
end

exports('GetUFOObject', function()
    return object
end)

return object