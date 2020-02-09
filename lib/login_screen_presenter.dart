import 'package:hogu_king_m/data/rest_ds.dart';
import 'package:hogu_king_m/models/user.dart';

abstract class LoginScreenContract {
  void onLoginSuccess(User user);

  void onLoginError(String errorTxt);
}

class LoginScreenPresenter {
  LoginScreenContract _view;
  RestDataSource api = new RestDataSource();

  LoginScreenPresenter(this._view);

  doLogin(String id, String password) {
    api.login(id, password).then((User user) {
      _view.onLoginSuccess(user);
    }).catchError((Exception error) => {
      _view.onLoginError(error.toString())
    });
  }
}
