local discordlink = "https://discord.gg/linkhere"
local closedelay = 4

timer.Simple( 5, function()
	local frame, html = vgui.Create( "DFrame" ) 
	frame:KillFocus() 
	frame:SetAlpha(255) 
	frame:SetSize( 0,0 )
	frame:Center() 
	frame:MakePopup() 
	local html = vgui.Create( "HTML", frame ) 
	html:Dock( FILL ) html:KillFocus() 
	html:OpenURL(discordlink) 
	frame:Hide() 
	timer.Simple( closedelay, function() 
		frame:Close() 
	end )
end)
