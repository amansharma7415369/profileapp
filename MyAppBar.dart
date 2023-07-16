import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    photoadded() {
      debugPrint('Photo Added');
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 104, 100, 99),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: const Icon(Icons.chat),
      ),
      body: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 252, 250, 249),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=765&q=80'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  debugPrint('Name Tapped');
                },
                onLongPress: () {
                  debugPrint('Name Long Pressed');
                },
                child: const Text(
                  "Aman Sharma",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("DevOps Engineer"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Color.fromARGB(255, 148, 132, 104),
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
              Container(
                child: Card(
                  color: const Color.fromARGB(255, 255, 222, 213),
                  child: ListTile(
                    onLongPress: () {},
                    title: const Text(
                      "+91 1234567890",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    leading: const Icon(Icons.call),
                    trailing: const Icon(Icons.cabin),
                  ),
                ),
              ),
              Container(
                child: Card(
                  color: const Color.fromARGB(255, 255, 222, 213),
                  child: ListTile(
                    onLongPress: () {},
                    title: const Text(
                      "amansharma7096@gmail.com",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    leading: const Icon(Icons.email),
                    trailing: const Icon(Icons.cabin),
                  ),
                ),
              ),
            ],
          )),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        toolbarHeight: 50,
        backgroundColor: Color.fromARGB(255, 146, 114, 105),
        title: const Text('My Profile'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: photoadded,
            icon: const Icon(Icons.add_a_photo),
          ),
        ],
      ),
    );
  }
}
