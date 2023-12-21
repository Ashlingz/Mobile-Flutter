import 'package:flutter/material.dart';
import '/people.dart';

class Detail extends StatelessWidget {
  final People people;
  const Detail(this.people, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(people.name),
        backgroundColor: people.gender == "F" ? Colors.pink : Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(people.photo), // Add your cover image asset
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), // Adjust opacity as needed
                  BlendMode.darken,
                ),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(people.photo), // Add your profile image asset
                  ),
                  const SizedBox(height: 8),
                  Text(
                    people.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("firstname              : ${people.name} un ${people.name}\n"
                        "phone number     : ${people.phonenumber}\n"
                        "email                     : ${people.email}\n"
                        "address                 : ${people.address}",

              style: const TextStyle(fontSize: 18),
            ),

          ),
        ],
      ),
    );
  }

}