import 'package:flutter/material.dart';
import 'package:test_project/core/constants/text_constants.dart';
import 'package:test_project/features/catalog/presentation/bloc/catalog_bloc.dart';

class SortDropdown extends StatelessWidget {
  final CatalogSort value;
  final ValueChanged<CatalogSort> onChanged;

  const SortDropdown({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CatalogSort>(
      value: value,
      onChanged: (newValue) {
        if (newValue != null) {
          onChanged(newValue);
        }
      },
      items: const [
        DropdownMenuItem(
          value: CatalogSort.none,
          child: Text(AppTextConstants.sortNone),
        ),
        DropdownMenuItem(
          value: CatalogSort.priceAsc,
          child: Text(AppTextConstants.sortPriceAsc),
        ),
        DropdownMenuItem(
          value: CatalogSort.priceDesc,
          child: Text(AppTextConstants.sortPriceDesc),
        ),
      ],
    );
  }
}
