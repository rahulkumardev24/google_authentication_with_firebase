// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
//
// class FacebookAuth extends StatefulWidget {
//   const FacebookAuth({super.key});
//
//   @override
//   State<FacebookAuth> createState() => _FacebookAuthState();
// }
//
// class _FacebookAuthState extends State<FacebookAuth> {
//   Future<UserCredential?> signInWithFacebook() async {
//     try {
//       // Trigger the sign-in flow
//       // final LoginResult loginResult = await FacebookAuth.instance.login();
//
//       // Check for status and handle errors
//       if (loginResult.status == LoginStatus.success) {
//         // Create a credential from the access token
//         final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(
//           // loginResult.accessToken!.token,
//         );
//
//         // Sign in to Firebase and return the UserCredential
//         return await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
//       } else if (loginResult.status == LoginStatus.cancelled) {
//         throw Exception('Facebook login cancelled by user.');
//       } else if (loginResult.status == LoginStatus.failed) {
//         throw Exception('Facebook login failed: ${loginResult.message}');
//       }
//     } catch (e) {
//       // Print the error for debugging purposes
//       print("Error during Facebook sign-in: $e");
//       throw Exception('An error occurred during Facebook sign-in: $e');
//     }
//     return null; // Return null if no credential is obtained
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Facebook Authentication")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () async {
//                 try {
//                   final userCredential = await signInWithFacebook();
//                   if (userCredential != null) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Logged in successfully!'))
//                     );
//                   }
//                 } catch (e) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Error: ${e.toString()}'))
//                   );
//                 }
//               },
//               child: const Text("Login with Facebook"),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
