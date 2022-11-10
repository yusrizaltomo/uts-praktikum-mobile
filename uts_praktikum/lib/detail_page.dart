import 'package:flutter/material.dart';
import 'package:uts_praktikum/ProductModel.dart';
import 'package:uts_praktikum/bayar.dart';
import 'package:uts_praktikum/model.dart';

class DetailPage extends StatelessWidget {
  final ProductModel produk;

  const DetailPage({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Detail Produk"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(produk.productImage),
            SizedBox(
              height: 15.0,
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    produk.productName,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Harga: Rp. ${produk.price}",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Stok: ${produk.stock}",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Deskripsi Produk",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(15.0),
                          color: Color.fromARGB(255, 211, 211, 211),
                          child: Text(
                            produk.description,
                            style: TextStyle(fontSize: 18),
                            // textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PesanBayar(
                            barang: produk,
                          )));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: const Text(
              'Beli Produk',
              style: TextStyle(
                  color: Color(0xff5ac18e),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
