import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  bool obscure = true;

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @action
  void changeObscure() => obscure = !obscure;

  @action
  Future<void> login() async {
    loading = true;

    await Future.delayed(Duration(seconds: 5));

    loading = false;
    loggedIn = true;
    email = '';
    password = '';
  }

  @action
  void logout() {
    loggedIn = false;
  }

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
      .hasMatch(email);

  @computed
  bool get isPassValid => password.length > 6;

  @computed
  Function get loginPressed =>
      (isEmailValid && isPassValid && !loading) ? login : null;
}
