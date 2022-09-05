# Remove annoyance script v1.2.4
# For Vortex 1.5.4 to 1.6.8
# Converted to executable with ps2exe (WIN-PS2EXE) (https://github.com/MScholtes/PS2EXE)

# Compact Style String
$CompactStyle = @"
// reduce paddings
.nav-tabs > li > a {
    padding: 2px 16px;
}

.xtable > .xtbody > .xtr > .xtd {
    padding: 0.25rem 0.75rem;
}

// show only icons on the toolbars unless the mouse cursor is hovered on them
.mainpage-header {
    height: 32px !important;
    transition: height 250ms ease 500ms;
    .menubar {
      height: 100%;
    }
}

.mainpage-header .btn {
  .button-text {
    opacity: 0;
    transition: opacity 250ms ease;

    position: absolute;
    top: 32px;
    z-index: 1;
    background-color: $brand-bg;
    border: $border-width solid $border-color;
    padding: 8px;
    font-size: 1em;
    pointer-events: none;
  }

  &:hover .button-text {
    opacity: 1;
    transition: opacity 250ms ease 100ms;
  }
}


// if the sidebar is collapsed, show the tab name when hovering
// (this conflicts a bit with the tooltip which we can't disable from css)
#main-nav-sidebar.sidebar-compact #main-nav-container {
    overflow: visible;
    z-index: 3;
}

.sidebar-compact .nav-pills > li > a {
    overflow: visible;
}

.sidebar-compact .main-nav-group > li:hover a::after {
    content: attr(title);
    background-color: $brand-bg;
    margin-left: 8px;
    padding: 8px 8px;
    border: $border-width solid $border-color;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 100%;
    display: flex;
    align-items: center;
}

// category names can be very long and force a line break.
// instead, limit the width and display ellipsis as necessary
.xtd.table-mods.cell-category {
    white-space: nowrap;
    max-width: 20em;
    overflow-x: hidden;
    text-overflow: ellipsis;
}

.toolbar-app-region .container-quicklaunch .tool-icon-container {
    width: 200px;
    height: 52px;
}

.container-quicklaunch .tool-icon-container {
    height: 52px;
}

#main-toolbar.toolbar-app-region {
    height: unset;
}

#main-toolbar.toolbar-app-region .main-toolbar-right {
    margin-bottom: auto;
    margin-right: 146px;
    border-right: $border-width solid $border-color;
}

#main-toolbar .nexus-main-banner div {
    font-size: xx-small;
}

#main-toolbar .nexus-main-banner div:first-child {
    font-size: 1.4em;
    margin-bottom: 0;
}

#main-toolbar .nexus-main-banner .right-center {
    font-size: inherit;
}
"@

