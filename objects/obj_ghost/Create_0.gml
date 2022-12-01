image_alpha = 0

var eyes = instance_create_layer(x,y,layer,obj_ghost_eyes)
eyes.Owner = self
var eyeballs = instance_create_layer(x,y,layer,obj_ghost_eyeballs)
eyeballs.Owner = self

self.State = enemy_idle

//Idle
self.Idle_ticks = 0.5
self.Idle_steps = 0

self.Speed = 0.9

path = path_add()

self.StartX = x
self.StartY = y

self.Shake = false
self.Shake_steps = 0
self.Shake_cooldown = 3
self.Shake_cooldownS = 0

self.OriginX = x
self.OriginY = y

self.ReturnX = x
self.ReturnY = y

self.PreviousX = x
self.PreviousY = y

image_speed = 0.8

image_alpha = 0
self.FadeIn = true
self.FadeOut = false

self.Steps = 0 
self.Sleep_time = 8

self.Check = false
self.CSteps = 0