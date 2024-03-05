import 'package:chat2/global/custom_tab_bar/custom_tab_bar.dart';
import 'package:chat2/user/presentation/cubit/user/user_cubit.dart';
import 'package:chat2/user/presentation/pages/credential/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  final String uid;

  const HomePage({Key? key, required this.uid}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabIndex = 0;

  List<Widget> get pages => [
        LoginPage(uid: widget.uid),
      ];

  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Group Chat"),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    BlocProvider.of<UserCubit>(context).loggedOut();
                  },
                  child: Text(
                    "Logout",
                  ),
                )
              ];
            },
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          CustomTabBar(
            index: _tabIndex,
            tabClickListener: (int index) {
              setState(() {
                _tabIndex = index;
                _pageController.jumpToPage(index);
              });
            },
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _tabIndex = index;
                });
              },
              itemCount: pages.length,
              itemBuilder: (BuildContext context, int index) {
                return pages[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
