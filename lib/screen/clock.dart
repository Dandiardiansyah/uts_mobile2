import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  TimeOfDay selectedtime = TimeOfDay.now();

  void _showTime(context) async {
    final timePick = await showTimePicker(
        context: context,
        initialTime: selectedtime,
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: child!,
          );
        });

    if (timePick != null) {
      setState(() {
        selectedtime = timePick;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(selectedtime.format(context)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _showTime(context),
            child: const Text('Pick Time'),
          ),
        ],
      ),
    );
  }
}
