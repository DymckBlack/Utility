macro(3000, "Dump Task Completo", function()

    local root = g_ui.getRootWidget()

    local function dump(widget, level)

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


        local visible = ""

        if widget.isVisible then
            visible = tostring(widget:isVisible())
        end


        print(
            string.rep("-", level)
            ..
            " ID=["..id.."]"
            ..
            " TEXT=["..text.."]"
            ..
            " VIS=["..visible.."]"
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


    local function find(widget)

        if not widget then
            return
        end


        local id = ""

        if widget.getId then
            id = widget:getId() or ""
        end


        if id == "playertaskWindow" then

            print("======================")
            print("ENCONTROU WINDOW")
            print("======================")


            dump(widget,0)

            return true
        end


        if widget.getChildren then

            for _,child in pairs(widget:getChildren()) do

                if find(child) then
                    return true
                end

            end

        end

    end


    find(root)

end)
