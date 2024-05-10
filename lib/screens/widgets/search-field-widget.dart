
import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white),
          suffixIcon: InkWell(
              onTap: () {},
              child: Icon(
                Icons.search,
                color: Colors.white,
              )),
          filled: true,
          fillColor: primaryDarkcolor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
