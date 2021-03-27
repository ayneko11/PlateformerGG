//mouv ennemi

vspd = vspd + grav;





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
	sprite_index = sEnnemie;
	} 
	else
	{
	sprite_index = sEnnemie_run;
	}
	
}

if hspd != 0
{
	image_xscale = sign(hspd)
}