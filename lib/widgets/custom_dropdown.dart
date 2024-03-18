import 'package:flutter/material.dart';

const List<String> items = [
  'OPS1',
  'OPS2',
  'Sekper',
  'SPI',
  'SDM',
  'Akutansi',
  'Renstra',
  'Pengadaan',
  'IT',
  'Opset',
  'Pemasaran',
  'ACS'
];

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String dropdownValue = items.first;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.0),
            child: Icon(Icons.badge),
          ),
          Expanded(
            child: Text(
              'Bagian',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700]),
            ),
          ),
          DropdownButton(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            onChanged: (value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            items: items.map<DropdownMenuItem>((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
