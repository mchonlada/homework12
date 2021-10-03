import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage("assets/images/bghome.jpg"),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(80.0),
                  child: Container(
                    width: 180.0,
                    height: 180.0,
                    child: Image.asset('assets/images/pro.jpg'),
                  )
              ),

              Text(
                'Chonlada Savatkittikul',
                style: TextStyle(fontSize: 30.0, color: Colors.white,backgroundColor: Colors.black),
              ),
              Text(
                'Savatkittikul_c@silpakorn.edu',
                style: TextStyle(fontSize: 20.0, color: Colors.white,backgroundColor: Colors.black),
              ),
            ],
          ),
        ),),

    );
  }
}
