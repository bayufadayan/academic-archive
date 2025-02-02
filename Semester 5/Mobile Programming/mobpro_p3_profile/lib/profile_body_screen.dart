import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBodyScreen extends StatelessWidget {
  const ProfileBodyScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    var unpakLightGrey = GoogleFonts.poppins(
        fontSize: 12.0, color: const Color.fromARGB(255, 139, 139, 153));
    var textLeft = GoogleFonts.poppins(
        fontSize: 14.0,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.normal);
    var textRight = GoogleFonts.poppins(
        fontSize: 14.0,
        color: const Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.bold);
    var detailLeft = GoogleFonts.poppins(
        color: const Color.fromARGB(255, 72, 72, 72),
        fontSize: 12.0,
        fontWeight: FontWeight.w500);
    var detailRight = GoogleFonts.poppins(
        color: const Color.fromARGB(160, 72, 72, 60),
        fontSize: 12.0,
        fontWeight: FontWeight.bold);
    return SizedBox(
      width: double.infinity,
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          Container(
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0, 4)),
              ],
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: Color.fromARGB(255, 117, 87, 153),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/photo_profile.jpg'),
              radius: 50.0,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 34)),
          Text(
            "Muhamad Bayu Fadayan",
            style: GoogleFonts.poppins(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 72, 72, 72)),
          ),
          Text(
            "bayu.065121100@unpak.ac.id",
            style: unpakLightGrey,
          ),
          Text(
            "085716042693",
            style: unpakLightGrey,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 117, 87, 153),
                borderRadius: BorderRadius.circular(12.0)),
            padding: const EdgeInsets.all(13.0),
            margin: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 37.0, bottom: 50.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('NPM', style: textLeft),
                    const Spacer(),
                    Text('065120033', style: textRight),
                    const SizedBox(width: 9.0),
                    const Icon(
                      Icons.copy,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 18.0,
                    ),
                  ],
                ),
                const Divider(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Row(
                  children: [
                    Text('Status Keaktifan', style: textLeft),
                    const Spacer(),
                    Text('Aktif', style: textRight),
                  ],
                ),
                const Divider(color: Color.fromARGB(255, 255, 255, 255)),
                Row(
                  children: [
                    Text('Program Studi', style: textLeft),
                    const Spacer(),
                    Text('Ilmu Komputer', style: textRight),
                  ],
                ),
                const Divider(color: Color.fromARGB(255, 255, 255, 255)),
                Row(
                  children: [
                    Text('Jenjang Pendidikan', style: textLeft),
                    const Spacer(),
                    Text('S1', style: textRight),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Row(children: [
              Text(
                "Nama Lengkap",
                style: detailLeft,
              ),
              const Spacer(),
              Text(
                "Muhamad Bayu Fadayan",
                style: detailRight,
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(color: Color.fromARGB(255, 117, 87, 153)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Row(children: [
              Text("Panggilan", style: detailLeft),
              const Spacer(),
              Text("Bay", style: detailRight),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(color: Color.fromARGB(255, 117, 87, 153)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Alamat Rumah", style: detailLeft),
                const SizedBox(height: 6.0),
                Text(
                    "Jl. Cangkrang, Dramaga, Bogor, Jawa Barat, Pulau Jawa, WIB, Indonesia",
                    style: detailRight),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(color: Color.fromARGB(255, 117, 87, 153)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35.0),
            child: Row(children: [
              Text("Kartu Mahasiswa", style: detailLeft),
              const Spacer(),
              const Icon(
                Icons.badge,
                color: Color.fromARGB(255, 117, 87, 153),
              )
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Divider(color: Color.fromARGB(255, 117, 87, 153)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/maroon');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 117, 87, 153),
              minimumSize: const Size(240.0, 40.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
              textStyle: GoogleFonts.poppins(fontSize: 14.0),
            ), 
            child: const Text('API Maroon', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/student');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 117, 87, 153),
              minimumSize: const Size(240.0, 40.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
              textStyle: GoogleFonts.poppins(fontSize: 14.0),
            ), 
            child: const Text('API Students', style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 5),
        ],
      ),
    );
  }
}
