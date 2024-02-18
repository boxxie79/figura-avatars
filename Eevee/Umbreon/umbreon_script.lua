vanilla_model.PLAYER:setVisible(false)
vanilla_model.ELYTRA:setVisible(false)
vanilla_model.ARMOR:setVisible(false)
vanilla_model.CAPE:setVisible(false)
nameplate.ENTITY:setPivot(0,1.5,0)
local squapi = require("SquAPI")
--
function pings.umbreon_cry()
	animations.umbreon.cry:play()
	if player:isLoaded()
		then
		sounds:playSound("umbreon_cry", player:getPos(), 1, 1)
	end
end
local cryButton = keybinds:newKeybind("Cry", "key.keyboard.v", false)
cryButton.press = pings.umbreon_cry
--
squapi.blink(animations.umbreon.blink)
squapi.ear(models.umbreon.umbreon.body.torso.Head.ear_right,models.umbreon.umbreon.body.torso.Head.ear_left,true,400,0,true,0.1)
squapi.taurPhysics(
models.umbreon.umbreon.body,
models.umbreon.umbreon.body.FrontLegs,
models.umbreon.umbreon.body.BackLegs
)
tail = {
	models.umbreon.umbreon.body.torso.tail--,
	-- models.umbreon.umbreon.body.torso.tail.tail2,
	-- models.umbreon.umbreon.body.torso.tail.tail2.tail3,
	-- models.umbreon.umbreon.body.torso.tail.tail2.tail3.tail4,
	-- models.umbreon.umbreon.body.torso.tail.tail2.tail3.tail4.tail5
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