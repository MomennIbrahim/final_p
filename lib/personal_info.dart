import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Account',
              style: TextStyle(fontSize: 32.5, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        leading: IconButton(
          iconSize: 32.5,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 85.0,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                    radius: 80.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Card(
                    elevation: 4.0,
                    color: Colors.grey[200],
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        'Name:',
                        style: TextStyle(fontSize: 25.0),
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Ahmed Sayed Mohamed Derbalah',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  width: double.infinity,
                  child: Card(
                    elevation: 4.0,
                    color: Colors.grey[200],
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        'Year:',
                        style: TextStyle(fontSize: 25.0),
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Primary three',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  width: double.infinity,
                  child: Card(
                    elevation: 4.0,
                    color: Colors.grey[200],
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        'Parents:',
                        style: TextStyle(fontSize: 25.0),
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Father: Sayed Mohamed Derbalah',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    'Mother: ....',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  width: double.infinity,
                  child: Card(
                    elevation: 4.0,
                    color: Colors.grey[200],
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        'Phone:',
                        style: TextStyle(fontSize: 25.0),
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Father: 01015943328',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    'Mother: 01015943328',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
