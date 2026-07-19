macro(3000, "Info Botoes Task", function()

    local root = g_ui.getRootWidget()

    local ids = {
        "widget32671",
        "recompenses1"
    }

    for _, id in ipairs(ids) do

        local w = root:recursiveGetChildById(id)

        if w then

            print("====== "..id.." ======")

            if w.getText then
                print("TEXT:", w:getText())
            end

            if w.isVisible then
                print("VISIBLE:", w:isVisible())
            end

            if w.isEnabled then
                print("ENABLED:", w:isEnabled())
            end

            print("CLICK:", tostring(w.onClick))
            print("RELEASE:", tostring(w.onMouseRelease))

        else
            print(id, "não encontrado")
        end

    end

end)
