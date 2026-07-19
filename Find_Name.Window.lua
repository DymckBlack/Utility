macro(3000, "Buscar Task Window", function()

    local root = g_ui.getRootWidget()

    local function scan(widget)

        if not widget then
            return
        end

        local id = ""

        if widget.getId then
            id = widget:getId() or ""
        end


        if id:lower():find("task") then

            print(
                "TASK UI => ID=["..id.."] OBJ=["..tostring(widget).."]"
            )

        end


        if widget.getChildren then

            for _,child in pairs(widget:getChildren()) do
                scan(child)
            end

        end

    end


    scan(root)

end)
