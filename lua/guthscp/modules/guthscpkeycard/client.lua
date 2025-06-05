local guthscpkeycard = guthscp.modules.guthscpkeycard
local config = guthscp.configs.guthscpkeycard

surface.CreateFont("BoardTitle9", {
    font = "Bauhaus",
    size = 20,
})

surface.CreateFont("BoardTitle13", {
    font = "Bauhaus",
    size = 15,
})


--  draw door infos
local convar = CreateClientConVar( "guthscp_keycard_level_hud_enabled", "1", nil, nil, "Whenever you want to see the LVL of the door you're looking at on your screen" )
hook.Add( "HUDPaint", "guthscpkeycard:door_infos", function()
	if not convar:GetBool() then return end

	--  check local player
	local ply = LocalPlayer()
	if not IsValid( ply ) or not ply:Alive() then return end

	--  check entity
	local ent = ply:GetUseEntity()
	if not IsValid( ent ) then return end

	--  check level
	local level = guthscpkeycard.get_entity_level( ent )
	if level < 0 or not config.keycard_available_classes[ent:GetClass()] then return end

	--  draw title & level
	draw.SimpleText( guthscpkeycard.get_entity_title( ent ), "BoardTitle9", ScrW() / 2, ScrH() / 1.8 - 20, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )

	local level_text = guthscp.helpers.format_message(
		config.translation_hud_level,
		{
			level = level,
		}
	)
	draw.SimpleText( level_text, "BoardTitle13", ScrW() / 2, ScrH() / 1.8, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
end )