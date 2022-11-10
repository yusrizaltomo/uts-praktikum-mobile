import 'package:flutter/material.dart';
import 'package:uts_praktikum/ProductModel.dart';
import 'package:uts_praktikum/detail_page.dart';
import 'package:uts_praktikum/ProductModel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.teal,
          // centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo_tanpa_tulisan.png",
                fit: BoxFit.cover,
                width: 50,
              ),
              SizedBox(width: 10.0),
              Text(
                "Elektronikz",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
              margin: EdgeInsets.all(10.0),
              child: FutureBuilder<String>(
                  future: DefaultAssetBundle.of(context)
                      .loadString('assets/hospital copy.json'),
                  builder: (context, snapshot) {
                    List<ProductModel> product = parse(snapshot.data);
                    return ListView.separated(
                      itemCount: product.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          alignment: Alignment.center,
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 0.0),
                            leading: Image.asset(
                              product[index].productImage,
                              fit: BoxFit.fill,
                              width: 70,
                            ),
                            title: Text(product[index].productName),
                            subtitle: Text(
                                "Harga: Rp. ${product[index].price}\nStok: ${product[index].stock}"),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(produk: product[index]),
                                )),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: Colors.black,
                        );
                      },
                    );
                  })),
        ));
  }
}
