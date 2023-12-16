local isShowing = false

function Show(input,texto)
    isShowing = true
    SendNUIMessage({
        type = 'show',
        input = input,
        texto = texto
    })
end

function Hide()
    if not isShowing then return end
    isShowing = false
    SendNUIMessage({
        type = 'hide'
    })
end

exports('Show', Show)
exports('Hide', Hide)


-- // BOTH ARE COMMANDS FOR TEXT, YOU SHOULDN'T UNCOMMENT THIS LINES

-- RegisterCommand("textui", function(source, args)
--     if #args < 2 then
--         TriggerEvent("chatMessage", "^1Error^0", {255, 0, 0}, "Uso correcto: /textui [tecla] [texto]")
--         return
--     end

--     local tecla = args[1]
--     local texto = table.concat(args, " ", 2)

--     SendNUIMessage({
--         type = 'show',
--         input = tecla,
--         texto = texto
--     })
-- end, false)

-- RegisterCommand('hideui', function()
--     SendNUIMessage({
--         type = 'hide',
--     })
-- end)
