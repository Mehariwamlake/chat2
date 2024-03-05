import 'package:chat2/app/home/home_page.dart';
import 'package:chat2/on_generate_route.dart';
import 'package:chat2/user/presentation/cubit/auth/auth_cubit.dart';
import 'package:chat2/user/presentation/cubit/credential/credential_cubit.dart';
import 'package:chat2/user/presentation/cubit/user/user_cubit.dart';
import 'package:chat2/user/presentation/pages/credential/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart' as di;
import 'dart:ui_web' as ui;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAGRBHbcYFkgmnQE25yhdTWgcVvuTTJEwk",
          authDomain: "chat2-b65ae.firebaseapp.com",
          projectId: "chat2-b65ae",
          storageBucket: "chat2-b65ae.appspot.com",
          messagingSenderId: "1094100593900",
          appId: "1:1094100593900:web:9f37cca65ed024e9a409c9",
          measurementId: "G-44Y9RRJ81L"));
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
            create: (_) => di.sl<AuthCubit>()..appStarted()),
        BlocProvider<CredentialCubit>(create: (_) => di.sl<CredentialCubit>()),
      ],
      child: MaterialApp(
        title: 'Group Chat',
        onGenerateRoute: OnGenerateRoute.route,
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        theme: ThemeData(primarySwatch: Colors.green),
        routes: {
          "/": (context) {
            return BlocBuilder<UserCubit, State>(
              builder: (context, authState) {
                if (authState is Authenticated) {
                  return HomePage(
                    uid: authState.uid,
                  );
                } else {
                  return LoginPage();
                }
              },
            );
          }
        },
      ),
    );
  }
}
