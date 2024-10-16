import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     // _SearchField(),
      //     const SizedBox(height: 40),
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         const Padding(
      //           padding: EdgeInsets.only(left: 20),
      //           child: Text(
      //             'Categories',
      //             style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 18,
      //               fontWeight: FontWeight.w600,
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 15),
      //         Container(
      //           height: 150,
      //           color: Colors.green,
      //           child: ListView.builder(
      //             itemBuilder: (context, index) {
      //               return Container(
      //                 margin: const EdgeInsets.only(left: 20),
      //                 width: 150,
      //                 color: Colors.red,
      //               );
      //             },
      //           ),
      //         )
      //       ],
      //     )
      //   ],
      // ),
      );
  }
}

 AppBar appBar() {
    return AppBar(
      title: const Text(
        'BreakFast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),

      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0, // to remove the shadow
 
      leading: GestureDetector(
          onTap: () {
            print('Back');
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/Arrow - Left 2.svg', // Remove the leading './'
              height: 20,
              width: 20,
            ),
          )),

      actions: [
        GestureDetector(
            onTap: () {
              print('Search');
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 37,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/icons/dots.svg', // Remove the leading './'
                height: 5,
                width: 5,
              ),
            ))
      ],
    );
  }

  Container _SearchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xff1D1617).withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0,
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: 'Search for Pancakes',
            hintStyle: TextStyle(
              color: Color(0xffDDDADA),
              fontSize: 14,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            suffixIcon: SizedBox(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
                    ),
                  ],
                ),
              ),
            ),
            contentPadding: EdgeInsets.all(15),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }