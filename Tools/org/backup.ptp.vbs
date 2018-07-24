oShell := ComObjCreate("Shell.Application")
oComputer := oShell.Namespace("::{20d04fe0-3aea-1069-a2d8-08002b30309d}")
For item in oComputer.Items
 If (item.Type == "Fotocamera digitale"){
	;Dieser PC\D90\Wechselmedien\DCIM\105NCD90
	;\External Memory\DCIM\111_FUJI
     oCamera := item.Path "\Wechselmedien\DCIM\105NCD90"
     intOptions = 256 + 128
     objFolder_Source := oShell.NameSpace(oCamera).Items()
     objFolder_Target := oShell.NameSpace("C:\temp")
     objFolder_Target.CopyHere(objFolder_Source, intOptions)
}
ObjRelease(oShell)
ExitApp