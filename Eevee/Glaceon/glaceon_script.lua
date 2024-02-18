vanilla_model.PLAYER:setVisible(false)
vanilla_model.ELYTRA:setVisible(false)
vanilla_model.ARMOR:setVisible(false)
vanilla_model.CAPE:setVisible(false)
nameplate.ENTITY:setPivot(0,1.5,0)
local squapi = require("SquAPI")
--
function pings.glaceon_cry()
	animations.glaceon.cry:play()
	if player:isLoaded()
		then
		sounds:playSound("glaceon_cry", player:getPos(), 1, 1)
	end
end
local cryButton = keybinds:newKeybind("Cry", "key.keyboard.v", false)
cryButton.press = pings.glaceon_cry
--
squapi.blink(animations.glaceon.blink)
squapi.ear(models.glaceon.glaceon.body.torso.Head.ear_right,models.glaceon.glaceon.body.torso.Head.ear_left,true,400,0,false,0.1)
squapi.ear(models.glaceon.glaceon.body.torso.Head.hair_right,models.glaceon.glaceon.body.torso.Head.hair_left,true,400,0,false,0.1)
squapi.taurPhysics(
models.glaceon.glaceon.body,
models.glaceon.glaceon.body.FrontLegs,
models.glaceon.glaceon.body.BackLegs
)
tail = {models.glaceon.glaceon.body.torso.tail}
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