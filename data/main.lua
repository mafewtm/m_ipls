---@param ipl string | string[] Name(s) of the IPL(s) to enable/disable
---@param activate boolean Whether to enable or disable the IPL
function EnableIpl(ipl, activate)
    if type(ipl) ~= 'table' then
        ipl = { ipl }
    end

    for i = 1, #ipl do
        local name = ipl[i]

        if activate and not IsIplActive(name) then
            RequestIpl(name)
        elseif not activate and IsIplActive(name) then
            RemoveIpl(name)
        end
    end
end
exports('EnableIpl', EnableIpl)

---@param interiorId integer | integer[] Name(s) of the interior(s) to enable/disable
---@param props string | string[] Name(s) of the prop(s) to enable/disable
---@param state boolean Whether to enable or disable the prop
---@param refresh boolean Whether to refresh the interior
function SetIplPropState(interiorId, props, state, refresh)
    refresh = refresh or false

    if type(interiorId) ~= 'table' then
        interiorId = { interiorId }
    end

    for i = 1, #interiorId do
        local id = interiorId[i]

        if type(props) ~= 'table' then
            props = { props }
        end

        for j = 1, #props do
            local prop = props[j]

            if state and not IsInteriorEntitySetActive(id, prop) then
                ActivateInteriorEntitySet(id, prop)
            elseif not state and IsInteriorEntitySetActive(id, prop) then
                DeactivateInteriorEntitySet(id, prop)
            end

            if refresh then
                RefreshInterior(id)
            end
        end
    end
end

---@param name string Name of the rendertarget
---@param model string Name of the model
function CreateNamedRenderTargetForModel(name, model)
    if not IsNamedRendertargetRegistered(name) then
        RegisterNamedRendertarget(name, false)
    end

    if not IsNamedRendertargetLinked(model) then
        LinkNamedRendertarget(model)
    end

    local handle = IsNamedRendertargetRegistered(name) and GetNamedRendertargetRenderId(name) or 0

    return handle
end