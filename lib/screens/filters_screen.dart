import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/filters_category.dart';
import 'package:food_app/models/meal.dart';

class FiltersScreen extends StatefulWidget {
  final Map<Filter, bool> currentFilters;

  FiltersScreen({required this.currentFilters});

  @override
  State<StatefulWidget> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  late Map<Filter, bool> _selectedFilters;

  @override
  void initState() {
    super.initState();
    _selectedFilters = widget.currentFilters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      body: FiltersCategory(currentFilters: _selectedFilters),
    );
  }
}
