local object = {
    ipl = {
        'ch3_rd2_bizzarecrumhorngraffiti', -- 1861.28, 2402.11, 58.53
        'ch3_rd2_bizzarecrumhorngraffiti2', -- 2697.32, 3162.18, 58.1
        'ch3_rd2_bizzarecrumhorngraffiti3' -- 2119.12, 3058.21, 53.25
    },
}

function object:enable(state)
    EnableIpl(self.ipl, state)
end

exports('GetGraffitisObject', function()
    return object
end)

return object