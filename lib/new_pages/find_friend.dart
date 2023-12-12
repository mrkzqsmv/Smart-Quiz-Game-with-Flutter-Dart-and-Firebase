import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class FindFriend extends StatefulWidget {
  const FindFriend({super.key});

  @override
  State<FindFriend> createState() => _FindFriendState();
}

class _FindFriendState extends State<FindFriend> {
  var users = [
    {
      'imgPath': 'assets/images/author1.png',
      'name': 'Rustam Akifli',
      'username': '@rustamakifli'
    },
    {
      'imgPath': 'assets/images/author1.png',
      'name': 'Markaz Gasimov',
      'username': '@markazgasimov'
    },
    {
      'imgPath': 'assets/images/author1.png',
      'name': 'Aykhan Mahmudov',
      'username': '@aykhanmahmudov'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildRow(),
              buildTextFormField(),
              buildInvite(),
              buildPeopleYouMayKnowRow(),
              buildInviteUser('assets/images/author1.png','@rustamakifli','Rustam Akifli'),
              buildInviteUser('assets/images/author2.png','markazgasimov','Markaz Gasimov'),
              buildInviteUser('assets/images/author3.png','aykhanmahmudov','Aykhan Mahmudov'),
              buildInviteUser('assets/images/author1.png','@rustamakifli','Rustam Akifli'),
              buildInviteUser('assets/images/author2.png','markazgasimov','Markaz Gasimov'),
              buildInviteUser('assets/images/author3.png','aykhanmahmudov','Aykhan Mahmudov'),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildInviteUser(String imgPath,String userName,String name) {
    return Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: AssetImage(
                                imgPath, // Replace with the URL of your image
                              ),
                              fit: BoxFit.cover, // Adjust the fit as needed
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              name,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(userName),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [Icon(Icons.add), Text('Follow')],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
  }

  Padding buildInvite() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        child: Icon(
                      Icons.contact_emergency_outlined,
                      color: Colors.deepPurple,
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Search Contact',
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('Find friends by your phone number contacts')
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                child: Row(
                  children: [
                    CircleAvatar(
                        child: Icon(
                      Ionicons.logo_facebook,
                      color: Colors.deepPurple,
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Connect your Facebook',
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('Find friends contact via Facebook')
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white24),
                child: Row(
                  children: [
                    CircleAvatar(
                        child: Icon(
                      Icons.person,
                      color: Colors.deepPurple,
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Invite your Friends',
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('Invite your friend to play togetger')
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildRow() {
    return Container(
      padding: EdgeInsets.only(bottom: 20, top: 20),
      decoration: BoxDecoration(color: Colors.deepPurple.shade700),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Find Friends',
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Padding buildTextFormField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: 'Search ID or Friends Name',
          hintStyle: GoogleFonts.roboto(color: Colors.black),
          fillColor: Colors.grey.shade300,
          filled: true,
        ),
      ),
    );
  }

  buildPeopleYouMayKnowRow() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'People you may know',
            style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'See All >',
                style:
                    GoogleFonts.roboto(fontSize: 15, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