#Compact Variable String
$CompactVariable = @"
`$brand-primary: #D78F46;
`$brand-highlight: #00C1FF;
`$brand-success: #86B951;
`$brand-info: #00C1FF;
`$brand-warning: #FF7300;
`$brand-danger: #FF1C38;
`$brand-bg: #2A2C2B;
`$brand-menu: #4C4C4C;
`$brand-secondary: #D78F46;
`$brand-clickable: #D78F46;
`$text-color: #eeeeee;
`$text-color-disabled: #bbbbbb;
`$link-color: #D78F46;
`$font-size-base: 12px;
`$hidpi-scale-factor: 100%;
`$font-family-base: "Roboto";
`$font-family-headings: "Montserrat";
`$gutter-width: 16px;
`$dark-theme: true;
"@


#Contrast Style String
$ContrastStyle = @"
// reduce paddings
.nav-tabs > li > a {
  padding: 2px 16px;
}

.xtable > .xtbody > .xtr > .xtd {
  padding: 0.25rem 0.75rem;
}

// show only icons on the toolbars unless the mouse cursor is hovered on them
.mainpage-header {
  height: 32px !important;
  transition: height 250ms ease 500ms;
  .menubar {
    height: 100%;
  }
}

.mainpage-header .btn {
  .button-text {
    opacity: 0;
    transition: opacity 250ms ease;

    position: absolute;
    top: 32px;
    z-index: 1;
    background-color: $brand-bg;
    border: $border-width solid $border-color;
    padding: 8px;
    font-size: 1em;
    pointer-events: none;
  }

  &:hover .button-text {
    opacity: 1;
    transition: opacity 250ms ease 100ms;
  }
}

// if the sidebar is collapsed, show the tab name when hovering
// (this conflicts a bit with the tooltip which we can't disable from css)
#main-nav-sidebar.sidebar-compact #main-nav-container {
  overflow: visible;
  z-index: 3;
}

.sidebar-compact .nav-pills > li > a {
  overflow: visible;
}

.sidebar-compact .main-nav-group > li:hover a::after {
  content: attr(title);
  background-color: $brand-bg;
  margin-left: 8px;
  padding: 8px 8px;
  border: $border-width solid $border-color;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 100%;
  display: flex;
  align-items: center;
}

// category names can be very long and force a line break.
// instead, limit the width and display ellipsis as necessary
.xtd.table-mods.cell-category {
  white-space: nowrap;
  max-width: 20em;
  overflow-x: hidden;
  text-overflow: ellipsis;
}

.toolbar-app-region .container-quicklaunch .tool-icon-container {
  width: 200px;
  height: 52px;
}

.container-quicklaunch .tool-icon-container {
  height: 52px;
}

#main-toolbar.toolbar-app-region {
  height: unset;
}

#main-toolbar.toolbar-app-region .main-toolbar-right {
  margin-bottom: auto;
  margin-right: 146px;
  border-right: $border-width solid $border-color;
}

#main-toolbar .nexus-main-banner div {
  font-size: xx-small;
}

#main-toolbar .nexus-main-banner div:first-child {
  font-size: 1.4em;
  margin-bottom: 0;
}

#main-toolbar .nexus-main-banner .right-center {
  font-size: inherit;
}

.table-hover > .xtbody > .xtr:hover {
  background-color: #4c4c4c !important;
}

.has-success .control-label {
  filter: brightness(200%);
}

.has-error .control-label {
  filter: brightness(200%);
}
"@

#Contrast Variable String
$ContrastVariable = @"
`$brand-primary: #ad651c;
`$brand-highlight: #0099ff;
`$brand-success: #326500;
`$brand-info: #005c9a;
`$brand-warning: #ff7300;
`$brand-danger: #ad0000;
`$brand-bg: #060807;
`$brand-menu: #1c1c1c;
`$brand-secondary: #ad651c;
`$brand-clickable: #ad651c;
`$text-color: #ffffff;
`$text-color-disabled: #bbbbbb;
`$link-color: #ffc96a;
`$font-size-base: 13px;
`$hidpi-scale-factor: 100%;
`$font-family-base: "Roboto";
`$font-family-headings: "Montserrat";
`$gutter-width: 16px;
`$dark-theme: true;
`$gray: #595959;
"@

#Regular Dummy String
$RegularString = @"
This directory exists only to make the "default" option available without hard-coding an exception for it.
"@

#More Mods Remover
$MoreModsRemover = @"
#more-mods-container {
    display: none;
}
"@

#Remove Nexus Nags
$NagRemover = @"
.nexus-main-banner {
    display: none;
}
.nexus-download-banner {
    display: none;
}
#Go\ Premium {
    display: none;
}
"@

#Remove Collections Tab
$RemoveCollections = @"
#Collections {
    display: none;
}
"@

$NetworkInstallChoice = Read-Host -prompt "Would you like to use a networked install (Most recent versions of default themes/patches) (Y/N) or (y/n)"

    If ($NetworkInstallChoice -eq "Y" -or $NetworkInstallChoice -eq "y") {
        # Use TSL 1.2
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

        # Compact
        $CompactStyle = Invoke-WebRequest 'https://raw.githubusercontent.com/Nexus-Mods/extension-theme-switcher/master/themes/compact/style.scss' | Select-Object -Expand Content
        $CompactVariable = Invoke-WebRequest 'https://raw.githubusercontent.com/Nexus-Mods/extension-theme-switcher/master/themes/compact/variables.scss' | Select-Object -Expand Content

        #Contrast
        $ContrastStyle = Invoke-WebRequest 'https://raw.githubusercontent.com/Nexus-Mods/extension-theme-switcher/master/themes/contrast/style.scss' | Select-Object -Expand Content
        $ContrastVariable = Invoke-WebRequest 'https://raw.githubusercontent.com/Nexus-Mods/extension-theme-switcher/master/themes/contrast/variables.scss' | Select-Object -Expand Content

        #Default
        $ThemeDummyFile = Invoke-WebRequest 'https://raw.githubusercontent.com/Nexus-Mods/extension-theme-switcher/master/themes/default/dummy.txt' | Select-Object -Expand Content

        #Mods Remover
        $MoreModsRemover = Invoke-WebRequest 'https://raw.githubusercontent.com/Glaceon575/VortexNoGetMoreModsBox/main/Stylesheets/MoreModsRemover.css' | Select-Object -Expand Content

        #Remove Nag/Ads
        $NagRemover = Invoke-WebRequest 'https://raw.githubusercontent.com/Glaceon575/VortexNoGetMoreModsBox/main/Stylesheets/NagRemover.css' | Select-Object -Expand Content

        #Remove Collection
        $RemoveCollections = Invoke-WebRequest 'https://raw.githubusercontent.com/Glaceon575/VortexNoGetMoreModsBox/main/Stylesheets/RemoveCollection.css' | Select-Object -Expand Content
    }



$SharedInstallChoice = Read-Host -prompt "Is your Vortex a shared install? (Default is no) (Y/N) or (y/n)"

if ($SharedInstallChoice -eq "Y" -or $SharedInstallChoice -eq "y") {
    $VortexThemeFolder = $env:PROGRAMDATA + "\Vortex\themes\"
}
else {
    $VortexThemeFolder = $env:APPDATA + "\Vortex\themes\"
}

if (-Not (Test-Path -path $VortexThemeFolder)) {
    New-Item -ItemType "directory" -Path $VortexThemeFolder -Force | Out-Null
}

if (Test-Path -path $VortexThemeFolder) {
    Do {
        Write-Host "Please pick your theme"
        Write-Host "Enter only a number 1, 2, 3 or 4"
        Write-Host ""
        Write-Host "1. Default"
        Write-Host "2. Compact"
        Write-Host "3. Contrast"
        Write-Host "4. Append To Custom Theme"
        Write-Host ""
        $ThemeSelection = Read-Host -prompt "Your Selection"
    } until(($ThemeSelection -eq 1) -or ($ThemeSelection -eq 2) -or ($ThemeSelection -eq 3) -or ($ThemeSelection -eq 4))

    Clear-Host

    if ($ThemeSelection -eq 4) {
    Write-Host "Enter your custom theme name exactly, it will only work if the wording is exact"
    Write-Host "If the theme does not exist you will be reprompted. If you do not have one installed close the window"
    Write-Host "Here is a listing of all your current custom themes. Type it exactly, including capitalization."
    Write-Host ""
    Write-Host "Theme Folder:"
    Write-Host $VortexThemeFolder
    Write-Host ""
    Write-Host "Theme Names:"
    Get-ChildItem $VortexThemeFolder -Directory -Name
    Write-Host ""
    $ThemeName = Read-Host -prompt "Please enter the name of the theme you want to modify)"
    $TempThemeFolder = $VortexThemeFolder + $ThemeName
        while (((Test-Path -path $TempThemeFolder) -eq $false) -or ($ThemeName -eq "") -or ($ThemeName -eq $null) -or ($ThemeName -Like "*.*")) {
            $ThemeName = Read-Host -prompt "Please enter the name of the theme you want to modify)"
            $TempThemeFolder = $VortexThemeFolder + $ThemeName
        }
    } else {
        $ThemeName = Read-Host -prompt "Please enter the name for your theme (Default is `"NoGetMoreMods`")"
    }

    Clear-Host

    if (($ThemeName -eq "") -or ($ThemeName -eq $null) -or ($ThemeName -Like "*.*")) {
        $ThemeName = "NoGetMoreMods"
    }

    $ThemeFolder = $VortexThemeFolder + $ThemeName
    $ThemeStyleFile = $ThemeFolder + "\style.scss"
    $ThemeVariableFile = $ThemeFolder + "\variables.scss"
    $ThemeDummyFile = $ThemeFolder + "\dummy.txt"


    if ($ThemeSelection -ne 4) {
        if (Test-Path -path $ThemeFolder) {
            Remove-Item $ThemeFolder -Recurse
            
        }
        New-Item -ItemType "directory" -Path $ThemeFolder -Force
        New-Item $ThemeStyleFile -Force
        New-Item $ThemeVariableFile -Force
    }
    Write-Host ""
    Write-Host $MoreModsRemover

    if ($ThemeSelection -eq 1) {
        New-Item $ThemeDummyFile
        $MoreModsRemover | Out-File -FilePath $ThemeStyleFile -Append -Encoding UTF8
        $RegularString | Out-File -FilePath $ThemeDummyFile -Append -Encoding UTF8
    }
    if ($ThemeSelection -eq 2) {
        $CompactStyle | Out-File -FilePath $ThemeStyleFile -Append -Encoding UTF8
        $MoreModsRemover | Out-File -FilePath $ThemeStyleFile -Append -Encoding UTF8
        $CompactVariable | Out-File -FilePath $ThemeVariableFile -Append -Encoding UTF8
    }
    if ($ThemeSelection -eq 3) {
        $ContrastStyle | Out-File -FilePath $ThemeStyleFile -Append -Encoding UTF8
        $MoreModsRemover | Out-File -FilePath $ThemeStyleFile -Append -Encoding UTF8
        $ContrastVariable | Out-File -FilePath $ThemeVariableFile -Append -Encoding UTF8
    }
    if ($ThemeSelection -eq 4) {
        $MoreModsRemover | Out-File -FilePath $ThemeStyleFile -Append -Encoding UTF8
    }

    Write-Host ""
    Write-Host "Would you like to remove some nexus nag prompts (All go premium buttons)"
    $NagSelection = Read-Host -prompt "(Y/N) or (y/n)"

    If ($NagSelection -eq "Y" -or $NagRemover -eq "y") {
        Write-Host ""
        Write-Host $NagRemover
        $NagRemover | Out-File -FilePath $ThemeStyleFile -Append -Encoding UTF8
    }

    Write-Host ""
    Write-Host "Would you like to remove the collections button"
    $CollectionsSelection = Read-Host -prompt "(Y/N) or (y/n)"

    If ($CollectionsSelection -eq "Y" -or $CollectionsSelection -eq "y") {
        Write-Host ""
        Write-Host $RemoveCollections
        $RemoveCollections | Out-File -FilePath $ThemeStyleFile -Append -Encoding UTF8
    }
        
    Write-Host ""
    Write-Host "Have a good day :)"
    Write-Host "Hit X or Enter"
    Read-Host

} else {
    Write-Host "If you see this text, report it to me on nexus with details!"
}