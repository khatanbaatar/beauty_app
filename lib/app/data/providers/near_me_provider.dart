import 'package:beauty_app/app/data/models/lut_user/lut_user.dart';
import 'package:beauty_app/app/data/models/organization.dart';
import 'base_provider.dart';

class NearmeProvider extends BaseProvider {
  NearmeProvider() : super('/mobile/near/me');

  Future<List<Organization>> getSalon() async {
    final response = await super.get('$endpoint/salon');
    List<Organization> data = [];
    response.body.forEach((v) {
      data.add(Organization.fromJson(v));
    });
    return data;
  }

  Future<List<LutUser>> getDesigner() async {
    final response = await super.get('$endpoint/designer');
    List<LutUser> data = [];
    response.body.forEach((v) {
      data.add(LutUser.fromJson(v));
    });
    return data;
  }
}
