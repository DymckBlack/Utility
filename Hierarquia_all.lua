local function findTask(widget)

    if not widget then
        return
    end

    local text = ""

    if widget.getText then
        text = widget:getText() or ""
    end


    if text == "Tasks" then

        print("===== ACHOU TASK =====")

        local w = widget
        local level = 0

        while w do

            local id = ""

            if w.getId then
                id = w:getId() or ""
            end

            print(
                level ..
                " ID=[" .. tostring(id) ..
                "] OBJ=[" .. tostring(w) .. "]"
            )

            w = w:getParent()
            level = level + 1

        end

        print("======================")

        return true

    end


    if widget.getChildren then

        local children = widget:getChildren()

        if children then

            for _, child in pairs(children) do

                if findTask(child) then
                    return true
                end

            end

        end

    end

end



macro(3000, "Pai do Tasks", function()

    findTask(
        g_ui.getRootWidget()
    )

end)
