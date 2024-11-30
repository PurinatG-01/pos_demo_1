import 'package:flutter/material.dart';

void showProductDetail(
  BuildContext context,
) {
  showModalBottomSheet<void>(
    context: context,
    // showDragHandle: true,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    constraints: BoxConstraints(
      maxWidth: double.infinity,
      maxHeight: MediaQuery.of(context).size.height - 100,
    ),
    clipBehavior: Clip.hardEdge,
    builder: (BuildContext context) {
      return Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 8,
              top: 8,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.close,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
