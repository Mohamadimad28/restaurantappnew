import 'package:flutter/material.dart';
import 'package:restaurantappnew/model/address.dart';
import 'package:restaurantappnew/model/city.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _notifications = false;
  String _gender = 'M';
  String? _selectedCityId;
  final List<Address> _addresses = [
    Address(
      title: 'Gaza',
    ),
    Address(title: 'Rafah'),
    Address(title: 'AlNosyrat'),
    Address(title: 'KhanYounes'),
  ];
  final List<City> _cities = [
    City(id: 1, name: 'City 1'),
    City(id: 2, name: 'City 2'),
    City(id: 3, name: 'City 3'),
    City(id: 4, name: 'City 4'),
    City(id: 5, name: 'City 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          value: _notifications,
          onChanged: (bool value) {
            setState(() {
              _notifications = value;
            });
          },
          title: const Text('Notifications'),
          subtitle: const Text('Enable/Disable notification'),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Gender',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        RadioListTile<String>(
          contentPadding: EdgeInsets.zero,
          title: const Text('Male'),
          value: 'M',
          groupValue: _gender,
          onChanged: (String? value) {
            if (value != null) {
              _gender = value;
              setState(() {});
            }
          },
        ),
        RadioListTile<String>(
          contentPadding: EdgeInsets.zero,
          title: const Text('Female'),
          value: 'F',
          groupValue: _gender,
          onChanged: (String? value) {
            if (value != null) {
              _gender = value;
              setState(() {});
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Addresses',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        for (Address address in _addresses)
          CheckboxListTile(
            title: Text(address.title),
            value: address.selected,
            onChanged: (bool? value) {
              if (value != null) {
                setState(() {
                  address.selected = value;
                });
              }
            },
          ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'City',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        DropdownButton<String>(
          isExpanded: true,
          hint: const Text('Select city'),
          onChanged: (String? value) {
            setState(() {
              _selectedCityId = value;
            });
          },
          value: _selectedCityId,
          items: _cities
              .map(
                (City city) => DropdownMenuItem<String>(
                  value: city.id.toString(),
                  child: Text(city.name),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
