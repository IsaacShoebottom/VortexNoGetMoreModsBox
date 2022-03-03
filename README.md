# Why?
The devs over at nexus for vortex decided to add a stupid prompt that is really annoying, so this is the fix.

# How to
To apply the edit to whichever theme you use, you must go into vortex settings, click the edit css manually button and add this code to the bottom of the file.

```css
#more-mods-container {
    scale: none;
}
```

This should scale the element down to zero and should pretty much solve the issue. If there are any new developments I'll update this repo.

# Script
The included powershell script will install the theme, remove the button and ask you if you want to remove ads.
