import 'package:flutter/material.dart';
import 'package:service_app/core.dart';

class SubmissionReport extends StatelessWidget {
  const SubmissionReport({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pengajuan #1', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ],
              ),
              Divider(height: 10, indent: 10, endIndent: 10,),
              SizedBox(height: 10,),
              Text('Data Pengajuan : ', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Palette.serviceGreen),),
              Text('Ini isi dari data pengajuan', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text('Keterangan : ', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Palette.serviceGreen),),
              Text('Ini isi dari keterangan dari data ngajuan', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      ),
    );
  }
}