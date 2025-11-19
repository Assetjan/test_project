import 'package:flutter/material.dart';
import 'package:test_project/core/constants/text_constants.dart';
import 'package:test_project/core/theme/colors.dart';
import 'package:test_project/core/constants/ui_constants.dart';

class CategoryFilter extends StatelessWidget {
  final List<String> categories;
  final String? selectedCategory;
  final ValueChanged<String?> onChanged;

  const CategoryFilter({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final items = [null, ...categories];
    return SizedBox(
      height: 40,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: AppUiConstants.paddingM,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final value = items[index];
          final isSelected = value == selectedCategory || (value == null && selectedCategory == null);
          final label = value ?? AppTextConstants.allCategory;
          return ChoiceChip(
            label: Text(label),
            selected: isSelected,
            onSelected: (_) => onChanged(value),
            selectedColor: AppColors.primary,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: items.length,
      ),
    );
  }
}
