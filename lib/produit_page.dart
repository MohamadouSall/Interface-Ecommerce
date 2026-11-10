import 'package:flutter/material.dart';

class ProduitPage extends StatefulWidget {
 
 static const tag = "produit_page";

  const ProduitPage({super.key});

  @override
  State<ProduitPage> createState() => _ProduitPageState();
}

class _ProduitPageState extends State<ProduitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}