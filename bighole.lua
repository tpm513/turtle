i = 0
j = 0
l = 0
function forward(f)
    e = 0
    while e < f do
        if turtle.detect() then 
            turtle.dig()
            turtle.forward()
        else
            turtle.forward()
        end
    e = e + 1
    end
end
function right()
    turtle.turnRight()
    forward()
    turtle.turnRight()
end
function left()
    turtle.turnLeft()
    forward()
    turtle.turnLeft()
end
function down()
    if turtle.detectDown() then
        turtle.digDown()
        turtle.down()
    else
        turtle.down()
    end
end
function up()
    if turtle.detectUp() then
        turtle.digUp()
        turtle.up()
    else
        turtle.up()
    end
end
function turnAround()
    turtle.turnRight()
    turtle.turnRight()
end
function grid()
    while i < 200 do
        down()
        forward(2)
        right()
        forward(2)
        left()
        forward(2)
        turnAround()
        forward(2)
        right()
        forward(2)
        left()
        forward(2)
        turnAround()
        i = i + 1  
    end
end