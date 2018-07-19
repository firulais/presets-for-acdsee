@ECHO OFF   

ECHO Windows Registry Editor Version 5.00 > merged.reg

FOR %%G IN (*.reg) DO (
    TYPE "%%G" | FINDSTR /V "Windows Registry Editor" >> merged.reg
)