# Plymouth theme - Volumio 3

This is a theme for plymouth which only displays a simple images sequence. 
The current sequence is based on the official Volumio logo.


### Customization

1. Place mp4 source in the "input" folder. 
2. Run the mp4-to-png.sh file for the filename you are using. 
3. Transfer the image sequence to the root of the project folder.
4. Open volumio-player.script and change the lines containing
   {{NUMBER OF IMAGES IN SEQUENCE}}:
```
for (i = 0; i < {{NUMBER OF IMAGES IN SEQUENCE}}; i++)
  flyingman_image[i] = Image("progress-" + i + ".png");
flyingman_sprite = Sprite();
```
and 
```
flyingman_sprite.SetImage(flyingman_image[Math.Int(progress / 3) % {{NUMBER OF IMAGES}}]);
```

### Using theme

1. Update the volumio-player.script file.
2. Open volumio-player.plymouth and update in your name, descriptions, and new script paths etc and save as volumio-player.plymouth
3. Copy complete theme to /usr/share/plymouth/themes/.
