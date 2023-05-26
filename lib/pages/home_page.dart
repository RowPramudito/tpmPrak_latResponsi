import 'package:flutter/material.dart';
import 'package:tpm_prak_latresponsi/pages/karakter_page.dart';
import 'package:tpm_prak_latresponsi/pages/weapon_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://4.bp.blogspot.com/-iz7Z_jLPL6E/XQ8eHVZTlnI/AAAAAAAAHtA/rDn9sYH174ovD4rbxsC8RSBeanFvfy75QCKgBGAs/w1440-h2560-c/genshin-impact-characters-uhdpaper.com-4K-2.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          alignment: Alignment.center,
          color: Colors.black38,
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Image.asset('assets/images/logo-genshin.png'),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
                Container(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                    child: Text('Karakter'),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KarakterPage()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 120,
                  height: 40,
                  child: ElevatedButton(
                    child: Text('Weapon'),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WeaponPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
