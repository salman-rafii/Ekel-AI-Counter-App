import 'package:counter_app_ekel_ai_task/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DividerCounter extends StatefulWidget {
  const DividerCounter({super.key});

  @override
  State<DividerCounter> createState() => _DividerCounterState();
}

class _DividerCounterState extends State<DividerCounter> {
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  double newValue = 0;
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
                  double firstVal = double.tryParse(first.text) ?? 0;
                  double secondVal = double.tryParse(second.text) ?? 0;

                  setState(() {
                    newValue = firstVal / secondVal;
                  });
                },
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("/"),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 50,
              height: 20,
              child: TextFormField(
                controller: second,
                onChanged: (value) {
                  double firstVal = double.tryParse(first.text) ?? 0;
                  double secondVal = double.tryParse(second.text) ?? 0;

                  setState(() {
                    newValue = firstVal / secondVal;
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
