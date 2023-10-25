import 'package:flutter/material.dart';

class ProductForm extends StatelessWidget {
  ProductForm({super.key});

  @override
  Widget build(BuildContext context) {
    final kodeProductController = TextEditingController();
    final namaProdukController = TextEditingController();
    final hargaController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Produk"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: kodeProductController,
              decoration: InputDecoration(
                label: Text("Kode Produk"),
              ),
            ),
            TextField(
              controller: namaProdukController,
              decoration: InputDecoration(
                label: Text("Nama Produk"),
              ),
            ),
            TextField(
              controller: hargaController,
              decoration: InputDecoration(
                label: Text("Harga"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String kodeProduk = kodeProductController.text;
                  String namaProduk = namaProdukController.text;
                  String harga = hargaController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailProduct(
                        kodeProduk: kodeProduk,
                        namaProduk: namaProduk,
                        harga: harga,
                      ),
                    ),
                  );
                },
                child: const Text('Simpan'))
          ],
        ),
      ),
    );
  }
}

class DetailProduct extends StatefulWidget {
  final String namaProduk;
  final String kodeProduk;
  final String harga;
  const DetailProduct({
    Key? key,
    required this.namaProduk,
    required this.kodeProduk,
    required this.harga,
  }) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail produk")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kode Produk : ${widget.kodeProduk} ",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            "Nama Produk : ${widget.namaProduk}",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            "Harga : ${widget.harga}",
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}
