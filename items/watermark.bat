for /r "./Sprite" %%x in (*.png) do move "%%x" "./"
for /r "./Texture2D" %%x in (*.png) do move "%%x" "./"
for %%I in ( *.png ) do magick "%%I" ( watermark/watermarker.png -alpha set -channel A -evaluate multiply 0.05 +channel ) -set filename: "processed/%%t" -resize %%[fx:u[0].w]x -gravity center -composite +repage "%%[filename:].png"
rd /s /q "./Sprite"
rd /s /q "./Texture2D"