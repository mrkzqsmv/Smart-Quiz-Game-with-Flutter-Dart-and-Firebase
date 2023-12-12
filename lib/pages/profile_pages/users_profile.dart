import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'İstifadəçilər',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      body: FutureBuilder(
        future:
            FirebaseFirestore.instance.collection('users').snapshots().first,
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? const Text('PLease Wait')
              : ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot? users = snapshot.data?.docs[index];
                    return Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'assets/images/user.jpg',
                                  width: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'EMAIL ADDRESS:${users!.get('email')}',
                                      style: GoogleFonts.quando(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'ID: ${users.id}',
                                      style: GoogleFonts.quando(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const CircleAvatar(
                                child: Icon(
                                  Icons.add,
                                ),
                              )
                            ],
                          )),
                    );
                  },
                );
        },
      ),
    );
  }
}
