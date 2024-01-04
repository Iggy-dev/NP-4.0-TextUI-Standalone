# NP-4.0-TextUI-Standalone

# Example Exports

<h3>Show Text UI</h3>

```lua
exports['TextUI']:Show('E', 'Example Text')
exports['TextUI']:Show('G', 'Example Text')
exports['TextUI']:Show('H', 'Example Text')
```

<h3>Hide Text UI</h3>

```lua
exports['TextUI']:Hide()
```

# SNIPPPETS

QB-Core

Go to qb-core/client/drawtext.lua and replace

```lua
RegisterNetEvent('qb-core:client:DrawText', function(text, position)
    drawText(text, position)
end)

RegisterNetEvent('qb-core:client:HideText', function()
    hideText()
end)
```

to 

```lua
RegisterNetEvent('qb-core:client:DrawText', function(key, text)
    exports['TextUI']:Show(key, text)
end)

RegisterNetEvent('qb-core:client:HideText', function()
   exports['TextUI']:Hide()
end)
```

ESX

Go to es_extended/client/functions.lua and replace

```lua
function ESX.TextUI(message, notifyType)
    if GetResourceState("esx_textui") ~= "missing" then
        return exports["esx_textui"]:TextUI(message, notifyType)
    end

    print("[^1ERROR^7] ^5ESX TextUI^7 is Missing!")
end

function ESX.HideUI()
    if GetResourceState("esx_textui") ~= "missing" then
        return exports["esx_textui"]:HideUI()
    end

    print("[^1ERROR^7] ^5ESX TextUI^7 is Missing!")
end
```

to 

```lua
function ESX.TextUI(key, text)
    if GetResourceState("TextUI") ~= "missing" then
        return exports['TextUI']:Show(key, text)
    end

    print("[^1ERROR^7] ^5ESX TextUI^7 is Missing!")
end

function ESX.HideUI()
    if GetResourceState("TextUI") ~= "missing" then
        return exports['TextUI']:Hide()
    end

    print("[^1ERROR^7] ^5ESX TextUI^7 is Missing!")
end

```

# Previews

![Preview_1](https://forum.cfx.re/uploads/default/original/4X/1/a/4/1a49f274b76f0c523c4b129d9b87acb81b4b928e.png)
