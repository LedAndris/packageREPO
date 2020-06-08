--[[
    Made by: Beke_Rugos
]]--
--[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
--Sends a basic text notification
--Return: nil
function notify(string)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)  
    DrawNotification(true, false)
  end
  --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
  --Sends an advanced notification, with icons etc
  --Return: nil
  function ADnotify(icon, type, sender, title, text) 
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    SetNotificationMessage(icon, icon, true, type, sender, title, text)
    DrawNotification(false, true)
end
--[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
  --Finds an elements index in a table
  --Return: integer(index)/nil
  function ind(table, value)
    for k,v in pairs(table) do
       table[v]=k
    end
    return table[values]
    end
    --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
    --Checks if a table contains a value
    --Return: true/false
    function has_value (tab, val)
        for i, value in ipairs(tab) do
            if value == val then
                return true
            end
        end
      
        return false
      end  
      --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
      --Gets the hash key of a string
      --Return: the hash
      function hash(obj)
        return GetHashKey(obj)
        end
        --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
        --Sends a basic white chat message
        --Return: nil
        function chat(txt)
            TriggerEvent('chat:addMessage', {
                args = {txt}
                })
        end
        --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
        --Makes a marker, (has to be in a while loop)
        --Return: nil
        function addMarker(x, y, z, typ, sx, sy, sz, r, g, b, a)
            DrawMarker(typ, x, y, z + 1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, sx, sy, sz, r, g, b, a, false, true, 2, nil, nil, false)
          end
          --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
          --Makes a blip for an entity
          --Return: the blip handle
          function makeENTBlip(sprite, color, size, title, ent)
            local blip = AddBlipForEntity(ent)
            
                    SetBlipSprite(blip, sprite)
                    SetBlipColour(blip, color)
                    SetBlipDisplay(blip, 6)
                    SetBlipScale(blip, size)
                    BeginTextCommandSetBlipName("STRING")
              AddTextComponentString(title)
              EndTextCommandSetBlipName(blip)
                    print('Blips made!')
                    return blip
          end
          --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
          --Adds a blip to a coord
          --Return: the blip handle
          function makeBlip(x, y, z, sprite, color, title)
            local blip = AddBlipForCoord(x, y, z)
                    SetBlipSprite(blip, sprite)
                    SetBlipColour(blip, color)
                    SetBlipDisplay(blip, 6)
                    SetBlipScale(blip, 1.0)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString(title)
                    EndTextCommandSetBlipName(blip)
                    return blip
          end
    --[[
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
####################################################################################################################################################################################################################
      ]]--
      --Sends an advanced chat message
          --Return: nil
          function ADchat(txt, r, g, b, mline, auth)
            TriggerEvent('chat:addMessage', {
                color = {r, g, b},
                multiline = mline,
                args = {auth, txt}
                })
        end
