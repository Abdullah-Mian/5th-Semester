// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: const Center(
//             child: Text(
//           'I am Rich',
//           style: TextStyle(color: Colors.white),
//         )),
//         backgroundColor: Colors.blueGrey[900],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.network(
//               'https://media.istockphoto.com/id/1805954358/photo/hr-human-resources-recruitment-team-staff-management-business-concept-relationship-management.jpg?s=2048x2048&w=is&k=20&c=DEwa0J0KtQdlA68yVfnCVsXS6WmAVOcIIdG20hlUtZg=',
//             ),
//             const Center(
//               child: Image(
//                 image: AssetImage('images/diamond.jpeg'),
//               ),
//             ),
//           ],
//         ),
//         // body:
//       ),
//     )),
//   );
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('ListView Examples'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Basic'),
                Tab(text: 'Builder'),
                Tab(text: 'Separated'),
                Tab(text: 'Future'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BasicListViewExample(),
              ListViewBuilderExample(),
              ListViewSeparatedExample(),
              FutureBuilderExample(),
            ],
          ),
        ),
      ),
    );
  }
}

// 1. Basic ListView
class BasicListViewExample extends StatelessWidget {
  BasicListViewExample({super.key});

  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: items
          .map((item) => ListTile(
                title: Text(item),
                leading: const Icon(Icons.gavel_rounded),
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Tapped $item')));
                },
              ))
          .toList(),
    );
  }
}

// 2. ListView.builder
class ListViewBuilderExample extends StatelessWidget {
  ListViewBuilderExample({super.key});

  final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          leading: CircleAvatar(child: Text('${index + 1}')),
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Tapped ${items[index]}')));
            },
            trailing: const Icon(Icons.check_circle_outline),
        );
      },
    );
  }
}

// 3. ListView.separated
class ListViewSeparatedExample extends StatelessWidget {
  ListViewSeparatedExample({super.key});

  final List<String> items = List.generate(50, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) => const Divider(
        color: Colors.grey,
        height: 1,
      ),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Tapped ${items[index]}')));
          },
        );
      },
    );
  }
}

// 4. FutureBuilder Example
class FutureBuilderExample extends StatelessWidget {
  const FutureBuilderExample({super.key});

  Future<List<String>> fetchData() async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 3));
    return List.generate(20, (index) => 'Fetched Item ${index + 1}');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data![index]),
                leading: const Icon(Icons.cloud_download),
                trailing: const Icon(Icons.arrow_forward_ios),
                subtitle: const Text('Loaded from Future'),
              );
            },
          );
        } else {
          return const Center(child: Text('No data available'));
        }
      },
    );
  }
}