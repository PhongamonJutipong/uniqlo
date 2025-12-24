import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqlo/Model/uniqlo.dart';

class Uniqlodetail extends StatefulWidget {
  final Uniqlo uniqlo;

  const Uniqlodetail({super.key, required this.uniqlo});

  @override
  State<Uniqlodetail> createState() => _UniqlodetailState();
}

class _UniqlodetailState extends State<Uniqlodetail> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    int totalPrice = quantity * widget.uniqlo.price;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Detail',
          style: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // รูปสินค้า
            Center(
              child: Image.asset(
                widget.uniqlo.imgPath,
                height: 220,
              ),
            ),

            const SizedBox(height: 16.0),

            // ชื่อสินค้า
            Text(
              widget.uniqlo.imgName,
              style: GoogleFonts.poppins(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8.0),

            // รายละเอียดสินค้า
            Text(
              widget.uniqlo.imgDetail,
              style: GoogleFonts.poppins(fontSize: 16.0),
            ),

            const SizedBox(height: 16.0),

            // ราคา
            Text(
              'ราคา: ${widget.uniqlo.price} บาท',
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 16.0),

            // ปุ่มเพิ่มลดจำนวน
            Row(
              children: [
                Text(
                  'จำนวน:',
                  style: GoogleFonts.poppins(fontSize: 18.0),
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: quantity > 1
                      ? () {
                          setState(() {
                            quantity--;
                          });
                        }
                      : null,
                ),
                Text(
                  quantity.toString(),
                  style: GoogleFonts.poppins(fontSize: 18.0),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 16.0),

            // ราคารวม
            Text(
              'ราคารวม: $totalPrice บาท',
              style: GoogleFonts.poppins(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
