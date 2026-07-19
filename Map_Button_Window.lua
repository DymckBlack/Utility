macro(3000, "Mapa Botao Task", function()

    local root = g_ui.getRootWidget()

    local window = root:recursiveGetChildById("playertaskWindow")

    if not window then
        info("sem janela")
        return
    end

    local monsters = window:recursiveGetChildById("monsters_hunter")

    if not monsters then
        return
    end


    local function scan(w)

        if w:getClassName() == "UIButton"
        and w.onClick then

            info("====== BOTAO ENCONTRADO ======")

            local p = w
            local level = 0

            while p do

                info(
                    level ..
                    " | "
                    ..
                    p:getClassName()
                    ..
                    " | ID="
                    ..
                    tostring(p:getId())
                )

                if p.getText then
                    local txt = p:getText()

                    if txt and txt ~= "" then
                        info("TEXT="..txt)
                    end
                end

                p = p:getParent()
                level = level + 1

            end

            return true

        end


        for _, child in pairs(w:getChildren()) do
            if scan(child) then
                return true
            end
        end

    end


    scan(monsters)

end)
