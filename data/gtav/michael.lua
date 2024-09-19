local object = {
    interior = {
        id = 166657,
        style = {
            normal = {
                'V_Michael_bed_tidy',
                'V_Michael_M_items',
                'V_Michael_D_items',
                'V_Michael_S_items',
                'V_Michael_L_Items'
            },
            moved = {
                'V_Michael_bed_Messy',
                'V_Michael_M_moved',
                'V_Michael_D_Moved',
                'V_Michael_L_Moved',
                'V_Michael_S_items_swap',
                'V_Michael_M_items_swap'
            },
        },
        bed = {
            style = {
                tidy = 'V_Michael_bed_tidy',
                messy = 'V_Michael_bed_Messy'
            }
        },
        posters = {
            moviePoster = 'Michael_premier', -- Meltdown movie poster
            fameShamePoste = 'V_Michael_FameShame', -- Next to Tracey's bed
            planeTicket = 'V_Michael_plane_ticket', -- Plane ticket
            spyGlasses = 'V_Michael_JewelHeist', -- On the shelf inside Michael's bedroom
            bugershot = 'burgershot_yoga', -- Bag and cup in the kitchen, next to the sink
        }
    },
    garage = {
        id = 166401,
        scuba = 'V_Michael_Scuba',
    },
}

---@param refresh boolean Whether to refresh or not
function object.interior.style:clear(refresh)
    SetIplPropState(object.interior.id, {
        self.normal,
        self.moved
    }, false, refresh)
end

---@param style string | table Type of style to set
---@param refresh boolean Whether to refresh or not
function object.interior.style:set(style, refresh)
    self:clear(false)

    SetIplPropState(object.interior.id, style, true, refresh)
end

---@param refresh boolean Whether to refresh or not
function object.interior.bed:clear(refresh)
    SetIplPropState(object.interior.id, {
        self.style.tidy,
        self.style.messy
    }, false, refresh)
end

---@param bed string Type of style to set
---@param refresh boolean Whether to refresh or not
function object.interior.bed:set(bed, refresh)
    self:clear(false)

    SetIplPropState(object.interior.id, bed, true, refresh)
end

---@param state boolean Whether to enable or disable
---@param refresh boolean Whether to refresh or not
function object.garage:enable(state, refresh)
    SetIplPropState(self.id, self.scuba, state, refresh)
end

---@param poster string Type of poster to set
---@param state boolean Whether to enable or disable
---@param refresh boolean Whether to refresh or not
function object.interior.posters:enable(poster, state, refresh)
    SetIplPropState(object.interior.id, poster, state, refresh)
end

function object:loadDefault()
    self.interior.style:set(self.interior.style.normal, true)
    self.interior.bed:set(self.interior.bed.style.tidy, true)
    self.interior.posters:enable(self.interior.posters.moviePoster, true, true)
    self.interior.posters:enable(self.interior.posters.fameShamePoste, true, true)
    self.interior.posters:enable(self.interior.posters.planeTicket, true, true)
    self.interior.posters:enable(self.interior.posters.spyGlasses, true, true)
    self.interior.posters:enable(self.interior.posters.bugershot, true, true)
    self.garage:enable(true, true)

    RefreshInterior(self.interior.id)
end

exports('GetMichaelObject', function()
    return object
end)

return object