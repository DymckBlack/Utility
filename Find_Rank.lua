macro(3000, "Ver Ranks", function()

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

        info(
            "RANK ID="
            ..
            rank:getId()
            ..
            " TEXT="
            ..
            (rank:getText() or "")
        )

    end

end)
