local object = {
    interior = {
        id = 92674,
        props = {
            bluePrint = 'V_53_Agency_Blueprint', -- Blueprint on the office desk
            bag = 'V_35_KitBag', -- Bag under the office desk
            fireMan = 'V_35_Fireman', -- Firemans helmets in the office
            armour = 'V_35_Body_Armour', -- Body armor in storage
            gasMask = 'Jewel_Gasmasks', -- Gas mask and suit in storage
            janitorStuff = 'v_53_agency _overalls', -- Janitor stuff in the storage (yes, there is a whitespace)
        },
    }
}

---@param prop string Type of prop to set
---@param state boolean Whether to enable or disable
---@param refresh boolean Whether to refresh or not
function object.interior.props:enable(prop, state, refresh)
    SetIplPropState(object.interior.id, prop, state, refresh)
end

function object:loadDefault()
    self.interior.props:enable(self.interior.props.bluePrint, false, false)
    self.interior.props:enable(self.interior.props.bag, false, false)
    self.interior.props:enable(self.interior.props.fireMan, false, false)
    self.interior.props:enable(self.interior.props.armour, false, false)
    self.interior.props:enable(self.interior.props.gasMask, false, false)
    self.interior.props:enable(self.interior.props.janitorStuff, false, false)

    RefreshInterior(object.interior.id)
end

exports('GetLesterFactoryObject', function()
    return object
end)

return object