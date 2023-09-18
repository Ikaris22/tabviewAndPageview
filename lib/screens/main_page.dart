import 'package:flutter/material.dart';
import 'package:pageview_example/screens/pageChild/otherPages/otherPages.dart';
import 'package:pageview_example/screens/pageChild/tabView/tab_view.dart';


class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<StatefulWidget> createState() => _PageviewExample();

}

class _PageviewExample extends State<PageViewExample>{
  PageController controller = PageController();
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 2);
  }
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller ,
        children: const [
          TabView(),
          PageChild(text: 'SencondPage'),
          PageChild(text: 'ThirdPage'),
          PageChild(text: 'FourthPage')
        ],
    );
  }

}
