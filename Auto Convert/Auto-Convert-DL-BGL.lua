delay = 300
auto_convert_bgl = true --Auto Convert to BGL if there is 100 DLs in Backpack (True = ON, Flase = OFF)
x = 0 --Change
y = 0 --Change

function cekInv(id)
    count = 0
    for _, inv in pairs(GetInventory()) do
        if inv.id == id then
            count = inv.count 
        end
    end
    return count
end
x = x-1
y = y-1
while true do
    if math.floor(cekInv(1796)) >= 100 and auto_convert_bgl == true then
        SendPacket(2,[[action|dialog_return
dialog_name|telephone
num|53785|
x|]]..x..[[|
y|]]..y..[[|
buttonClicked|bglconvert]])
        Sleep(delay)
    end
    SendPacket(2,[[action|dialog_return
dialog_name|telephone
num|53785|
x|]]..x..[[|
y|]]..y..[[|
buttonClicked|dlconvert]])
    Sleep(delay)
end
