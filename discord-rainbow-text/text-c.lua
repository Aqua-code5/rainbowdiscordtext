local function RGBRainbow( frequency )
	local result = {}
	local curtime = GetGameTimer() / 1000

	result.r = math.floor( math.sin( curtime * frequency + 0 ) * 127 + 128 )
	result.g = math.floor( math.sin( curtime * frequency + 2 ) * 127 + 128 )
	result.b = math.floor( math.sin( curtime * frequency + 4 ) * 127 + 128 )
	
	return result
end


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        SetTextFont(0) -- 0-4 different fonts 
        SetTextScale(0.35, 0.35) -- Size of text
        local rainbow = RGBRainbow( 1 )
		SetTextColour( rainbow.r, rainbow.g, rainbow.b, 255 )
        SetTextOutline(1.5)
        SetTextEntry("STRING")
        AddTextComponentString("discord.gg/tWDKyD3d8P") -- text u can edit
        DrawText( 0.020, 0.780) -- x,y of the screen change were it is
        
        
    end
end)