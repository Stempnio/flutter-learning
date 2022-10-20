import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter_clone/bottom_navigator/cubit/current_page_cubit.dart';

class BottomNavigatorPage extends StatelessWidget {
  const BottomNavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CurrentPageCubit, CurrentPageState>(
        builder: (context, state) {
          return state.view;
        },
      ),
      bottomNavigationBar: BlocBuilder<CurrentPageCubit, CurrentPageState>(
        builder: (context, state) {
          return BottomNavigationBar(
            selectedItemColor: Colors.white,
            showSelectedLabels: false,
            selectedIconTheme: IconThemeData(
              size: 30,
            ),
            currentIndex: state.currentIndex,
            onTap: (index) {
              BlocProvider.of<CurrentPageCubit>(context).changePage(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "Notifications",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                label: "Messages",
              ),
            ],
          );
        },
      ),
    );
  }
}
