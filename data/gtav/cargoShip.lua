local object = {
    style = {
        normal = {
            'cargoship',
            'ship_occ_grp1'
        },
        sunk = {
            'sunkcargoship',
            'ship_occ_grp2'
        },
    },
}

function object.style:clear()
    EnableIpl({
        self.normal,
        self.sunk
    }, false)
end

---@param style string | table Type of style to set
---@param state boolean Whether to enable or disable
function object.style:set(style, state)
    self:clear()

    EnableIpl(style, state)
end

function object:loadDefault()
    self.style:set(self.style.normal, false)
end

exports('GetCargoShipObject', function()
    return object
end)

return object