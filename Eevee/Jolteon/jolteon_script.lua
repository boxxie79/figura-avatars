vanilla_model.PLAYER:setVisible(false)
vanilla_model.ELYTRA:setVisible(false)
vanilla_model.ARMOR:setVisible(false)
vanilla_model.CAPE:setVisible(false)
nameplate.ENTITY:setPivot(0,1.5,0)
local squapi = require("SquAPI")
--
function pings.jolteon_cry()
	animations.jolteon.cry:play()
	if player:isLoaded()
		then
		sounds:playSound("jolteon_cry", player:getPos(), 1, 1)
	end
end
local cryButton = keybinds:newKeybind("Cry", "key.keyboard.v", false)
cryButton.press = pings.jolteon_cry
--
squapi.blink(animations.jolteon.blink)
squapi.ear(models.jolteon.jolteon.body.torso.Head.ear_right,models.jolteon.jolteon.body.torso.Head.ear_left,true,400,0,true,0.1)
squapi.taurPhysics(
models.jolteon.jolteon.body,
models.jolteon.jolteon.body.FrontLegs,
models.jolteon.jolteon.body.BackLegs
)
tail = {
	models.jolteon.jolteon.body.torso.tail--,
	-- models.jolteon.jolteon.body.torso.tail.tail2,
	-- models.jolteon.jolteon.body.torso.tail.tail2.tail3,
	-- models.jolteon.jolteon.body.torso.tail.tail2.tail3.tail4,
	-- models.jolteon.jolteon.body.torso.tail.tail2.tail3.tail4.tail5
}
squapi.tails(tail)
--
--vapo v- UMBREON!!
local mainMenu = action_wheel:newPage()
action_wheel:setPage(mainMenu)
local action = mainMenu:newAction()
    :title("Move View Height")
    :item("minecraft:spyglass")
    :hoverColor(0, 1, 1)
    :setOnUntoggle(function(bool)
        renderer:setOffsetCameraPivot(0, 0, 0)
        renderer:setEyeOffset(0, 0, 0)
    end)
    :setOnToggle(function(bool)
        renderer:setOffsetCameraPivot(0, -0.8, 0)
        renderer:setEyeOffset(0, -0.8, 0)
    end)