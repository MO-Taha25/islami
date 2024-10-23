import 'package:flutter/material.dart';

class SurahTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Islamic Surah Table'),
      ),
      body: ListView(
        children: [
          DataTable(
            columns: [
              DataColumn(label: Text('عدد الآيات')),
              DataColumn(label: Text('اسم السورة')),
            ],
            rows: [
              DataRow(cells: [DataCell(Text('286')), DataCell(Text('البقرة'))]),
              // Add more rows for other surahs
            ],
          ),
        ],
      ),
    );
  }
}
