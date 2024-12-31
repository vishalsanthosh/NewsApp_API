import 'package:flutter/material.dart';

class NewsDetailScreen extends StatelessWidget {
  final String? title;
  final String? description;
  final String? imageUrl;

  NewsDetailScreen({
    this.title,
    this.description,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Bugle'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageUrl != null && imageUrl!.isNotEmpty
                ? Image.network(
                    imageUrl!,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Text('Image Load Error'),
                      );
                    },
                  )
                : Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Center(child: Text('No Image Available')),
                  ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? 'No Title Available', 
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    description ?? 'No Description Available',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
