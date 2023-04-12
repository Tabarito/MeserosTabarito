import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TabaritoMeseroFirebaseUser {
  TabaritoMeseroFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TabaritoMeseroFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TabaritoMeseroFirebaseUser> tabaritoMeseroFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TabaritoMeseroFirebaseUser>(
      (user) {
        currentUser = TabaritoMeseroFirebaseUser(user);
        return currentUser!;
      },
    );
