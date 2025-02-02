import numpy as np

destinasi = ["Bali", "Yogyakarta", "Bandung"]

bobot_kriteria = {
    "Harga": 0.3,
    "Keindahan Alam": 0.5,
    "Fasilitas Akomodasi": 0.2,
}

penilaian = {
    "Bali": {
        "Harga": 4,
        "Keindahan Alam": 5,
        "Fasilitas Akomodasi": 2,
    },
    "Yogyakarta": {
        "Harga": 3,
        "Keindahan Alam": 4,
        "Fasilitas Akomodasi": 3,
    },
    "Bandung": {
        "Harga": 3,
        "Keindahan Alam": 3,
        "Fasilitas Akomodasi": 4,
    },
}

skor = {}
for tempat in destinasi:
    nilai = 0
    for kriteria, rating in penilaian[tempat].items():
        bobot = bobot_kriteria[kriteria]
        nilai += rating**bobot
    skor[tempat] = nilai

destinasi_urut = sorted(skor, key=skor.get, reverse=True)

for i, tempat in enumerate(destinasi_urut):
    print(f"{i+1}. {tempat}: {skor[tempat]}")
    

