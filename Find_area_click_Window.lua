macro(3000, "Detectar Click Task", function()

    local root = g_ui.getRootWidget()

    local card = root:recursiveGetChildById("widget32663")


    if not card then
        print("CARD NÃO ENCONTRADO")
        return
    end


    local function scan(widget)

        local id = widget:getId() or ""

        print(
            "ID:",
            id,
            "click:",
            tostring(widget.onClick),
            "release:",
            tostring(widget.onMouseRelease)
        )


        if widget:getChildren() then

            for _,child in pairs(widget:getChildren()) do
                scan(child)
            end

        end

    end


    scan(card)

end)
