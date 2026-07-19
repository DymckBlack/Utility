macro(3000, "Task Methods", function()

    local task = g_ui.getRootWidget():recursiveGetChildById("widget525")

    if task then

        for k,v in pairs(task) do
            print(k, v)
        end

    end

end)
