local function dumpUI(widget, level)

    if not widget then
        return
    end

    local id = ""

    if widget.getId then
        id = widget:getId() or ""
    end

    local text = ""

    if widget.getText then
        text = widget:getText() or ""
    end


    print(
        string.rep("-", level)
        ..
        " ID=["..tostring(id).."] TEXT=["..tostring(text).."]"
    )


    if widget.getChildren then

        local children = widget:getChildren()

        if children then

            for _, child in pairs(children) do
                dumpUI(child, level + 1)
            end

        end

    end

end


macro(5000, "Dump UI Log", function()

    print("========== INICIO UI ==========")

    local root = g_ui.getRootWidget()

    dumpUI(root, 0)

    print("========== FIM UI ==========")

end)
