import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class AdminProductScreen extends StatelessWidget {
  AdminProductScreen({super.key});

  final List datas = [
    [
      'assets/images/macbook.png',
      'Macbook Pro M2 with free bang',
      '100',
      '10000'
    ],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
    ['assets/images/macbook.png', 'Macbook', '100', '10000'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: DataTable2(
            dataRowHeight: 100,
            // border: TableBorder.all(),
            // minWidth: 580,
            columns: const [
              DataColumn(
                label: Text("Image"),
              ),
              DataColumn(
                label: Text("Name"),
              ),
              DataColumn(
                label: Text("Qty"),
              ),
              DataColumn(
                label: Text("Price"),
              ),
            ],
            rows: List.generate(
              datas.length,
              (index) {
                final data = datas[index];
                return DataRow(
                  cells: [
                    DataCell(
                      Image.asset(
                        data[0],
                      ), // Load image from the first element of data list
                    ),
                    DataCell(
                      Text(
                        data[1],
                      ), // Display the name from the second element
                    ),
                    DataCell(
                      Text(
                        data[2],
                      ), // Display the quantity from the third element
                    ),
                    DataCell(
                      Text(
                        data[3],
                      ), // Display the price from the fourth element
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(
                color: AppColor.whiteColor,
                width: 1.sw,
                height: 0.7.sh,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const BuildHeadingText(text: 'Add Product'),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.close),
                            )
                          ],
                        ),
                        const BuildTextFormField(
                          label: "Product name",
                          hintText: 'Enter product name',
                          icon: Icons.abc,
                        ),
                        const BuildTextAreaField(
                          label: "Desciption",
                          hintText: 'Enter product description',
                          icon: Icons.description,
                        ),
                        const BuildTextFormField(
                          label: "Amount",
                          hintText: 'Enter product amount',
                          icon: Icons.money,
                          keyboardType: TextInputType.number,
                        ),
                        const BuildTextFormField(
                          label: "Quantity",
                          hintText: 'Enter product quantity',
                          icon: Icons.shopping_basket,
                          keyboardType: TextInputType.number,
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.image),
                          label: const Text("Add Image"),
                        ),
                        const BuildButtonWidget(text: "Upload")
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: AppColor.greenColor,
        tooltip: "Add product",
        child: const Icon(
          Icons.add,
          color: AppColor.whiteColor,
        ),
      ),
    );
  }
}

//

// DataTable(
//             columns: const [
//               DataColumn(
//                 label: Text("Image"),
//               ),
//               DataColumn(
//                 label: Text("Name"),
//               ),
//               DataColumn(
//                 label: Text("Quantity"),
//               ),
//               DataColumn(
//                 label: Text("Price"),
//               ),
//             ],
//             rows: List.generate(
//               datas.length,
//               (index) {
//                 final data = datas[index];
//                 return DataRow(
//                   cells: [
//                     DataCell(
//                       Image.asset(data[
//                           0]), // Load image from the first element of data list
//                     ),
//                     DataCell(
//                       Text(data[1]), // Display the name from the second element
//                     ),
//                     DataCell(
//                       Text(data[
//                           2]), // Display the quantity from the third element
//                     ),
//                     DataCell(
//                       Text(
//                           data[3]), // Display the price from the fourth element
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//