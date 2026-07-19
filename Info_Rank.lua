macro(3000, "Inspecionar Ranks", function()

    local window = g_ui.getRootWidget():recursiveGetChildById("playertaskWindow")

    if not window then
        info("sem janela")
        return
    end


    local ranks = window:recursiveGetChildById("ranksPanel")

    if not ranks then
        info("sem ranks")
        return
    end


    for _, rank in pairs(ranks:getChildren()) do

        info("====================")
        info("RANK: "..rank:getId())


        local function dump(widget, level)

            local txt = ""

            if widget.getText then
                txt = widget:getText() or ""
            end


            info(
                string.rep(" ", level)
                ..
                widget:getClassName()
                ..
                " ID="
                ..
                widget:getId()
                ..
                " TEXT="
                ..
                txt
            )


            if widget:getChildren() then

                for _, child in pairs(widget:getChildren()) do
                    dump(child, level + 1)
                end

            end

        end


        dump(rank, 1)

    end


end)
