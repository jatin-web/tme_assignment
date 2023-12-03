import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../data/demo_data_list.dart';
import '../../../data/provider/gold_price_provider.dart';
import '../../components/containers/text_container.dart';

class InGramsTab extends StatefulWidget {
  const InGramsTab({super.key, required this.value});
  final GoldPriceProvider value;

  @override
  State<InGramsTab> createState() => _InGramsTabState();
}

class _InGramsTabState extends State<InGramsTab> {
  final _gmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _gmController,
          autofocus: true,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefix: Text("$rupee${widget.value.rupees.toStringAsFixed(2)}"),
              suffixText: " gm",
              suffixStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              prefixStyle: const TextStyle(fontSize: 16, color: Colors.grey)),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          validator: (val) {
            if (val == null || val.isEmpty) {
              return "Please enter a value";
            }
            return null;
          },
          onChanged: (val) {
            widget.value.updateByGoldWt(double.tryParse(val) ?? 0);
          },
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ListView.separated(
            itemCount: gramSampleList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _gmController.text = gramSampleList[index].toString();
                  widget.value.updateByGoldWt(gramSampleList[index]);
                },
                child: TextContainer(
                  text: "${gramSampleList[index]} gm",
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 8);
            },
          ),
        )
      ],
    );
  }
}
