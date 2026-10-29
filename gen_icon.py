from PIL import Image, ImageDraw
img = Image.new('RGB', (1024,1024), (15,23,42))
draw = ImageDraw.Draw(img)
draw.rounded_rectangle([200,350,824,674], radius=180, fill=(56,189,248))
# bikin simbol </>
try:
  from PIL import ImageFont
  font = ImageFont.truetype("/system/fonts/DroidSans-Bold.ttf", 400)
except:
  font = ImageFont.load_default()
draw.text((512,512), "</>", fill=(15,23,42), font=font, anchor="mm")
img.save("assets/icon.png")
print("ICON JADI")
