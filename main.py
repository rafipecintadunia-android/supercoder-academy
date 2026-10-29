import flet as ft

def main(page: ft.Page):
    page.title = "Supercoder Academy"
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.bgcolor = "#0F172A"
    
    page.add(
        ft.Column(
            [
                ft.Text("Supercoder Academy", size=30, weight="bold", color="white"),
                ft.Text("Path 10 Hari Fullstack", size=18, color="#38BDF8"),
                ft.Divider(color="white"),
                ft.Text("01 SuperLearning", color="white"),
                ft.Text("02 HTML", color="white"),
                ft.Text("03 CSS", color="white"),
                ft.Text("04 JS Dasar", color="white"),
                ft.Text("05 JS Lanjut", color="white"),
                ft.Text("\nBy Rafi Pamekasan - Pamekasan", size=12, color="grey"),
                ft.ElevatedButton("Mulai Belajar!", bgcolor="#38BDF8", color="black")
            ],
            alignment=ft.MainAxisAlignment.CENTER,
            horizontal_alignment=ft.CrossAxisAlignment.CENTER
        )
    )

ft.app(target=main)
