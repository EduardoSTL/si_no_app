import 'package:flutter/material.dart';

enum FromWho{mine, other}

//* clase para definir el objeto message y sus componentes
class Message{
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho
  });
}