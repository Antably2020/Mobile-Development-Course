
import 'package:exchange_app/models/userModel.dart';
import "package:firebase_auth/firebase_auth.dart" as au;

class Auth {
final au.FirebaseAuth _auth = au.FirebaseAuth.instance;

User? _userFromFirebase(au.User? user){
  if(user == null)
  { 
    return null;
  }
  return User(uid: user.uid, email: user.email); 
}
Stream<User?>? get user{
  return _auth.authStateChanges().map(_userFromFirebase);
}

Future<User?> login(String email, String password) async
{
  try{
final credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
return _userFromFirebase(credential.user);
  }
  on au.FirebaseAuthException catch(e)
  {
    print(e);
    
  }
}
Future<User?> signup(String email, String password) async
{
  try{
final credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
return _userFromFirebase(credential.user);
 }
  catch(e)
  {
    
    print(e);
    
  }
}

Future<void> signout() async
{
  try{
return await _auth.signOut();
 }
  catch(e)
  {
    print(e);
  }
}
}