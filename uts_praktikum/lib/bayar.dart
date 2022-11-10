import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:uts_praktikum/home_page.dart';
import 'package:uts_praktikum/ProductModel.dart';

enum MetodeBayar { bayarditempat, indoalfa, viabank }

enum PilihanKurir { sicepat, tiki, jne }

class PesanBayar extends StatefulWidget {
  // final produk barang;
  // const PesanBayar({super.key, required this.barang});
  final ProductModel barang;
  const PesanBayar({super.key, required this.barang});

  @override
  State<PesanBayar> createState() => _PesanBayarState(barang);
}

class _PesanBayarState extends State<PesanBayar> {
  final ProductModel barang;
  _PesanBayarState(this.barang);
  MetodeBayar? _character = MetodeBayar.bayarditempat;
  PilihanKurir? _char = PilihanKurir.sicepat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Check Out"),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 3),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 110,
            child: Row(
              children: [
                // Icon(Icons.image, size: 110),
                Image.asset(
                  barang.productImage,
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      barang.productName,
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "RP. ${barang.price}",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              'Alamat',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 3),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: Color(0xff5ac18e),
                  ),
                  hintText: 'masukan alamat',
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              'No Handphone',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 3),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            child: const TextField(
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xff5ac18e),
                  ),
                  hintText: 'masukan nomor handphone',
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              'Jumlah Pembelian',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 3),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            child: const TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 15),
                  prefixIcon: Icon(
                    Icons.shopping_bag,
                    color: Color(0xff5ac18e),
                  ),
                  hintText: 'masukan jumlah pembelian',
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 8),
            child: const Text(
              'Metode Pembayaran',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Alfamart/Indomart'),
                  leading: Radio<MetodeBayar>(
                    value: MetodeBayar.indoalfa,
                    groupValue: _character,
                    onChanged: (MetodeBayar? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Bayar ditempat'),
                  leading: Radio<MetodeBayar>(
                    value: MetodeBayar.bayarditempat,
                    groupValue: _character,
                    onChanged: (MetodeBayar? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Transfer Via Bank'),
                  leading: Radio<MetodeBayar>(
                    value: MetodeBayar.viabank,
                    groupValue: _character,
                    onChanged: (MetodeBayar? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 8),
            child: const Text(
              'Pilihan Kurir',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  title: const Text('SiCepat'),
                  leading: Radio<PilihanKurir>(
                    value: PilihanKurir.sicepat,
                    groupValue: _char,
                    onChanged: (PilihanKurir? value) {
                      setState(() {
                        _char = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('TIKI'),
                  leading: Radio<PilihanKurir>(
                    value: PilihanKurir.tiki,
                    groupValue: _char,
                    onChanged: (PilihanKurir? value) {
                      setState(() {
                        _char = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('JNE'),
                  leading: Radio<PilihanKurir>(
                    value: PilihanKurir.jne,
                    groupValue: _char,
                    onChanged: (PilihanKurir? value) {
                      setState(() {
                        _char = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
            onPressed: () {
              CoolAlert.show(
                context: context,
                type: CoolAlertType.success,
                text: "Your transaction was successful!",
                onConfirmBtnTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: const Text(
              'Pesan Sekarang',
              style: TextStyle(
                  color: Color(0xff5ac18e),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
