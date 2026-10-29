from kivy.app import App
from kivy.uix.label import Label

class SupercoderApp(App):
    def build(self):
        return Label(text='Supercoder Academy\nPath 10 Hari Fullstack\n01 SuperLearning\n02 HTML\n03 CSS\n04 JS Dasar\n05 JS Lanjut\n\nBy Rafi Pamekasan')

SupercoderApp().run()
