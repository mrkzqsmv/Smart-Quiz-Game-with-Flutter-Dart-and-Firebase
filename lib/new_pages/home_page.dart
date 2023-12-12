import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:tetbiq/new_pages/battle_pass_page.dart';
import 'package:tetbiq/quizes/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildRow(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BattlePassPage(),
                    ),
                  );
                },
                child: buildMindPass(),
              ),
              buildDiscoverRow('Yeni suallar kəşf et'),
              horizontalList1,
              buildDiscoverRow('Trending Categories'),
              const SizedBox(
                height: 7,
              ),
              categories,
              const SizedBox(
                height: 7,
              ),
              categories2,
              const SizedBox(
                height: 7,
              ),
              buildDiscoverRow('Top Authors'),
              const SizedBox(
                height: 7,
              ),
              authors,
              buildDiscoverRow('Trending Quiz'),
              const SizedBox(
                height: 7,
              ),
              horizontalList1,
            ],
          ),
        ),
      ),
    );
  }

  Padding buildMindPass() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade100),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildColumn('My Quiz', Icon(Icons.file_copy), '24'),
                buildColumn('Plays', Icon(Icons.play_circle_sharp), '4.3M'),
                buildColumn('Players', Icon(Icons.people), '14.2M'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mind Pass',
                      style: GoogleFonts.roboto(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1',
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          '5',
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          '10',
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          '15',
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w300),
                        ),
                        Text(
                          '20',
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade500),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width / 1.9,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade500),
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(''),
                            Text('|'),
                            Text('|'),
                            Text('|'),
                            Text(''),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildRow() {
    return Container(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(color: Colors.deepPurple),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/user.jpg',
                        width: 40,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi,Emily',
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        '@emyemily',
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.notification_add,
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildColumn(String title, Icon icon, String count) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            icon,
            const SizedBox(
              width: 6,
            ),
            Text(count),
          ],
        ),
      ],
    );
  }

  buildDiscoverRow(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Categories()));
          },
          child: Text(
            'See All >',
            style:
                GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget horizontalList1 = Container(
      // margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 260.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/first_img.png',
                            width: 120,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Walk Around the World\n with Geography Quiz',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/user.jpg',
                                  width: 15,
                                )),
                            Text('Rustam Akifli')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 240,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/second_img.png',
                            width: 120,
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Walk Around the World\n with Geography Quiz',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/user.jpg',
                                width: 15,
                              )),
                          Text('Rustam Akifli')
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/third_img.png',
                            width: 120,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Walk Around the World\n with Geography Quiz',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/user.jpg',
                                  width: 15,
                                )),
                            Text('Rustam Akifli')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ));

  Widget categories = Container(
    height: 50,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        const SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                Icons.cast_for_education,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Education')
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                Icons.science,
                color: Colors.green,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Science')
            ],
          ),
        ),
      ],
    ),
  );

  Widget categories2 = Container(
    height: 50,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        const SizedBox(
          width: 8,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                Ionicons.earth,
                color: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              Text('General Knowledge')
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Icon(
                Icons.games_outlined,
                color: Colors.red,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Games')
            ],
          ),
        ),
      ],
    ),
  );

  Widget authors = Container(
      // margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 230.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/author1.png',
                            width: 120,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/user.jpg',
                                  width: 15,
                                )),
                            Text('Rustam Akifli'),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add),
                                Text(
                                  'Follow',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/author3.png',
                            width: 120,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/user.jpg',
                                  width: 15,
                                )),
                            Text('Rustam Akifli'),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add),
                                Text(
                                  'Follow',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/author3.png',
                            width: 120,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 10,),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/user.jpg',
                                  width: 15,
                                )),
                            Text('Rustam Akifli'),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add),
                                Text(
                                  'Follow',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ));
}
