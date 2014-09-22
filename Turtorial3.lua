--Creating a Simple Script
require "AddAppDirectory"
AddAppDirectory()

--create a "teapot" transform to hold the teapot.ive model
teapot = Transform{
	--add teapot.ive to the teapot transform
	Model("teapot.ive")
}

--add teapot transform to the scene graph
RelativeTo.World:addChild(teapot)