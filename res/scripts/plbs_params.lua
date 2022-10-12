local ParamBuilder = require "parambuilder_v1_1"

local trackStreetSpacingValues = {8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 25, 30, 40, 50, 60, 70, 80, 90, 100}
local lengthValues = {30, 60, 80, 100, 120, 160, 200, 240, 280, 300, 320, 360, 400, 440, 480, 560}
local streetSpacingValues = ParamBuilder.range(30, 120, 10)
table.insert(streetSpacingValues, 1, 13)
table.insert(streetSpacingValues, 2, 16)

local params = {
	streetType = ParamBuilder.Button("plbsStreetType", _("Street type"), {_("SS"), _("S1S"), _("MS"), _("M1S"), _("LS"), _("L1S"), _("SC"), _("S1C"), _("MC"), _("M1C"), _("LC"), _("L1C")}, 0),
	numberOfStreetsLeft = ParamBuilder.Button("plbsNumberOfStreetsLeft", _("Number of streets left"), ParamBuilder.range(0, 15, 1), 1),
	numberOfStreetsRight = ParamBuilder.Button("plbsNumberOfStreetsRight", _("Number of streets right"), ParamBuilder.range(0, 15, 1), 1),
	trackType = ParamBuilder.Button("plbsTrackType", _("Track Type"), {"Standard", "High-speed","Stadtbahn 80", "Stadtbahn100"}, 0),
	catenary = ParamBuilder.Button("plbsCatenary", _("Catenary"), {_("no"), _("yes")}, 1),
	numberOfTracks = ParamBuilder.Button("plbsNumberOfTracks", _("Number of tracks"), ParamBuilder.range(0, 20, 1), 2),
	streetLeftHeight = ParamBuilder.Button("plbsStreetLeftHeight", _("Street left"), {_("Ground"), _("Bridge"), _("Embankment") , _("Tunnel")}, 0),
	streetRightHeight = ParamBuilder.Button("plbsStreetRightHeight", _("Street right"), {_("Ground"), _("Bridge"), _("Embankment") , _("Tunnel")}, 0),
	trackHeight = ParamBuilder.Button("plbsTrackHeight", _("Track"), {_("Street surface"), _("Ground"), _("Bridge"), _("Embankment") , _("Tunnel")}, 1),
	bridgeType = ParamBuilder.Button("plbsBridgeType", _("Bridge type"), {_("Cement"), _("Iron"), _("Suspension"), _("Cable"), _("Stone"), _("Invisible"), _("PStone"), _("PIron"), _("PCement")}, 0),
	bridgeHeight = ParamBuilder.Button("plbsBridgeHeight", _("Height of bridge"), ParamBuilder.range(2, 20, 2), 5),
	embankmentHeight = ParamBuilder.Button("plbsEmbankmentHeight", _("Height of embankment"), ParamBuilder.rangeSymm(16, 2), 7),
	tunnelHeight = ParamBuilder.Button("plbsTunnelHeight", _("Height of tunnel"), ParamBuilder.rangeSymm(16, 2), 0),
	streetSpacingLeft = ParamBuilder.Button("plbsStreetSpacingLeft", _("Street to street, center distance left"), streetSpacingValues, 3),
	streetSpacingRight = ParamBuilder.Button("plbsStreetSpacingRight", _("Street to street, center distance right"), streetSpacingValues, 3),
	trackSpacing = ParamBuilder.Button("plbsTrackSpacing", _("Track to track, center distance"), ParamBuilder.range(3, 5, .5), 4),
	trackLeftStreetSpacing = ParamBuilder.Button("plbsTrackLeftStreetSpacing", _("Street to track, center distance left"), trackStreetSpacingValues, 2),
	trackRightStreetSpacing = ParamBuilder.Button("plbsTrackRightStreetSpacing", _("Street to track, center distance right"), trackStreetSpacingValues, 2),
	lengthLeftStreet = ParamBuilder.Slider("plbsLengthLeftStreet", _("Length left street"), lengthValues, 0),
	lengthRightStreet = ParamBuilder.Slider("plbsLengthRightStreet", _("Length right street"), lengthValues, 0),
	lengthTrack = ParamBuilder.Slider("plbsLengthTrack", _("Length track"), lengthValues, 0),
}

params.paramsDef = { -- single common table with child tables as a workaround to hand over multiple return values to 'require'
	params.streetType.params,
	params.numberOfStreetsLeft.params,
	params.numberOfStreetsRight.params,
	params.trackType.params,
	params.catenary.params,
	params.numberOfTracks.params,
	params.streetLeftHeight.params,
	params.streetRightHeight.params,
	params.trackHeight.params,
	params.bridgeType.params,
	params.bridgeHeight.params,
	params.embankmentHeight.params,
	params.tunnelHeight.params,
	params.streetSpacingLeft.params,
	params.streetSpacingRight.params,
	params.trackSpacing.params,
	params.trackLeftStreetSpacing.params,
	params.trackRightStreetSpacing.params,
	params.lengthLeftStreet.params,
	params.lengthRightStreet.params,
	params.lengthTrack.params,
}

params.streetTypes = {
	"standard/town_small_new.lua",
	"standard/town_small_one_way_new.lua",
	"standard/town_medium_new.lua",
	"standard/town_medium_one_way_new.lua",
	"standard/town_large_new.lua",
	"standard/town_large_one_way_new.lua",
	"standard/country_small_new.lua",
	"standard/country_small_one_way_new.lua",
	"standard/country_medium_new.lua",
	"standard/country_medium_one_way_new.lua",
	"standard/country_large_new.lua",
	"standard/country_large_one_way_new.lua",
}

params.trackTypes = {
	"standard.lua",
	"high_speed.lua",
	"pl_standard_80.lua",
	"pl_high_speed_100.lua",	
}

params.bridgeTypes = {
	"cement.lua",
	"iron.lua",
	"suspension.lua",
	"cable.lua",
	"stone.lua",
	"lu_bridge_invisible.lua",
	"plo_stone.lua",
	"plo_iron.lua",
	"plo_cement.lua",
	}

return params