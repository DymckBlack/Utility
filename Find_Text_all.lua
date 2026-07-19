macro(3000, "Textos Task", function()

    local root = g_ui.getRootWidget()

    local function scan(widget)

        if widget.getText then

            local txt = widget:getText()

            if txt and txt ~= "" then
                print(
                    "TEXT:",
                    txt,
                    "ID:",
                    widget:getId()
                )
            end

        end


        for _,c in pairs(widget:getChildren()) do
            scan(c)
        end

    end


    scan(root)

end)
