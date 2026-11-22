local PLUGIN = PLUGIN
local SCHEDULE

-- Curfew End
SCHEDULE = ix.scheduler.Add( "0500" )
SCHEDULE.name = "Inactive"
SCHEDULE.onRun = function() end

-- Ration Intake Period
SCHEDULE = ix.scheduler.Add( "0600" )
SCHEDULE.name = "Ration Intake Period"
SCHEDULE.onRun = function() end

-- End Ration Intake Period
SCHEDULE = ix.scheduler.Add( "0700" )
SCHEDULE.name = "Inactive"
SCHEDULE.onRun = function() end

-- Begin Workshift
SCHEDULE = ix.scheduler.Add( "0800" )
SCHEDULE.name = "Workshift Active"
SCHEDULE.onRun = function() end

-- End Workshift Period (Break)
SCHEDULE = ix.scheduler.Add( "1200" )
SCHEDULE.name = "Inactive"
SCHEDULE.onRun = function() end

-- Begin Workshift
SCHEDULE = ix.scheduler.Add( "1300" ) -- 1PM
SCHEDULE.name = "Workshift Active"
SCHEDULE.onRun = function() end

-- Begin Ration Intake Period
SCHEDULE = ix.scheduler.Add( "1600" ) -- 4PM
SCHEDULE.name = "Ration Intake Period"
SCHEDULE.onRun = function() end

-- End Ration Intake Period (Break)
SCHEDULE = ix.scheduler.Add( "1700" ) -- 5PM
SCHEDULE.name = "Inactive"
SCHEDULE.onRun = function() end

-- Begin Workshift
SCHEDULE = ix.scheduler.Add( "1800" ) -- 6PM
SCHEDULE.name = "Workshift Active"
SCHEDULE.onRun = function() end

-- End Workshift
SCHEDULE = ix.scheduler.Add( "2200" ) -- 10PM
SCHEDULE.name = "Inactive"
SCHEDULE.onRun = function() end

-- Curfew Start
SCHEDULE = ix.scheduler.Add( "0000" ) -- 12AM
SCHEDULE.name = "Curfew Active"
SCHEDULE.onRun = function() end
