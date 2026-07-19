macro(3000, "Achar Botao Task Atual", function()

    local root = g_ui.getRootWidget()

    local window = root:recursiveGetChildById("playertaskWindow")

    if not window then
        info("Janela não encontrada")
        return
    end


    local monsters = window:recursiveGetChildById("monsters_hunter")

    if not monsters then
        info("monsters_hunter não encontrado")
        return
    end


    info("Procurando botoes...")


    local function scan(widget)

        if widget:getClassName() == "UIButton" then

            info(
                "ACHOU BUTTON ID=[" ..
                widget:getId() ..
                "]"
            )

            if widget.onClick then
                info("TEM CLICK")
            end

        end


        if widget:getChildren() then

            for _, child in pairs(widget:getChildren()) do
                scan(child)
            end

        end

    end


    scan(monsters)

end)
