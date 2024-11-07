import 'package:flutter/cupertino.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Radio'),
    );
  }
}
