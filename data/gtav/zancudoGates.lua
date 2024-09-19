local object = {
    ipl = 'CS3_07_MPGates',
}

function object:open()
    EnableIpl(self.ipl, false)
end

function object:close()
    EnableIpl(self.ipl, true)
end

function object:loadDefault()
    self:open()
end

exports('GetZancudoGatesObject', function()
    return object
end)

return object