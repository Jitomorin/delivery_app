import 'package:flutter/material.dart';

Widget orDivider(BuildContext context) {
  return Opacity(
    opacity: 0.8,
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 0.01 * MediaQuery.of(context).size.width,
              right: 0.01 * MediaQuery.of(context).size.width,
              top: 20),
          child: const Row(
            children: [
              Expanded(
                child: Divider(
                  height: 0.0,
                  thickness: 2,
                  /* color: OliveDrab, */
                ),
              ),
              Text(
                '   Or   ',
                style: TextStyle(
                    /* color: OliveDrab, */
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Divider(
                  height: 0.0,
                  thickness: 2,
                  /* color: OliveDrab, */
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 0.075 * MediaQuery.of(context).size.width),
      ],
    ),
  );
}
