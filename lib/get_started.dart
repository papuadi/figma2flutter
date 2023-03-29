import 'package:figma2flutter/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/img_started.png"),
              ),
            ),
          ),
          Container(
            height: 444,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.0),
                  ]),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Treat ',
                        style: GoogleFonts.poppins(
                          color: Color(0xffFFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Patient ',
                        style: GoogleFonts.poppins(
                          color: Color(0xff0094DC),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Like A ',
                        style: GoogleFonts.poppins(
                          color: Color(0xffFFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Queen',
                        style: GoogleFonts.poppins(
                          color: Color(0xff0094DC),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  'Explore the best our services with\nprofessional spesialist doctor',
                  style: GoogleFonts.poppins(
                    color: Color(0xffFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 500,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainMenuPage()));
                },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 48, vertical: 14),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(17)),
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
