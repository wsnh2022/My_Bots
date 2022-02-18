bluetooth_Toggle()
{
Run "ms-settings:bluetooth"			; Open Bluetooth https://ss64.com/nt/syntax-settings.html
Sleep 1000
Send,{Tab}{Space}
Sleep 7000
WinClose, A
}
return






:x*:bt::bluetooth_Toggle()			; bluetooth Toggle
$#n::Run ms-availablenetworks:        		; https://windowsloop.com/list-of-app-uri-commands-windows-10/
*PrintScreen::+#s                              	; TAKE SCEREENSHOT


; ●●●●●●●●●●●●●●●● Wrap With Delimiter Using Functions ●●●●●●●●●●●●●●●●
!'::AddDelimiters("""","""","Quotation")		            ; "Quotation" Marks
!5::AddDelimiters("%","%","Percent")		                ; %Percent% Sign
!9::AddDelimiters("(",")","Bracket")			            ; (Bracket)
![::AddDelimiters("[","]","Square Brackets")		        ; [Square Brackets]
~RShift & [::AddDelimiters("{{}","{}}","Parentheses")	    ; {Parentheses}
^+Q::AddDelimiters("{U+201C}","{U+201D}","Curly Quotes")	; “Curly Quotes”

AddDelimiters(left, right, types) 							; AddDelimiters %Function%
{	
	ToolTip, % left types right
	send % "^x" left "{CtrlDown}v{CtrlUp}" right
	Sleep, 5000
	ToolTip
}
return
