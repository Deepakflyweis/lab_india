import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/modules/nav_bar_module/cubit/bottomnavbar_cubit.dart';
import 'package:sizer/sizer.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomnavbarCubit, BottomnavbarState>(
        builder: (context, state) {
          return IndexedStack(
            index: state.index,
            children: state.NavbarScreens,
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomnavbarCubit, BottomnavbarState>(
        builder: ((context, state) => BottomNavigationBar(
              currentIndex: state.index,
              onTap: BlocProvider.of<BottomnavbarCubit>(context)
                  .channgeNavBarIndex,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.grey400,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/icons/user-icon.png')),
                    label: AppTexts.profile),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/icons/dashboard.png')),
                    label: AppTexts.dashboard),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/icons/notes.png')),
                    label: AppTexts.subscriptions),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('assets/icons/Icon ionic-ios-settings.png')),
                    label: AppTexts.settings),
              ],
            )),
      ),
    );
  }
}
