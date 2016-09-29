function lavaRefuel()
  turtle.select(1)
  turtle.placeDown()
  
  if not turtle.refuel() then
    turtle.placeDown()
  end
end

function forward(times)
  for i=1,times,1 do
      lavaRefuel()
     
      while not turtle.forward() do
          turtle.dig()
          if turtle.forward() then
              break
          else
              turtle.attack()
          end
      end
  end
end
 
function turn(a)
  if a then
      turtle.turnRight()
  else
      turtle.turnLeft()
  end
end

arg={...}

if #arg~=2 then
  print("Usage: <blocks forward> <blocks right (negative for left)>")
  return 0
end

forw=a[1]
side=a[2]

if side>0 then
  dir=true
else
  dir=false
  side=-side
end

for row=1,side,1 do
  forward(forw-1)
  turn(dir)
  forward(1)
  turn(dir)
  
  dir=not dir
end
