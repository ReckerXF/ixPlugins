local PLUGIN = PLUGIN

function PLUGIN:OnTimeChanged( iHour, iMinute )
    local sTime = string.format( "%02d%02d", iHour, iMinute )
    local tSchedule = ix.scheduler.schedules[ sTime ]

    if tSchedule and tSchedule.onRun then
        ix.scheduler.current = tSchedule
        tSchedule.onRun()

        hook.Run( "OnScheduleChanged", tSchedule.name, sTime )
    end
end
