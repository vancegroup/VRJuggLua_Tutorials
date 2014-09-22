--3D Model Position
require "AddAppDirectory"
AddAppDirectory()

teapot = Transform{
	--add teapot.ive to the teapot transform
	Model("teapot.ive"),
	--set the position of the teapot transform (assumes 0,0,0 if nothing provided)
	position = {0,1,0}
}

--add teapot transform to the scene graph
RelativeTo.World:addChild(teapot)