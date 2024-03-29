# Plymouth theme - Volumio 3

This is a theme for plymouth which only displays a simple images sequence. 
The current sequence is based on the official Volumio logo.


### Customization

1. Place mp4 video source file in the "input" folder. 
2. Update ffmpeg parameters in mp4-to-png.sh file with appropriate aspect ratio.
3. Update input mp4 file name in mp4-to-png.sh.
4. Run the mp4-to-png.sh shell script.
5. Transfer the image sequence to the root of your theme project folder.
6. Open volumio-player.script and change the lines containing
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
2. Open volumio-player.plymouth and update your theme name, description, script paths, etc and save as volumio-player.plymouth
3. Copy complete theme to /usr/share/plymouth/themes/.
