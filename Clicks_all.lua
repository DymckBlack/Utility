macro(3000, "Inspect Task Events", function()

    local root = g_ui.getRootWidget()

    local task = root:recursiveGetChildById("widget525")

    if task then

        print("===== TASK FOUND =====")

        print("onClick:", tostring(task.onClick))
        print("onMousePress:", tostring(task.onMousePress))
        print("onMouseRelease:", tostring(task.onMouseRelease))
        print("onDoubleClick:", tostring(task.onDoubleClick))

        print("=====================")

    else

        print("TASK NOT FOUND")

    end

end)
