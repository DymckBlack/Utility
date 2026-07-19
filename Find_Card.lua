macro(3000, "Card do Botao", function()

    local root = g_ui.getRootWidget()

    local window = root:recursiveGetChildById("playertaskWindow")

    if not window then return end

    local monsters = window:recursiveGetChildById("monsters_hunter")

    if not monsters then return end


    local function scan(w)

        if w:getClassName() == "UIButton"
        and w.onClick then

            info("====== CARD ======")

            local card = w:getParent()

            if card then

                info("CARD ID: "..card:getId())


                for _, child in pairs(card:getChildren()) do

                    local text = ""

                    if child.getText then
                        text = child:getText() or ""
                    end

                    info(
                        child:getClassName()
                        ..
                        " ID="
                        ..
                        child:getId()
                        ..
                        " TEXT="
                        ..
                        text
                    )

                end

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
