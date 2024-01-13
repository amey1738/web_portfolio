import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          customButton:
          Icon(Icons.keyboard_arrow_down),
          items: [
            ...MenuItems.firstItems.map(
                  (item) => DropdownMenuItem<MenuItem>(
                value: item,
                child: MenuItems.buildItem(item),
              ),
            ),
            const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
            ...MenuItems.secondItems.map(
                  (item) => DropdownMenuItem<MenuItem>(
                value: item,
                child: MenuItems.buildItem(item),
              ),
            ),
          ],
          onChanged: (value) {
            MenuItems.onChanged(context, value! as MenuItem);
          },
          buttonStyleData: ButtonStyleData(
            // This is necessary for the ink response to match our customButton radius.
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          dropdownStyleData: DropdownStyleData(
            width: 160,
            padding: const EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            offset: const Offset(40, -4),
          ),
          menuItemStyleData: MenuItemStyleData(
            customHeights: [
              ...List<double>.filled(MenuItems.firstItems.length, 48),
              8,
              ...List<double>.filled(MenuItems.secondItems.length, 48),
            ],
            padding: const EdgeInsets.only(left: 16, right: 16),
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  const MenuItem({
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;
}

class MenuItems {
  static const List<MenuItem> firstItems = [stake1, stake2, stake3];
  static const List<MenuItem> secondItems = [cancel];

  static const stake1 = MenuItem(text: 'Stake 1', icon: Icons.circle);
  static const stake2 = MenuItem(text: 'Stake 2', icon: Icons.circle);
  static const stake3 = MenuItem(text: 'Stake 3', icon: Icons.circle);
  static const cancel = MenuItem(text: 'Stake 4', icon: Icons.cancel);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(
          item.icon,
          color: Colors.black,
          size: 22,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            item.text,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  static void onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.stake1:
      //Do something
        break;
      case MenuItems.stake2:
      //Do something
        break;
      case MenuItems.stake3:
      //Do something
        break;
      case MenuItems.cancel:
      //Do something
        break;
    }
  }
}
