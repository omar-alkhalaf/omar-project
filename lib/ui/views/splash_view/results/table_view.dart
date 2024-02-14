import 'package:flutter/material.dart';

// Create a widget for the table
class tableView extends StatelessWidget {
  // Define the data for the table
  final List<Map<String, dynamic>> _data = [
    {
      'rank': '8',
      'team': 'الاتحاد',
      'played': 5,
      'won': 2,
      'drawn': 2,
      'lost': 1,
      'points': 8
    },
    {
      'rank': '9',
      'team': 'الهلال',
      'played': 4,
      'won': 1,
      'drawn': 4,
      'lost': 0,
      'points': 9
    },
    {
      'rank': '10',
      'team': 'النصر',
      'played': 4,
      'won': 3,
      'drawn': 1,
      'lost': 1,
      'points': 10
    },
    {
      'rank': '11',
      'team': 'التوحيدة',
      'played': 3,
      'won': 2,
      'drawn': 3,
      'lost': 0,
      'points': 11
    },
    {
      'rank': '12',
      'team': 'الجديدة',
      'played': 0,
      'won': 5,
      'drawn': 0,
      'lost': 0,
      'points': 12
    },
  ];

  // Define the columns for the table
  final List<DataColumn> _columns = [
    DataColumn(label: Text('الترتيب')),
    DataColumn(label: Text('الفريق')),
    DataColumn(label: Text('لعب')),
    DataColumn(label: Text('فاز')),
    DataColumn(label: Text('تعادل')),
    DataColumn(label: Text('خسر')),
    DataColumn(label: Text('النقاط')),
  ];

  // Define the rows for the table
  List<DataRow> _getRows() {
    return _data.map((row) {
      return DataRow(
        cells: [
          DataCell(Text(row['rank'])),
          DataCell(Text(row['team'])),
          DataCell(Text(row['played'].toString())),
          DataCell(Text(row['won'].toString())),
          DataCell(Text(row['drawn'].toString())),
          DataCell(Text(row['lost'].toString())),
          DataCell(Text(row['points'].toString())),
        ],
      );
    }).toList();
  }

  // Build the widget
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DataTable(
          columns: _columns,
          rows: _getRows(),
          columnSpacing: 10,
          // headingRowColor:
          //     MaterialStateProperty.all(const Color.fromARGB(255, 49, 45, 40)),
          dataRowColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return Theme.of(context).colorScheme.primary.withOpacity(0.08);
            } else if (states.contains(MaterialState.hovered)) {
              return Colors.grey.shade200;
            } else {
              return null;
            }
          }),
        ),
      ),
    );
  }
}
