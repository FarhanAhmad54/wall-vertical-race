local App = require("src.app")

local app

function love.load()
    love.graphics.setDefaultFilter("linear", "linear")
    app = App.new()
end

function love.update(dt)
    app:update(math.min(dt, 0.05))
end

function love.draw()
    app:draw()
end

function love.keypressed(key)
    app:keypressed(key)
end

function love.mousepressed(x, y, button)
    app:mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
    app:mousereleased(x, y, button)
end

function love.touchpressed(id, x, y, dx, dy, pressure)
    app:touchpressed(id, x, y, dx, dy, pressure)
end

function love.touchreleased(id, x, y, dx, dy, pressure)
    app:touchreleased(id, x, y, dx, dy, pressure)
end

function love.resize(w, h)
    app:resize(w, h)
end
