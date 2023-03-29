import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(String img, String name, String role) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xffFFFFFF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      img,
                      //"assets/img_doc1.png",
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        //'dr. Mawar N.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        role,
                        //'Spesialis Penyakit Dalam',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 55),
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/ic_star.png",
                            ))),
                  ),
                  Container(
                    child: Text(
                      '4.8',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xff308CF8),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 245, 245),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, \nRahmatullah Papuadi',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Stay Healthy With Our Spesialist Doctor',
                          style: GoogleFonts.poppins(
                            color: Color(0xff9698A9),
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img_profile.png")),
                      ),
                    ),
                  ],
                ),
                doctorCard("assets/img_doc1.png", "dr. Mawar N.",
                    "Spesialis Penyakit Dalam"),
                doctorCard("assets/img_doc2.png", "dr. Zizah Ayuningsih.",
                    "Spesialis Penyakit Saraf")
              ],
            ),
          )),
        ));
  }
}
