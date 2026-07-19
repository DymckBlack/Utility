macro(3000, "Info Widget32671", function()

    local w = g_ui.getRootWidget():recursiveGetChildById("widget32671")

    if w then

        print("===== widget32671 =====")

        print("class:", w:getClassName())
        print("id:", w:getId())

        if w.getImageSource then
            print("image:", w:getImageSource())
        end

        if w.getTooltip then
            print("tooltip:", w:getTooltip())
        end

        if w.isEnabled then
            print("enabled:", w:isEnabled())
        end

        print("click:", tostring(w.onClick))

    end

end)
