
--THE OG

--vapo vapo
vanilla_model.PLAYER:setVisible(false)
vanilla_model.ELYTRA:setVisible(false)
vanilla_model.ARMOR:setVisible(false)
vanilla_model.CAPE:setVisible(false)
nameplate.ENTITY:setPivot(0,1.5,0)
--vapor vaporeon
local squapi = require("SquAPI")
--vaporeon!!
function pings.vaporeoncry()
	animations.vaporeon.cry:play()
	if player:isLoaded()
		then
		sounds:playSound("vaporeon_cry", player:getPos(), 1, 1)
	end
end
local cryButton = keybinds:newKeybind("Cry", "key.keyboard.v", false)
cryButton.press = pings.vaporeoncry
--vapo
renderer:setOffsetCameraPivot(0, -0.8, 0)
renderer:setEyeOffset(0, -0.8, 0)
--vaporeon
tail = {models.vaporeon.vaporeon.Body.torso.hips.tail, models.vaporeon.vaporeon.Body.torso.hips.tail.tail2, models.vaporeon.vaporeon.Body.torso.hips.tail.tail2.tail3}
squapi.tails(tail)
squapi.blink(animations.vaporeon.blink)
squapi.ear(models.vaporeon.vaporeon.Body.torso.Head.ear_left,models.vaporeon.vaporeon.Body.torso.Head.ear_right,false,0,0.25,true)
squapi.taurPhysics(
models.vaporeon.vaporeon.Body.torso,
models.vaporeon.vaporeon.Body.FrontLegs,
models.vaporeon.vaporeon.Body.torso.hips.BackLegs
)
--squapi.crouch(animations.vaporeon.crouch)
--vapo vaporeon
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