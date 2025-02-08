import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:social_app/features/post/presentation/components/my_drawer_tile.dart';
import 'package:social_app/features/profile/presentation/pages/profile_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50.0),
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Divider(color: Theme.of(context).colorScheme.secondary),
              MyDrawerTile(
                title: "Home",
                icon: Icons.home,
                onTap: () => Navigator.of(context).pop(),
              ),
              MyDrawerTile(
                title: "Profile",
                icon: Icons.person,
                onTap: () {
                  Navigator.of(context).pop();
                  final user = context.read<AuthCubit>().currentUser;
                  String? uid = user!.uid;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(
                        uid: uid,
                      ),
                    ),
                  );
                },
              ),
              MyDrawerTile(
                title: "Search",
                icon: Icons.search,
                onTap: () {},
              ),
              MyDrawerTile(
                title: "Settings",
                icon: Icons.settings,
                onTap: () {},
              ),
              Spacer(),
              MyDrawerTile(
                title: "Logout",
                icon: Icons.home,
                onTap: () => context.read<AuthCubit>().logout(),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
