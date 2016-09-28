local i = 0
local slot = 1

while true do
turtle.forward()


if turtle.detect() = false then--nothing in front

    if turtle.detectLeft() then 
        turtle.turnLeft()
        break
    end

break
else 
turtle.turnRight() -- something is in front turn right 
break
end

i = i +1

local mod = i % 10

if mod=0 then
turtle.select(slot)
if turtle.getItemCount(slot) = 0 then
slot = slot +1
end
turtle.place()

end
end