import 'package:tpm_prak_latresponsi/api/base_network.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();

  Future<List<dynamic>> loadCharacterList() {
    return BaseNetwork.instance.getList("characters/");
  }

  Future<List<dynamic>> loadWeaponList() {
    return BaseNetwork.instance.getList("weapons/");
  }

}