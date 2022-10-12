local bridgeutil = require "bridgeutil"

function data()

local dir = "bridge/iron/"

local config = {
	railingBegin = { 
		dir .. "railing_start_side.mdl", dir .. "railing_start_side.mdl", dir .. "railing_start_side_no_side.mdl", 
		dir .. "railing_rep_rep.mdl", dir .. "railing_rep_rep.mdl",
		dir .. "railing_end_side2.mdl", dir .. "railing_end_side2.mdl", dir .. "railing_end_side2_no_side.mdl", 
	},
	railingRepeat = { 
		dir .. "railing_rep_side.mdl", dir .. "railing_rep_side.mdl", dir .. "railing_rep_side_no_side.mdl", 
		dir .. "railing_rep_rep.mdl" , dir .. "railing_rep_rep.mdl",
		dir .. "railing_rep_side2.mdl", dir .. "railing_rep_side2.mdl", dir .. "railing_rep_side2_no_side.mdl", 
	},
	railingEnd = { 
		dir .. "railing_end_side.mdl", dir .. "railing_end_side.mdl", dir .. "railing_end_side_no_side.mdl", 
		dir .. "railing_rep_rep.mdl" , dir .. "railing_rep_rep.mdl",
		dir .. "railing_start_side2.mdl", dir .. "railing_start_side2.mdl", dir .. "railing_start_side2_no_side.mdl", 
	},
	
}

return {

	name = _("Iron bridge (ohne)"),

	yearFrom = 1910,
	yearTo = 0,

	carriers = { "RAIL" , "ROAD"},

	speedLimit = 180.0 / 3.6,
	
	pillarLen = 100,
	
	pillarMinDist = 6.0,
	pillarMaxDist = 132.0,
	pillarTargetDist = 48.0,

	cost = 300.0,
	
	materialsToReplace = {	
		streetPaving = {
			name = "street/country_new_medium_paving.mtl",
		},
		streetLane = {
			name = "street/new_medium_lane.mtl",
		},
		crossingLane = {
			name = "street/new_medium_lane.mtl",
		},
		sidewalkPaving = {
			name = "street/new_medium_sidewalk.mtl",
		},
		sidewalkBorderInner = {
			name = "street/new_medium_sidewalk_border_inner.mtl",		
			size = { 3, 0.6 }
		},
	},
	
	updateFn = bridgeutil.makeDefaultUpdateFn(config),
}
end
