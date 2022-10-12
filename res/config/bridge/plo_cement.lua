local bridgeutil = require "bridgeutil"

function data()

local dir = "bridge/cement/"

local railing = { 
	dir .. "railing_rep_side.mdl", 
	dir .. "railing_rep_side.mdl", 
	dir .. "railing_rep_side_no_side.mdl", 
	dir .. "railing_rep_rep.mdl", 
	dir .. "railing_rep_rep.mdl",

	dir .. "railing_rep_side2.mdl", 
	dir .. "railing_rep_side2.mdl", 
	dir .. "railing_rep_side2_no_side.mdl",
 }

local config = {
	railingBegin = railing,
	railingRepeat = railing,
	railingEnd = railing,
}

return {
	name = _("Cement bridge (ohne)"),

	yearFrom = 1970,
	yearTo = 0,

	carriers = { "RAIL" , "ROAD"},

	speedLimit = 320.0 / 3.6,
	
	pillarLen = 100,
	
	pillarMinDist = 6.0,
	pillarMaxDist = 132.0,
	pillarTargetDist = 48.0,

	cost = 400.0,	
	
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
