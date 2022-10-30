import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:password_keeper/credentials/credentials.dart';
import 'package:password_keeper/home/widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CredentialsBloc, CredentialsState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: state.status == CredentialsStatus.failure
                  ? const FetchCredentialsError()
                  : Center(
                      child: Column(
                        children: [
                          const TopCaption(),
                          state.status == CredentialsStatus.loading
                              ? const LoadingWidget()
                              : state.credentials.isEmpty
                                  ? const Text('No passwords yet')
                                  : Expanded(
                                      child: RefreshIndicator(
                                        onRefresh: () async {
                                          context
                                              .read<CredentialsBloc>()
                                              .add(CredentialsFetched());
                                        },
                                        child: ListView.builder(
                                          itemCount: state.credentials.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onLongPress: () {
                                                showCupertinoModalPopup(
                                                  context: context,
                                                  builder: (_) =>
                                                      CredentialsActionSheet(
                                                    credentials: state
                                                        .credentials[index],
                                                    index: index,
                                                  ),
                                                );
                                              },
                                              child: CredentialsRow(
                                                credentials:
                                                    state.credentials[index],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                        ],
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
