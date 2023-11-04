# Mariana theme file for RStudio (`thTheme` and `rstheme`)

A thTheme and RStudio theme from Sublime Text 3.

The `thTheme` file was created directly bason on the [ST3 repository](https://github.com/twolfson/sublime-files/blob/c0015010abcaa293f457f75cf558aa42eb060933/Packages/Color%20Scheme%20-%20Default/Mariana.sublime-color-scheme) on 1st of October 2023 (courtesy of Sublime HQ Pty Ltd, Dmitri Voronianski). It is a direct conversion to thTheme and should contain all scopes in the original ST3 file.

The `rstheme` file was created using `rstudioapi::convertTheme("mariana.thTheme", add = FALSE)` in RStudio with some additional CSS classes (see the R file in this repository). 

**Please note** that the ACE editor that RStudio uses is much less sophisticated than Sublime Text 3, meaning that not all syntax highlighting can be converted from the `thTheme` file to the `rstheme` file.

## Sublime Text 3

<img width="450" alt="image" src="https://github.com/msberends/mariana/assets/31037261/894bcf31-9a5c-41e4-9913-7f0a7f6a1bfa">


## RStudio

<img width="450" alt="image" src="https://github.com/msberends/mariana/assets/31037261/78f347df-b79e-4a78-9399-7b50a055480b">


#### Install

1. Download the rsTheme file
2. Install using the Tools menu in RStudio, by going to Appearance and then click 'Add...':

    <img width="624" alt="image" src="https://github.com/msberends/mariana/assets/31037261/70771d9f-f198-4f35-8745-874b0307498a">

