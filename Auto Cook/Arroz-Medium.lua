rice_id = 3472
chicken_id = 4588
onion_id = 4602
tomato_id = 962
salt_id = 4568
pepper_id = 4570

cook = true
function masukin_med(posX,posY,id)
    SendPacket(2,"action|dialog_return\ndialog_name|homeoven_edit\nx|"..posX.."|\ny|"..posY.."|\ncookthis|"..id.."|\nbuttonClicked|med")
end

function cekInv(id)
    count = 0
    for _, inv in pairs(GetInventory()) do
        if inv.id == id then
            count = inv.count 
        end
    end
    return count
end

function masukin(x,y,id)
    local packet = {}
    packet.type = 3
    packet.objtype = 0
    packet.int_data = id
    packet.int_x = x
    packet.int_y = y
    SendPacketRaw(packet)
end

while true do 
    if cekInv(rice_id) > 20 and cekInv(chicken_id) > 20 and cekInv(onion_id) > 20 and cekInv(tomato_id) > 20 and cekInv(salt_id) > 20 and cekInv(pepper_id) > 38 then
        posx = math.floor(GetLocal().pos_x/32)
        posy = math.floor(GetLocal().pos_y/32)
        Sleep(2000)

        for i = 1,3,1 do
            masukin_med(posx+i,posy,rice_id)
            Sleep(200)
        end

        for i = 1,3,1 do
            masukin_med(posx+i,posy-1,rice_id)
            Sleep(200)
        end

        for i = 1,3,1 do
            masukin_med(posx+i,posy-2,rice_id)
            Sleep(200)
        end
        --============--

        for i = 1,3,1 do
            masukin_med(posx-i,posy,rice_id)
            Sleep(200)
        end

        for i = 1,3,1 do
            masukin_med(posx-i,posy-1,rice_id)
            Sleep(200)
        end

        for i = 1,3,1 do
            masukin_med(posx-i,posy-2,rice_id)
            Sleep(200)
        end


        Sleep(13300)
        for i = 1,3,1 do
            masukin(posx+i,posy,chicken_id)
            Sleep(200)
            masukin(posx+i,posy,onion_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx+i,posy-1,chicken_id)
            Sleep(200)
            masukin(posx+i,posy-1,onion_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx+i,posy-2,chicken_id)
            Sleep(200)
            masukin(posx+i,posy-2,onion_id)
            Sleep(200)
        end
        ---
        for i = 1,3,1 do
            masukin(posx-i,posy,chicken_id)
            Sleep(200)
            masukin(posx-i,posy,onion_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx-i,posy-1,chicken_id)
            Sleep(200)
            masukin(posx-i,posy-1,onion_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx-i,posy-2,chicken_id)
            Sleep(200)
            masukin(posx-i,posy-2,onion_id)
            Sleep(200)
        end

        Sleep(10900)
        for i = 1,3,1 do
            masukin(posx+i,posy,tomato_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx+i,posy-1,tomato_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx+i,posy-2,tomato_id)
            Sleep(200)
        end
        ---
        for i = 1,3,1 do
            masukin(posx-i,posy,tomato_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx-i,posy-1,tomato_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx-i,posy-2,tomato_id)
            Sleep(200)
        end
        
        for i = 1,3,1 do
            masukin(posx+i,posy,salt_id)
            Sleep(200)
            masukin(posx+i,posy,pepper_id)
            Sleep(200)
            masukin(posx+i,posy,pepper_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx+i,posy-1,salt_id)
            Sleep(200)
            masukin(posx+i,posy-1,pepper_id)
            Sleep(200)
            masukin(posx+i,posy-1,pepper_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx+i,posy-2,salt_id)
            Sleep(200)
            masukin(posx+i,posy-2,pepper_id)
            Sleep(200)
            masukin(posx+i,posy-2,pepper_id)
            Sleep(200)
        end
        ---
        for i = 1,3,1 do
            masukin(posx-i,posy,salt_id)
            Sleep(200)
            masukin(posx-i,posy,pepper_id)
            Sleep(200)
            masukin(posx-i,posy,pepper_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx-i,posy-1,salt_id)
            Sleep(200)
            masukin(posx-i,posy-1,pepper_id)
            Sleep(200)
            masukin(posx-i,posy-1,pepper_id)
            Sleep(200)
        end
        for i = 1,3,1 do
            masukin(posx-i,posy-2,salt_id)
            Sleep(200)
            masukin(posx-i,posy-2,pepper_id)
            Sleep(200)
            masukin(posx-i,posy-2,pepper_id)
            Sleep(200)
        end
        
        Sleep(50)
        for i = 1,3,1 do
            masukin(posx+i,posy,18)
            Sleep(300)
        end
        for i = 1,3,1 do
            masukin(posx+i,posy-1,18)
            Sleep(400)
        end
        for i = 1,3,1 do
            masukin(posx+i,posy-2,18)
            Sleep(400)
        end
        ---
        for i = 1,3,1 do
            masukin(posx-i,posy,18)
            Sleep(400)
        end
        for i = 1,3,1 do
            masukin(posx-i,posy-1,18)
            Sleep(400)
        end
        for i = 1,3,1 do
            masukin(posx-i,posy-2,18)
            Sleep(400)
        end
    else
        log("Bahan-bahan kurang, pastikan bahan bahan cukup")
        cook = false
    end
end
