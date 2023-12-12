import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BattlePassPage extends StatefulWidget {
  const BattlePassPage({super.key});

  @override
  State<BattlePassPage> createState() => _BattlePassPageState();
}

class _BattlePassPageState extends State<BattlePassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Mind Pass',
            style:
                GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset('assets/images/background_image.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Text(
              //     'Mind Pass',
              //     style: GoogleFonts.roboto(
              //         fontSize: 25, fontWeight: FontWeight.bold),
              //   ),
              // ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Free',
                              style: GoogleFonts.roboto(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                    child: Image.asset(
                                      'assets/images/fifty_fifty.jpg',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  Positioned(
                                      top: 74,
                                      left: 74,
                                      child: Image.asset(
                                        'assets/images/check.png',
                                        width: 30,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            buildFreeContainer('assets/images/heart.png'),
                            SizedBox(
                              height: 10,
                            ),
                            buildFreeContainer('assets/images/ticket.png'),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // color: Color.fromRGBO(249,182, 26, 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 55,
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(249, 182, 26, 1),
                          child: Text(
                            '1',
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 85,
                        // ),
                        Container(
                          width: 1,
                          height: 83,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(249, 182, 26, 1),
                          child: Text(
                            '2',
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 85,
                        // ),
                        Container(
                          width: 1,
                          height: 83,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color.fromRGBO(249, 182, 26, 1),
                          child: Text(
                            '3',
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(249, 182, 26, 1)
                                .withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Premium',
                              style: GoogleFonts.roboto(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                    child: Image.asset(
                                      'assets/images/fifty_fifty.jpg',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  Positioned(
                                      top: 74,
                                      left: 74,
                                      child: Image.asset(
                                        'assets/images/lock.png',
                                        width: 30,
                                      )),
                                  Positioned(
                                      top: 70,
                                      left: 1,
                                      bottom: 5,
                                      child: Image.asset(
                                        'assets/images/first.png',
                                        width: 25,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            buildContainer('assets/images/heart.png'),
                            SizedBox(
                              height: 10,
                            ),
                            buildContainer('assets/images/ticket.png'),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Container buildContainer(String imgPath) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.0),
            child: Image.asset(
              imgPath,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
              top: 68,
              left: 68,
              child: Image.asset(
                'assets/images/lock.png',
                width: 30,
              )),
          Positioned(
              top: 70,
              left: 1,
              bottom: 5,
              child: Image.asset(
                'assets/images/first.png',
                width: 30,
              )),
        ],
      ),
    );
  }
}

Container buildFreeContainer(String imgPath) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: Stack(
      children: [
        Image.asset(
          imgPath,
          width: 100,
          height: 100,
        ),
        Positioned(
            top: 70,
            left: 70,
            child: Image.asset(
              'assets/images/check.png',
              width: 30,
            )),
      ],
    ),
  );
}
