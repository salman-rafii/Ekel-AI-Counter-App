import 'package:counter_app_ekel_ai_task/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class MultiplierCounter extends StatefulWidget {
  const MultiplierCounter({super.key});

  @override
  State<MultiplierCounter> createState() => _MultiplierCounterState();
}

class _MultiplierCounterState extends State<MultiplierCounter> {
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  int newValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: first,
                onChanged: (value) {
                  int firstVal = int.tryParse(first.text) ?? 0;
                  int secondVal = int.tryParse(second.text) ?? 0;

                  setState(() {
                    newValue = firstVal * secondVal;
                  });
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("*"),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: second,
                onChanged: (value) {
                  int firstVal = int.tryParse(first.text) ?? 0;
                  int secondVal = int.tryParse(second.text) ?? 0;

                  setState(() {
                    newValue = firstVal * secondVal;
                  });
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: CustomText(
            text: newValue.toString(),
            textAlign: TextAlign.end,
          ),
        )
      ],
    );
  }
}
