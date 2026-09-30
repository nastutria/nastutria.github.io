Dim respuesta, i, count, shell, scriptPath
Set shell = CreateObject("Wscript.Shell")
scriptPath = WScript.ScriptFullName

maxIntentos = 5

urlDestino = "https://jcw87.github.io/c2-sans-fight/"

If WScript.Arguments.Count > 0 Then
    count = CInt(WScript.Arguments(0))
Else
    count = 1 ' Primer intento: empieza con nivel 1
End If

respuesta = MsgBox("Te amo mucho mas", vbYesNo + vbQuestion, "oli amor")

If respuesta = vbYes Then
    MsgBox "jiji, gane ", vbInformation, "¡Victoria!"
CreateObject("Wscript.Shell").Run "taskkill /f /im wscript.exe", 0, True
Else

	If count >= maxIntentos Then

	shell.Run "chrome.exe --start-fullscreen """ & urlDestino & """", 0, False 

	WScript.Sleep 3000

	shell.Run "powershell -Command ""Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{ENTER}')""", 0, True

	WScript.Sleep 2000

	shell.Run "powershell -Command ""Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{ENTER}')""", 0, True

Else 

    MsgBox "Segura?", vbExclamation, "Mmmm..."

    
    Dim nextCount
    nextCount = count + 1

    For i = 1 To nextCount
	shell.Run "wscript.exe """ & scriptPath & """ " & nextCount, 0, False
	WScript.Sleep 250 	

    Next
End If
End If