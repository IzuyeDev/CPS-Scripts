delay = 300
auto_convert_bgl = false --Auto Convert to BGL if there is 100 DLs in Backpack (True = ON, Flase = OFF)
x =
y = 

function cekInv(id)
    count = 0
    for _, inv in pairs(GetInventory()) do
        if inv.id == id then
            count = inv.count 
        end
    end
    return count
end

xpos = y-1
ypos = y-1

while true do
    if math.floor(cekInv(1796)) >= 100 and auto_convert_bgl == true then
        SendPacket(2,[[action|dialog_return
        dialog_name|telephone
        num|53785|
        x|]]..xpos..[[|
        y|]]..ypos..[[|
        buttonClicked|dlconvert]])
        Sleep(delay)
    end
    SendPacket(2,[[action|dialog_return
    dialog_name|telephone
    num|53785|
    x|]]..xpos..[[|
    y|]]..ypos..[[|
    buttonClicked|dlconvert]])
    Sleep(delay)
end
