# Renamer
A simple [AutoIt3](https://www.autoitscript.com/site/) script to rename all files in a folder with prefix of the parent folder's name
(FolderName)\(FileName) become (FolderName)\(FolderName)-(FileName)

## Example
```
Before:
Abc\1.txt
Abc\2.txt
Abc\3.txt
Abc\4.txt

After:
Abc\Abc-1.txt
Abc\Abc-2.txt
Abc\Abc-3.txt
Abc\Abc-4.txt
```

## Run It?
Compile it yourself with AutoIt compiler from [official site](https://www.autoitscript.com/site/),
or just download the [latest release](https://github.com/nandakho/Renamer/releases/latest)
Then put the compiled executable to the target folder where you want to rename the files, and execute it there
