// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStoreBase, Store {
  Computed<bool> _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid))
          .value;
  Computed<bool> _$isPassValidComputed;

  @override
  bool get isPassValid =>
      (_$isPassValidComputed ??= Computed<bool>(() => super.isPassValid)).value;
  Computed<Function> _$loginPressedComputed;

  @override
  Function get loginPressed =>
      (_$loginPressedComputed ??= Computed<Function>(() => super.loginPressed))
          .value;

  final _$obscureAtom = Atom(name: '_LoginStoreBase.obscure');

  @override
  bool get obscure {
    _$obscureAtom.context.enforceReadPolicy(_$obscureAtom);
    _$obscureAtom.reportObserved();
    return super.obscure;
  }

  @override
  set obscure(bool value) {
    _$obscureAtom.context.conditionallyRunInAction(() {
      super.obscure = value;
      _$obscureAtom.reportChanged();
    }, _$obscureAtom, name: '${_$obscureAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_LoginStoreBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_LoginStoreBase.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_LoginStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$loggedInAtom = Atom(name: '_LoginStoreBase.loggedIn');

  @override
  bool get loggedIn {
    _$loggedInAtom.context.enforceReadPolicy(_$loggedInAtom);
    _$loggedInAtom.reportObserved();
    return super.loggedIn;
  }

  @override
  set loggedIn(bool value) {
    _$loggedInAtom.context.conditionallyRunInAction(() {
      super.loggedIn = value;
      _$loggedInAtom.reportChanged();
    }, _$loggedInAtom, name: '${_$loggedInAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction();
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeObscure() {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction();
    try {
      return super.changeObscure();
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'obscure: ${obscure.toString()},email: ${email.toString()},password: ${password.toString()},loading: ${loading.toString()},loggedIn: ${loggedIn.toString()},isEmailValid: ${isEmailValid.toString()},isPassValid: ${isPassValid.toString()},loginPressed: ${loginPressed.toString()}';
    return '{$string}';
  }
}
