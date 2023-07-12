import 'package:flutter/material.dart';
import 'package:login_page/global_components/waves.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back),),
        title: const Text('Profile',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children:[SizedBox(height: MediaQuery.of(context).size.height, child: const Positioned.fill(child: WavesBackground(),)), SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/kirikopfp.jpeg'),
                  ),
                ),
                const SizedBox(height: 10),
                const Text('Kiriko',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text(
                  'Computer Science',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 18),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 50, 221, 203),
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: const Text('Edit Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 10),
      
      
                ///MENU
                ListTile(
                  leading: Container(
                    width: 40, height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: const Icon(Icons.settings, color: Colors.white),
                  ),
                  title: const Text('Settings', style: TextStyle(color: Colors.white, fontSize: 18)),
                  trailing: Container(
                    width: 30, height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: const Icon(Icons.arrow_forward, size: 18.0, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
