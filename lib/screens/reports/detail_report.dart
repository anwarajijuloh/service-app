import 'package:flutter/material.dart';
import 'package:service_app/config/palette.dart';
import 'package:service_app/widgets/widgets.dart';

import '../../models/models.dart';

class DetailReport extends StatelessWidget {
  final Report myreport;
  const DetailReport({super.key, required this.myreport});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            CustomButton(myfunction: () {}, name: 'Preview Image'),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    'Status:'.toUpperCase(),
                    style: const TextStyle(
                        color: Palette.serviceGreen, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: colorStatus(myreport.status),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        myreport.status,
                        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _CardReport(title: 'Detail Laporan', txtname: myreport,),
            const SizedBox(height: 20),
            _CardSender(title: 'Detail Pengirim', txtname: myreport,),
          ],
        ),
      ),
    );
  }
}

class _CardReport extends StatelessWidget {
  final String title;
  final Report txtname;
  const _CardReport({required this.txtname, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.2),
                blurRadius: .8,
                spreadRadius: .8,
                offset: const Offset(1, 2))
          ]),
      child: Column(
        children: [
          Container(
            height: 42,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Palette.serviceGreen,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          myListTile('Title :', txtname.title),
          myListTile('Jenis :', txtname.type),
          myListTile('Deskripsi :', txtname.description),
          myListTile('Catatan :', txtname.note),
        ],
      ),
    );
  }

  ListTile myListTile(named, txtnamed) {
    return ListTile(
          title: Text(named, style: const TextStyle(fontWeight: FontWeight.w500, color: Palette.serviceGreen),),
          subtitle: Text(txtnamed),
        );
  }
}
class _CardSender extends StatelessWidget {
  final String title;
  final Report txtname;
  const _CardSender({required this.txtname, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.2),
                blurRadius: .8,
                spreadRadius: .8,
                offset: const Offset(1, 2))
          ]),
      child: Column(
        children: [
          Container(
            height: 42,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Palette.serviceGreen,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          myListTile('Nama Pengirim :', txtname.personId.name),
          myListTile('Posisi Pengirim :', txtname.personId.job),
        ],
      ),
    );
  }

  ListTile myListTile(named, txtnamed) {
    return ListTile(
          title: Text(named, style: const TextStyle(fontWeight: FontWeight.w500, color: Palette.serviceGreen),),
          subtitle: Text(txtnamed),
        );
  }
}
