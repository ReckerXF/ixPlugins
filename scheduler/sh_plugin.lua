local PLUGIN = PLUGIN

-- Plugin Init
PLUGIN.name = "Scheduler"
PLUGIN.settingsIcon = "clock"
PLUGIN.author = "Recker"
PLUGIN.description = "Adds more logic to the in-game time system by running scheduled events. Currently only supports hour and minute changes, not date."

ix.scheduler = ix.scheduler or {}
ix.scheduler.schedules = {}

-- Add the different schedules...
function ix.scheduler.Add( sTime )
    assert( type( sTime ) == "string", "Schedule time must be an HHMM string." )

    local sHour, sMinute = sTime:match( "^(%d%d)(%d%d)$" )
    assert( sHour and tonumber( sHour ) < 24 and tonumber( sMinute ) < 60,
        "Invalid schedule time " .. sTime .. ". Expected HHMM from 0000 to 2359." )

    local tSchedule = {}
    ix.scheduler.schedules[ sTime ] = tSchedule

    return tSchedule
end

-- Includes
ix.util.Include( "sh_schedules.lua" )
ix.util.Include( "sh_hooks.lua" )

-- Core timer that runs a hook when the time has changed.
local iLastMinute
timer.Create( "Ascension.Scheduler", 1, 0, function()
    local iHour, iMinute = ix.date.Get():gettime()
    local iMinuteOfDay = iHour * 60 + iMinute

    if iMinuteOfDay ~= iLastMinute then
        local iPreviousMinute = iLastMinute
        iLastMinute = iMinuteOfDay

        if iPreviousMinute ~= nil then
            PLUGIN:OnTimeChanged( iHour, iMinute )
        end
    end
end )
