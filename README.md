# tabbed - generic tabbed interface

### Patches/Mods in this fork of suckless's tabbed:

* tabbed is hidden when not focused. (Easier to detect focused st terminal).
* -n sets the window class just like -c in st. (Works better with xdotool stuff)
* alpha patch

### Keybindings:

* Ctrl-Shift-Returns spawns new tab
* Ctrl-Shift-L/H to move left/right (like vim bindings)

### How I launch st scratchpad with tabbed:

`tabbed -c -n dwmalto  st -w`

```
-c : close tabbed program when there are no windows inside it
-n : sets window name and class
```

![screencast](screencast.gif)
