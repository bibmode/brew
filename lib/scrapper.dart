import 'package:flutter/material.dart';
import 'package:scrapcycle_collector/scrapperWidgets/item_card.dart';
import 'package:scrapcycle_collector/scrapperWidgets/top_bar.dart';

class Scrapper extends StatefulWidget {
  const Scrapper({Key? key}) : super(key: key);

  @override
  State<Scrapper> createState() => _ScrapperState();
}

class _ScrapperState extends State<Scrapper> {
  String dropdownValue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        width: 2.0,
        color: Color(0xff27AE60),
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xffDFF1E7),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBar(
              address:
                  "Blk1 Lot 35, Lumina Subd. Blk1 Lot 35, Lumina Subd. Blk1 Lot 35, Lumina Subd.",
              userName: "Genevieve Navales",
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 24.0),
              margin: const EdgeInsets.only(top: 10.0),
              child: const Text(
                'Items Collected',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 50.0,
                        child: DropdownButtonFormField(
                          itemHeight: 50.0,
                          isDense: false,
                          decoration: InputDecoration(
                            isDense: true,
                            enabledBorder: outlineInputBorder,
                            focusedBorder: outlineInputBorder,
                            border: outlineInputBorder,
                          ),
                          value: dropdownValue,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: TextField(
                        controller: TextEditingController(),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              "kg",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                          suffixIconConstraints:
                              const BoxConstraints(minWidth: 0, minHeight: 0),
                          enabledBorder: outlineInputBorder,
                          focusedBorder: outlineInputBorder,
                          border: outlineInputBorder,
                          hintText: '0.00',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xff27AE60),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        onPressed: () => print('object'),
                        icon: const Icon(Icons.add, color: Colors.white),
                        color: const Color(0xff27AE60),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: ItemCard(itemName: "Plastic bottles", price: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
