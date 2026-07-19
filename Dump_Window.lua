macro(3000, "Dump PlayerTask", function()

    local root = g_ui.getRootWidget()

    local window = root:recursiveGetChildById("playertaskWindow")

    if not window then
        print("playertaskWindow não encontrado")
        return
    end


    local function dump(widget, level)

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
            " ID=["..id.."] TEXT=["..text.."]"
        )


        if widget.getChildren then

            local children = widget:getChildren()

            if children then

                for _, child in pairs(children) do
                    dump(child, level + 1)
                end

            end

        end

    end


    print("====== PLAYER TASK START ======")

    dump(window, 0)

    print("====== PLAYER TASK END ======")

end)
