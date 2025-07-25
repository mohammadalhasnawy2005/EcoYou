import 'package:ecoyou/core/class/crud.dart';
import 'package:ecoyou/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postdata(String password, String email) async {
    var response = await crud.postData(AppLink.login, {
      "password": password,
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
