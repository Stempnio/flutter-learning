import 'package:credentials_repository/credentials_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_keeper/app/app.dart';
import 'package:password_keeper/credentials/bloc/credentials_bloc.dart';
import 'package:password_keeper/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
  ]);

  final credentialsRepository = CredentialsRepository();

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(
        create: (context) => credentialsRepository,
      ),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CredentialsBloc(credentialsRepository: credentialsRepository)
                ..add(
                  CredentialsFetched(),
                ),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: const App(),
    ),
  ));
}
