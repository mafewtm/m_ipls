local object = {
    interior = {
        id = 2562,
        style = {
            tidy = 'trevorstrailertidy',
            normal = 'trevorstrailertrash'
        },
        props = {
            copHelmet = 'V_26_Trevor_Helmet3', -- Cop helmet in the closet
            briefcase = 'V_24_Trevor_Briefcase3', -- Briefcase in the main room
            michaelStuff = 'V_26_Michael_Stay3', -- Michael's suit hanging on the window
        },
    }
}

function object.interior.style:clear()
    EnableIpl({
        self.tidy,
        self.trash
    }, false)
end

---@param interior string
function object.interior.style:set(interior)
    self:clear()

    EnableIpl(interior, true)
end

---@param prop string Type of prop to set
---@param state boolean Whether to enable or disable
---@param refresh boolean Whether to refresh or not
function object.interior.props:enable(prop, state, refresh)
    SetIplPropState(object.interior.id, prop, state, refresh)
end

function object:loadDefault()
    self.interior.style:set(self.interior.style.trash)
    self.interior.props:enable(self.interior.props.copHelmet, false, true)
    self.interior.props:enable(self.interior.props.briefcase, false, true)
    self.interior.props:enable(self.interior.props.michaelStuff, false, true)

    RefreshInterior(object.interior.id)
end

exports('GetTrevorObject', function()
    return object
end)

return object