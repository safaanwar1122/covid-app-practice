import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'countries_list.dart';

class WorldStateScreen extends StatefulWidget {
  const WorldStateScreen({Key? key}) : super(key: key);

  @override
  State<WorldStateScreen> createState() => _WorldStateScreenState();
}

class _WorldStateScreenState extends State<WorldStateScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  final colorList = <Color>[
    // arary created for pi-chart colors
    const Color(0xff4285F4),
    const Color(0xff1aa260),
    const Color(0xffde5246),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                PieChart(
                  dataMap: {
                    'Total': 12, //key value pair
                    'Recovered': 54,
                    'Deaths': 21,
                  },
                  chartRadius: MediaQuery.of(context).size.width / 3.2,
                  legendOptions: const LegendOptions(
                    legendPosition: LegendPosition.left,
                  ),
                  animationDuration: const Duration(
                    milliseconds: 1200,
                  ),
                  chartType: ChartType.disc,
                  colorList: colorList,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * .06),
                  child: Card(
                    child: Column(
                      children: [
                        ReuseableRow(title: 'Total', value: '23'),
                        ReuseableRow(title: 'Recovered', value: '43'),
                        ReuseableRow(title: 'Deaths', value: '45'),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CountriesList()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff1aa260),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('Track Countries')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReuseableRow extends StatelessWidget {
  String title, value; //dynamic values pass
  ReuseableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(value),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Divider(), // it is used to draw line between rows to make them look separate
        ],
      ),
    );
  }
}
