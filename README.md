# Firulais Preset Collection for ACDSee Ultimate 2018 for Windows

# What is it?
ACDSee Presets to be used with Ultimate 2018 for Windows

# Who may use this?
* Users who want to apply some effect to their photos (fx presets)
* Users who want to use predefined extreme special effect on their photos (sx presets).
* Users that like to work with RAW photos, but want to have a starting point for their manual developing (nx and cx presets).
* Users who want or need to overcome or adjust technical shortcomings like grain, etc. for a predefined sensor (tx presets).
* Users who love to jazz up color photos to black&white (mx presets).

# Usage
It’s super simple. 
When developing an image choose the "Adjust develop settings" button (gear). 
Choose a preset to adjust the feel of your photo.

Best used on RAW photos or jpg taken with neutral camera preset.

Please share your experiences in the [Wiki](https://github.com/firulais/presets/wiki/Experiences)

# Installing
* Download the whole set of presets from the [Release](https://github.com/firulais/presets/releases) or select a preset *.reg file you like for download.
* Unzip the downloaded file.
* Double-click on your selected *.reg file (e.g. fxCinematic.reg) and follow accept the following dialogs.

# Download
[Download](https://github.com/firulais/presets/archive/v0.3.zip) the latest version.

# System Requirements
ACDSee Ultimate 2018 for Windows

# Documentation

**Preset Groups**
fx .. effect presets
sx .. special effect presets
nx .. Nik*n like effect presets
cx .. Can*n like effect presets
tx .. technical effect presets
mx .. mono and blach&white effect presets

**Presets**

* mxFilm...
These presets try to replicate the color frequency sensitivities of some analog B&W films.

* fxCineastic...
Cold color prestes.

Separation of effect presets and technical presets: 
Only the tx.. presets contain changes to the "Geometry" (Lens Correction, Rotate & Straighten, Perspective, Crop, Vignette Correction). The tx.. presets also contain “Detail” (Sharpening, Noise Reduction, Skin Tune) settings. T
his way you can mix the tx.. presets with the other presets.

# Release Notes
This is the initial release with just two Presets.

# License
All Presets are released under [MIT licence].
Details on Licensing can be found in the LICENSE.txt file.

# Credits
* picasalosch
http://picasalosch.blogspot.co.at/2012/11/presets-fur-acdsee.html

* Quentin Decaillet
https://fstoppers.com/education/how-color-grade-your-images-using-acdsee-ultimate-10-182876
https://fstoppers.com/originals/how-edit-landscape-start-finish-acdsee-photo-studio-ultimate-2018-209550

# Advanced Administration

* Export Presets:
1. Open Regedit.exe.
(use the Run Command if necessary)

2. Access the key:
HKEY_CURRENT_USER\Software\ACD Systems\EditLib\Version 1.0\Develop\Presets\Global

3. Click File > Export. Name and save the file.
This creates a .reg file which you can copy over e.g. to your new machine (using a thumb drive, for example).

* Import Presets:
1. On your new machine, double-click (launch) the .REG file you just created.

2. After you get past the requisite warning messages, RegEdit will copy your Develop settings into your new Registry.

http://forum.acdsee.com/forum/acdsee-pro/809-how-to-copy-presets-from-desktop-to-laptop

# Limitations and Known Issues
* This Presets may not work with the following applications:
* ACDSee Ultimate 2018 for IOS
* ACDSee Professional 2018
* ACDSee Standard 2018
* and of course all other applications
