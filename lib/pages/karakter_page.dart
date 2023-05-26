import 'package:flutter/material.dart';
import 'package:tpm_prak_latresponsi/api/api_data_source.dart';
import 'package:tpm_prak_latresponsi/api/base_network.dart';

class KarakterPage extends StatefulWidget {
  const KarakterPage({Key? key}) : super(key: key);

  @override
  State<KarakterPage> createState() => _KarakterPageState();
}

class _KarakterPageState extends State<KarakterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character List'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: FutureBuilder<List<dynamic>>(
          future: ApiDataSource.instance.loadCharacterList(),
          builder: (context, snapshot) {
            if(snapshot.hasData && snapshot.data != null) {
              final characterList = snapshot.data!;
              return ListView.builder(
                itemCount: characterList.length,
                itemBuilder: (context, index) {
                  final characterName = characterList[index];
                  print(characterName);
                  return Card(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(20),
                      leading: Image.network('https://api.genshin.dev/characters/$characterName/icon-big'),
                      title: Text(characterName),
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
