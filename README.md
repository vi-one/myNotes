# Notes #

<!-- TOC -->
- [1. Mac Set-up](#1-mac-set-up)
- [2. Vi Editor](#2-vi-editor)
- [3. Sublime](#3sublime)
<!-- /TOC -->

## 1. Mac Set-up ##

Are you admin?
- Spotlight >> Users & Groups >> Password = Check `Allow user to admin this computer`.
- Run following on Terminal -

  ```sh
    sudo plutil -p /var/db/dslocal/nodes/Default/users/root.plist | grep -A 2 passwd
    // Below output means root user is not enabled.
      "passwd" => [
        0 => "*"
      ]
    // Below output means root user is enabled.
      "passwd" => [
        0 => "********"
    ]
  ```sh

- To enable root user
Spotlight >> Directory Utility = Click on the lock at the bottom to unlock it. = Edit menu >> Enable Root User

- Customize Finder
  1. Add following into left-side Favorites bar = Macintosh HD, JSH371, Repos, One Drive
  1. Show hidden files and folders using Terminal commands:
   `defaults write com.apple.finder AppleShowAllFiles YES`
	 `Killall Finder`
		Then, restart the Finder by holding down Option+Control and clicking the Finder icon in the Dock, then choose Relaunch
	
- Customize Trackpad
	1. Spotlight >> Trackpad >> Point & Click = Check Tap to Click
	1. Spotlight >> Trackpad >> Point & Click = Un-check Force Click and Haptic Feedback
	1. Spotlight >> Trackpad >> Point & Click = Increase Tracking Speed

- Customize Keyboard
	1. Spotlight >> Keyboard >> Keyboard = Check Use F1,F2  keys as standard keys
	2. Spotlight >> Keyboard >> Shortcuts = Double click Show Desktop and hit Cmd+D

- Customize Desktop & 3/6/18 vers
	1. Spotlight >> Desktop & Screensavers >> Screen Saver = Check 'Show with clock'
	2. Spotlight >> Desktop & Screensavers >> Screen Saver => Hot Corners
										 > Left Bottom = Desktop
										 > Right Bottom = Screen Saver
- Customize Locking
	1. Spotlight >> Keychain Access >> Preferences = Check 'Show keychain status in menu bar'
	2. You can select Keychain Access from Menu bar to lock the Mac
	
- Screen Saver
	1. From Finder >> Go To >> /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ (Sierra)
	High Sierra = /System/Library/CoreServices/
	2. Drag and Drop ScreenSaveEngine app on Dock

Self-Service Software list
	X Code (required for git command)
	Slack
	Sublime
SnagIt

## 2. Vi Editor ##

When editor is launched, it is COMMAND mode. When you invoke insert command (i), it is in INSERTION/EDIT mode.

**Command Mode:**
- Quit = :q
- Save and Exit = :wq
- Undo and Exit = :q!
- Delete all content = :1, $d

**Edit Mode**
- Insert before cursor (i), Insert before line (I)
- Go to the end of line = $
- Go to the top (H), middle (M), end (L) of the page.

**Deleting**
- Delete current line (dd)

## 3.Sublime ##

1. To select a block of positions in multiple lines:
  Press ALT and select area using mouse cursor

2. Find a match after the given word
```sh
// This will pick all the text that is after the word = BookTitle
(?<=BookTitle).*?(?=\s)   
```
