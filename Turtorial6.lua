--Animation
require "AddAppDirectory"
AddAppDirectory()

teapot = Transform{
	--add teapot.ive to the teapot transform
	Model("teapot.ive"),
	--set the position of the teapot transform (assumes 0,0,0 if nothing provided)
	position = {0,1,0},
	-- set the orientation (rotation) of teapot transform
	orientation = AngleAxis(Degrees(90),Axis{0,1,0})
}

--add teapot transform to the scene graph
RelativeTo.World:addChild(teapot)

Actions.addFrameAction(
	function()
		while true do
			current_position = teapot:getPosition()
			if current_position:x() < 1 then
				teapot:setPosition(current_position+Vec(.005,0,0))
			end
			Actions.waitForRedraw()
		end
	end
)