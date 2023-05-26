import 'package:flutter/material.dart';
import 'package:tpm_prak_latresponsi/api/api_data_source.dart';

class WeaponPage extends StatefulWidget {
  const WeaponPage({Key? key}) : super(key: key);

  @override
  State<WeaponPage> createState() => _WeaponPageState();
}

class _WeaponPageState extends State<WeaponPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weapons List'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: FutureBuilder<List<dynamic>>(
          future: ApiDataSource.instance.loadWeaponList(),
          builder: (context, snapshot) {
            if(snapshot.hasData && snapshot.data != null) {
              final weaponList = snapshot.data!;
              return ListView.builder(
                itemCount: weaponList.length,
                itemBuilder: (context, index) {
                  final weaponName = weaponList[index];
                  return Card(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(20),
                      leading: Image.network(
                        'https://api.genshin.dev/weapons/$weaponName/icon',
                      ),
                      title: Text(weaponName),
                    ),
                  );
                },
              );
            }
            else if(snapshot.hasError) {
              return const Center(
                child: Text('Error in fetching data'),
              );
            }
            else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
