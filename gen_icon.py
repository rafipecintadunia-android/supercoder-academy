from PIL import Image, ImageDraw, ImageFont
img = Image.new('RGB', (1024,1024), (15,23,42))
draw = ImageDraw.Draw(img)
draw.rounded_rectangle([150,300,874,724], radius=200, fill=(56,189,248))
try:
  font = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", 350)
except:
  font = ImageFont.load_default()
draw.text((512,520), "</>", fill=(15,23,42), font=font, anchor="mm")
img.save("assets/icon.png")
print("ICON JADI 1024x1024")
