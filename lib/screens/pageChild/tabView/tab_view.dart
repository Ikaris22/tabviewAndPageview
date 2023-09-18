import 'package:flutter/material.dart';
class TabView extends StatefulWidget{
  const TabView({super.key});

  @override
  State<StatefulWidget> createState() => _TabView();

}

class _TabView extends State<TabView>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3',)
              ],
            ),
          ),
          body: TabBarView(
              children: [
                tabDetail(text: 'Tab 1', icon: Icons.cabin),
                tabDetail(text: 'Tab 2', icon: Icons.table_chart),
                tabDetail(text: 'Tab 3', icon: Icons.co_present)
              ],
            ),

        )
        );
  }
}
tabDetail({required String text,required IconData icon}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(text,
           style: const TextStyle(fontSize: 30)),
      const SizedBox(width: 50),
      Icon(icon,size: 40)
    ],
  );
}