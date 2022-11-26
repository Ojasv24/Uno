import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyIdButton extends StatelessWidget {
  const CopyIdButton({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 4),
      child: Align(
        alignment: Alignment.topLeft,
        child: ElevatedButton(
          style: ButtonStyle(
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(4)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )),
          ),
          onPressed: () async {
            await Clipboard.setData(ClipboardData(text: id));
          },
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              'Copy ID: $id',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
