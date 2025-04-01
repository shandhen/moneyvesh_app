import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NotchAppDuplicateFirebaseUser {
  NotchAppDuplicateFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

NotchAppDuplicateFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NotchAppDuplicateFirebaseUser> notchAppDuplicateFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NotchAppDuplicateFirebaseUser>(
            (user) => currentUser = NotchAppDuplicateFirebaseUser(user));
