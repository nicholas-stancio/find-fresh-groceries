import 'package:find_fresh_groceries/screens/categories.dart';
import 'package:find_fresh_groceries/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(35, 88, 35, 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  style: Styles.roboto24Green,
                  children: <TextSpan>[
                    TextSpan(text: 'Find '),
                    TextSpan(
                      text: 'Fresh Groceries',
                      style: Styles.roboto24Yellow,
                    )
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(48),
                child: Image.network('https://picsum.photos/250?image=9',
                    height: 50.0, width: 50.0, fit: BoxFit.fill),
              )
            ],
          ),
          // const Expanded(
          //     child: Padding(
          //   padding: EdgeInsets.only(top: 40),
          //   child: SearchBar(),
          // )),
          Container(
            color: Colors.white,
            height: 100,
            padding: const EdgeInsets.only(top: 40),
            child: TextField(
              controller: _controller,
              onChanged: (String value) {
                print(value);
              },
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 20),
              child: const Text(
                'Categories',
                style: Styles.roboto14Bold,
              )),
          const Expanded(child: HomeCategoriesScreen()),
        ],
      ),
    );
  }
}
