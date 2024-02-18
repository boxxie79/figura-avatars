vanilla_model.PLAYER:setVisible(false)
vanilla_model.ELYTRA:setVisible(false)
vanilla_model.ARMOR:setVisible(false)
vanilla_model.CAPE:setVisible(false)
nameplate.ENTITY:setPivot(0,1.5,0)
local squapi = require("SquAPI")
--
function pings.sylveon_cry()
	animations.sylveon.cry:play()
	if player:isLoaded()
		then
		sounds:playSound("sylveon_cry", player:getPos(), 1, 1)
	end
end
local cryButton = keybinds:newKeybind("Cry", "key.keyboard.v", false)
cryButton.press = pings.sylveon_cry
--
squapi.blink(animations.sylveon.blink)
squapi.ear(models.sylveon.sylveon.body.torso.Head.ear_right,models.sylveon.sylveon.body.torso.Head.ear_left,true,400,0,true,0.1)
squapi.taurPhysics(
models.sylveon.sylveon.body,
models.sylveon.sylveon.body.FrontLegs,
models.sylveon.sylveon.body.BackLegs
)
tail = {
	models.sylveon.sylveon.body.torso.tail,
	models.sylveon.sylveon.body.torso.tail.tail2,
	models.sylveon.sylveon.body.torso.tail.tail2.tail3
	-- models.sylveon.sylveon.body.torso.tail.tail2.tail3.tail4,
	-- models.sylveon.sylveon.body.torso.tail.tail2.tail3.tail4.tail5
}
squapi.tails(tail)
--custom sylveon tails
ear_ribbon_right = {
	models.sylveon.sylveon.body.torso.Head.bow_top.ear_ribbon_right,
	models.sylveon.sylveon.body.torso.Head.bow_top.ear_ribbon_right.ear_ribbon_right2,
	models.sylveon.sylveon.body.torso.Head.bow_top.ear_ribbon_right.ear_ribbon_right2.ear_ribbon_right3,
	models.sylveon.sylveon.body.torso.Head.bow_top.ear_ribbon_right.ear_ribbon_right2.ear_ribbon_right3.ear_ribbon_right4
}
ear_ribbon_left = {
	models.sylveon.sylveon.body.torso.Head.bow_top.ear_ribbon_left,
	models.sylveon.sylveon.body.torso.Head.bow_top.ear_ribbon_left.ear_ribbon_left2,
	models.sylveon.sylveon.body.torso.Head.bow_top.ear_ribbon_left.ear_ribbon_left2.ear_ribbon_left3,
	models.sylveon.sylveon.body.torso.Head.bow_top.ear_ribbon_left.ear_ribbon_left2.ear_ribbon_left3.ear_ribbon_left4
}
ribbon_right = {
	models.sylveon.sylveon.body.torso.ribbon_right,
	models.sylveon.sylveon.body.torso.ribbon_right.ribbon_right2,
	models.sylveon.sylveon.body.torso.ribbon_right.ribbon_right2.ribbon_right3,
	models.sylveon.sylveon.body.torso.ribbon_right.ribbon_right2.ribbon_right3.ribbon_right4
}
ribbon_left = {
	models.sylveon.sylveon.body.torso.ribbon_left,
	models.sylveon.sylveon.body.torso.ribbon_left.ribbon_left2,
	models.sylveon.sylveon.body.torso.ribbon_left.ribbon_left2.ribbon_left3,
	models.sylveon.sylveon.body.torso.ribbon_left.ribbon_left2.ribbon_left3.ribbon_left4
}
-- make them move
squapi.tails(ear_ribbon_left,2,15,5,2,1.2,0,0.3)
squapi.tails(ear_ribbon_right,2,15,5,2,1.2,0,0.8)
squapi.tails(ribbon_left,2,15,5,2,1.2,0,0.5)
squapi.tails(ribbon_right,2,15,5,2,1.2,0,0.1)
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