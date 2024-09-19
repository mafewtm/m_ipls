local object = {
    interior = {
        id = 197121,
        mess = 'V_19_Trevor_Mess',
    },
}

function object.interior:enable(state)
    SetIplPropState(object.interior.id, self.mess, state, true)
end

function object:loadDefault()
    self.interior:enable(false)
end

exports('GetStripClubObject', function()
    return object
end)

return object