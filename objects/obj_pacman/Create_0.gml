var info = instance_create_depth(x,y-sprite_width-20,depth-1,obj_pacman_info)
info.Owner = self
self.InfoOBJ = info

self.Image_speed = 0.2

self.State = state_idle
self.Anim = anim_moving

self.Facing = facing_right


//eating
self.Eating_Ticks = 1
self.Eating_Steps = 0
self.EatingObj = -1

//moving
self.Moving_Ticks = 1
self.Moving_Steps = 0
self.MovingObj = -1

//Sleeping
self.Sleep_steps = 0


path = path_add()


self.PreviousX = x
self.PreviousY = y

self.AssignedTower = -1

self.PersonallyEaten = 0