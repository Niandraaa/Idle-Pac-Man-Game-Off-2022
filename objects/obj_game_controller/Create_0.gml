//grid
global.mp_grid = 0

#macro tilesize 35

var boardWidth = ceil(global.GridAcross*35 / tilesize)
var boardHeight = ceil(global.GridDown*35 / tilesize)

	
self.StartingX = global.GridX
self.StartingY = global.GridY

global.mp_grid = mp_grid_create(global.GridX,global.GridY,boardWidth,boardHeight,tilesize,tilesize)


if obj_tile_wall.x 
{
mp_grid_add_instances(global.mp_grid,obj_tile_wall,true)
}