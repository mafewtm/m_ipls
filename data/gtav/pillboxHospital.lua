local object = {
    ipl = 'rc12b_default',
}

function object:enable(state)
    EnableIpl(self.ipl, state)
end

exports('GetPillboxHospitalObject', function()
    return object
end)

return object