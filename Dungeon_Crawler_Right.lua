local i = 0
local slot = 1

while true do
turtle.forward()


if turtle.detect() = false then--nothing in front

    if turtle.detectRight() then 
        turtle.turnRight()
        break
    end

break
else 
turtle.turnLeft() -- something is in front turn left 
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