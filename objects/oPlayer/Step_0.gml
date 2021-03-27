//  controle

press_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
press_left = keyboard_check(vk_left) || keyboard_check(ord("Q"))
press_jump = keyboard_check_pressed(vk_space);  

//mouv perso

var move = press_right - press_left 
hspd = move * walkspd; 
vspd = vspd + grav;

if (place_meeting(x, y + 1, oMur)) && (press_jump) 
{
	vspd = -10;
}
//collision h

if (place_meeting(x + hspd, y, oMur))
{
	while (!place_meeting(x + sign(hspd), y, oMur))
    { 
		x = x + sign(hspd);
	}
	hspd = 0;	
}

x = x + hspd;

//collision V

if (place_meeting(x, y + vspd, oMur))
{
	while (!place_meeting(x, y + sign(vspd), oMur))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd;

//Anim 

if(!place_meeting(x, y+1, oMur))
{
	sprite_index = sPlayer_jump;
}
else
{
	if (hspd == 0)
    {
	sprite_index = sPlayer;
	} 
	else
	{
	sprite_index = sPlayer_run;
	}
	
}

if hspd != 0
{
	image_xscale = sign(hspd)
}