import 'package:counter_app_ekel_ai_task/components/counter/counter.dart';
import 'package:counter_app_ekel_ai_task/components/divider/divider.dart';
import 'package:counter_app_ekel_ai_task/components/subtraction/subtraction.dart';
import 'package:counter_app_ekel_ai_task/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../components/multiplier/multiplier.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: const CustomText(
          text: "Ekel AI Counter",
          color: Color(0xff004080),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Column(
                      children: const [
                        CustomText(
                          color: Color(0xff004080),
                          text: "Multiplier Counter",
                          fontSize: 30.0,
                        ),
                        MultiplierCounter()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Column(
                      children: const [
                        CustomText(
                          color: Color(0xff004080),
                          text: "Subtraction Counter",
                          fontSize: 30.0,
                        ),
                        SubtractionCounter()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Column(
                      children: const [
                        CustomText(
                          color: Color(0xff004080),
                          text: "Divider Counter",
                          fontSize: 30.0,
                        ),
                        DividerCounter()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Column(
                      children: const [
                        CustomText(
                          color: Color(0xff004080),
                          text: "Simple Counter",
                          fontSize: 30.0,
                        ),
                        Counter(
                          title: "Simple counter",
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
