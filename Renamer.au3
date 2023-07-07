#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         nandakho

 Script Function:
	Rename files with prefix based on parent's folder name.

#ce ----------------------------------------------------------------------------

#include <file.au3>
#include <FileConstants.au3>
Global $desti=@ScriptDir
$dest1=StringReplace($desti,"\","")
$destlen=StringLen($desti)-StringLen($dest1)
$desnum=$destlen+1
$dest=StringSplit($desti,"\")
Global $name=$dest[$desnum]
Global $filez = _FileListToArray (@ScriptDir&"\","*")
_FileCreate(@ScriptDir&"\list.txt")
_FileWriteFromArray(@ScriptDir&"\list.txt",$filez)
Global $oprlis=@ScriptDir&"\list.txt"
Global $oprmax=_FileCountLines($oprlis)
Global $oprlin=1
Global $filedec=FileReadLine($oprlis,$oprlin)
call(Renamer)
Func Renamer()
   If $oprlin=$oprmax then Call(kelar) EndIf
   $oprlin+=1
   Global $filedec=FileReadLine($oprlis,$oprlin)
   If $filedec=@ScriptName then call(Renamer) EndIf
   FileMove($filedec&".*",$name&" - "&$filedec)
   call(Renamer)
EndFunc
Func Kelar()
   FileDelete(@ScriptDir&"\list.txt")
   Exit
EndFunc
