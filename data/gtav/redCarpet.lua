local object = {
    ipl = 'redCarpet',
}

function object:enable(state)
    EnableIpl(self.ipl, state)
end

exports('GetRedCarpetObject', function()
    return object
end)

return object