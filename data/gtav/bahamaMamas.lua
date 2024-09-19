local object = {
    ipl = 'hei_sm_16_interior_v_bahama_milo_',
}

---@param state boolean Whether to enable or disable the IPL
function object:enable(state)
    EnableIpl(self.ipl, state)
end

exports('GetBahamaMamasObject', function()
    return object
end)

return object