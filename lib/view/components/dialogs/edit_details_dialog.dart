import 'package:flutter/material.dart';

import '../../../constants.dart';

class EditDetailsDialog extends StatefulWidget {
  const EditDetailsDialog(
      {super.key, required this.title, required this.controller});
  final String title;
  final TextEditingController controller;

  @override
  State<EditDetailsDialog> createState() => _EditDetailsDialogState();
}

class _EditDetailsDialogState extends State<EditDetailsDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: fadedThemeColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "What's your ${widget.title}?",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
                  fillColor: Colors.black.withOpacity(0.2),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        widget.controller.clear();
                      });
                    },
                    child: const Icon(
                      Icons.cancel,
                      color: Colors.grey,
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(buttonColor1),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text(
                "Cancel",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
