import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Filter {
  glutenFree,
  lactosFree,
  vagetarian,
  vegan
}

class FiltersCategory extends StatefulWidget{
  FiltersCategory({super.key,required this.currentFilters});

  final Map<Filter, bool> currentFilters;

  @override
  State<FiltersCategory> createState() => _FiltersCategoryState();
}

class _FiltersCategoryState extends State<FiltersCategory> {
  var _glutenFreeFilter = false;
  var _lactosFreeFilter = false;
  var _vageterianFilter = false;
  var _veganFilter = false;

  @override
  void initState() {
    super.initState();
    _glutenFreeFilter =widget.currentFilters[Filter.glutenFree]!;
    _lactosFreeFilter = widget.currentFilters[Filter.lactosFree]!;
    _vageterianFilter = widget.currentFilters[Filter.vagetarian]!;
    _veganFilter = widget.currentFilters[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop({
        Filter.glutenFree:_glutenFreeFilter,
        Filter.lactosFree:_lactosFreeFilter,
        Filter.vagetarian:_vageterianFilter,
        Filter.vegan: _veganFilter
        });
        return false;
      },
      child: Column(
        children: [
          SwitchListTile(
            value: _glutenFreeFilter,
            onChanged: (isChecked) {
              setState(() {
                _glutenFreeFilter = isChecked;
              });
            },
            title: Text('Gluten Free',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            subtitle: Text('Only include Gluten-Free meals',),
            activeColor: Colors.deepPurpleAccent,
            contentPadding: EdgeInsets.only(left: 25, right: 22),
          ),
          SwitchListTile(
            value: _lactosFreeFilter,
            onChanged: (isChecked) {
              setState(() {
                _lactosFreeFilter = isChecked;
              });
            },
            title: Text('Lactos Free',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            subtitle: Text('Only include Lactos-free meals',),
            activeColor: Colors.deepPurpleAccent,
            contentPadding: EdgeInsets.only(left: 25, right: 22),
          ),
          SwitchListTile(
            value: _vageterianFilter,
            onChanged: (isChecked) {
              setState(() {
                _vageterianFilter = isChecked;
              });
            },
            title: Text('Vagetarian',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            subtitle: Text('Only include Vagetarian meals',),
            activeColor: Colors.deepPurpleAccent,
            contentPadding: EdgeInsets.only(left: 25, right: 22),
          ),
          SwitchListTile(
            value: _veganFilter,
            onChanged: (isChecked) {
              setState(() {
                _veganFilter = isChecked;
              });
            },
            title: Text('Vegan',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            subtitle: Text('Only include Vegan meals',),
            activeColor: Colors.deepPurpleAccent,
            contentPadding: EdgeInsets.only(left: 25, right: 22),
          ),
        ],

      ),
    );
  }
}