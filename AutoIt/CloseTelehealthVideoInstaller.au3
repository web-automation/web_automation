$timer = TimerInit()
WinWait("Telehealth Video Setup", "", 10)
If Not WinActive("Telehealth Video Setup", "") Then WinActivate("Telehealth Video Setup", "")
WinWaitActive("Telehealth Video Setup", "", 10)
While (TimerDiff($timer) < 10000 And (Not ControlCommand("Telehealth Video Setup: Completed", "", "&Close", "IsEnabled", "")))
    Sleep(500)
WEnd
ControlClick("Telehealth Video Setup: Completed", "", "&Close")
