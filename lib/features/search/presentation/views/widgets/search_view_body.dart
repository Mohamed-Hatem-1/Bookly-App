import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search for a book',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (query) {
              // Implement search logic here
            },
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with the actual number of search results
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.book),
                  title: Text(
                      'Book Title $index'), // Replace with actual book title
                  subtitle:
                      Text('Author Name'), // Replace with actual author name
                  onTap: () {
                    // Implement book details navigation here
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
