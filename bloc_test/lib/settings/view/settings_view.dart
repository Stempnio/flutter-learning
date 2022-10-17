import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/settings/cubit/settings_cubit.dart';
import 'package:flutter_counter/settings/cubit/settings_state.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                BlocBuilder<SettingsCubit, SettingsState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Text("Username"),
                            Spacer(),
                            Text(state.username),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Password"),
                            Spacer(),
                            Text(state.password),
                          ],
                        ),
                      ],
                    );
                  },
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter new username",
                          ),
                          onSubmitted: (newUsername) => context
                              .read<SettingsCubit>()
                              .changeUsername(newUsername),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter new password",
                          ),
                          onSubmitted: (newPassword) => context
                              .read<SettingsCubit>()
                              .changePassword(newPassword),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
