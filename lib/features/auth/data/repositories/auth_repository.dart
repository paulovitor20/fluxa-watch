import '../services/auth_service.dart';

class AuthRepository {
  final AuthService _service = AuthService();

  Future signIn(String email, String password) {
    return _service.signIn(email: email, password: password);
  }

  Future signUp(String email, String password) {
    return _service.signUp(email: email, password: password);
  }

  Future signOut() {
    return _service.signOut();
  }

  get currentUser => _service.currentUser;
}
