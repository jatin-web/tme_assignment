import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../data/demo_data_list.dart';
import '../../../data/provider/gold_price_provider.dart';
import '../../components/containers/text_container.dart';

class InRupeeTab extends StatefulWidget {
  const InRupeeTab({super.key, required this.value});
  final GoldPriceProvider value;

  @override
  State<InRupeeTab> createState() => _InRupeeTabState();
}

class _InRupeeTabState extends State<InRupeeTab> {
  final _rsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _rsController,
          autofocus: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: const Icon(
                Icons.currency_rupee,
                color: Colors.white,
              ),
              suffixText: "${widget.value.goldWt.toStringAsFixed(4)} gm"),
          validator: (val) {
            if (val == null || val.isEmpty) {
              return "Please enter a value";
            }
            return null;
          },
          onChanged: (val) {
            widget.value.updateByRupee(double.tryParse(val) ?? 0);
          },
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ListView.separated(
            itemCount: rupeeSampleList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  _rsController.text = rupeeSampleList[index].toString();
                  widget.value.updateByRupee(rupeeSampleList[index]);
                },
                child: TextContainer(
                  text: "$rupee${rupeeSampleList[index]}",
                  isSelected: widget.value.rupees == rupeeSampleList[index],
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
