vanilla_model.PLAYER:setVisible(false)
vanilla_model.ELYTRA:setVisible(false)
vanilla_model.ARMOR:setVisible(false)
vanilla_model.CAPE:setVisible(false)
nameplate.ENTITY:setPivot(0,1.5,0)
local squapi = require("SquAPI")
--
function pings.leafeon_cry()
	animations.leafeon.cry:play()
	if player:isLoaded()
		then
		sounds:playSound("leafeon_cry", player:getPos(), 1, 1)
	end
end
local cryButton = keybinds:newKeybind("Cry", "key.keyboard.v", false)
cryButton.press = pings.leafeon_cry
--
squapi.blink(animations.leafeon.blink)
squapi.ear(models.leafeon.leafeon.body.torso.Head.ear_right,models.leafeon.leafeon.body.torso.Head.ear_left,true,400,0,true,0.1)
squapi.taurPhysics(
models.leafeon.leafeon.body,
models.leafeon.leafeon.body.FrontLegs,
models.leafeon.leafeon.body.BackLegs
)
tail = {
	models.leafeon.leafeon.body.torso.tail,
	models.leafeon.leafeon.body.torso.tail.tail2,
	models.leafeon.leafeon.body.torso.tail.tail2.tail3,
	models.leafeon.leafeon.body.torso.tail.tail2.tail3.tail4
	-- models.leafeon.leafeon.body.torso.tail.tail2.tail3.tail4.tail5
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