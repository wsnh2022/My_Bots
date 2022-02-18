
	bluetooth_Toggle()
	{
	Run "ms-settings:bluetooth"						            ; Open Bluetooth https://ss64.com/nt/syntax-settings.html
    Sleep 1000
    Send,{Tab}{Space}
    Sleep 7000
    WinClose, A
	} return
