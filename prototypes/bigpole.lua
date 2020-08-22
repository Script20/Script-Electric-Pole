local rescaleRecipe = require("prototypes/rescalerecipe")

local round = function(x)
    return math.floor(x+0.5)
end

do
    local bigPole = data.raw["electric-pole"]["big-electric-pole"]
    local radiusRatio = settings.startup["script-bigpole-wire-distance"].value / bigPole.maximum_wire_distance
    local radiusRatioSquared = radiusRatio * radiusRatio
    bigPole.maximum_wire_distance = settings.startup["script-bigpole-wire-distance"].value
  
    local recipe = data.raw["recipe"]["big-electric-pole"]
    rescaleRecipe(recipe, radiusRatioSquared)
end