id = 4584 --Ganti id nya
--pepper id = 4584

posx = math.floor(GetLocal().pos_x//32)
posy = math.floor(GetLocal().pos_y//32)

while true do
    SendPacket(2, "action|dialog_return\ndialog_name|item_search\n"..id.."|1\n")
    Sleep(300)
    SendPacket(2, "action|dialog_return\ndialog_name|grinder\nx|"..posx.."|\ny|"..posy.."|\nitemID|"..id.."|\namount|2")
    Sleep(3000)
end
