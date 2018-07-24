REM Create directores for organization of your fotos.
REM Following directories are created: Raw, Images, Archive, Private.
REM Moves the raw (.nef, .cr2, etc.) into the Raw directory.
REM Moves the jpg into the Images directory.
REM The main directory will keep the DNG and TIF files.
REM If you need space you can drop the Archive, Images, and Raw directories.

md Raw
md Images
md Archive
md Private
move *.NEF .\Raw
move *.CR2 .\Raw
move *.XMP .\Raw
REM JPG images are developed (in camera or by program) exported Raw files
move *.JPG .\Images
REM in the main folder we keep the 'original' maybe DNG or JPG (without Raw)
REM if we deleted the 'original' DNG file, we no longer need the 'export' JPG and the other .NEF or .CR2
pause