import 'package:denomination/sample.dart';
import 'package:flutter/material.dart';

import 'base.dart';
import 'dialoug_box.dart';
import 'history.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController oneController = TextEditingController();
  TextEditingController twoController = TextEditingController();
  TextEditingController threeController = TextEditingController();
  TextEditingController fourController = TextEditingController();
  TextEditingController fiveController = TextEditingController();
  TextEditingController sixController = TextEditingController();
  TextEditingController sevenController = TextEditingController();
  TextEditingController eightController = TextEditingController();
  TextEditingController nineController = TextEditingController();
  TextEditingController tenController = TextEditingController();
  int one = 0;
  int two = 0;
  int three = 0;
  int four = 0;
  int five = 0;
  int six = 0;
  int seven = 0;
  int eight = 0;
  int nine = 0;
  int ten = 0;

  TextStyle textStyle = const TextStyle(color: Colors.white, fontSize: 25);
  TextStyle textStyle2 = const TextStyle(color: Colors.white, fontSize: 16);
  showAmount() {
    if (one > 0 ||
        two > 0 ||
        three > 0 ||
        four > 0 ||
        five > 0 ||
        six > 0 ||
        seven > 0 ||
        eight > 0 ||
        nine > 0 ||
        ten > 0) {
      return true;
    } else {
      return false;
    }
  }

  totalAmount() {
    int value =
        one + two + three + four + five + six + seven + eight + nine + ten;
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/currency_banner.jpg",
                        ),
                        fit: BoxFit.fill)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (showAmount() == false)
                      Text(
                        "Denomination",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    if (showAmount() == true)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "₹ ${totalAmount()} ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "${convertToWords(totalAmount())}",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0, right: 10),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: IconButton(
                            onPressed: () {
                              // fetchExpenses();
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowHistory()));

                            },
                            icon: Icon(
                              Icons.more_vert_rounded,
                              color: Colors.white,
                              size: 30,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(width: 90, child: Text("₹ 2000", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      style: textStyle2,
                      decoration: InputDecoration(
                          hintText: "Try 6",
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  oneController.clear();
                                  one = 0;
                                });
                              },
                              child: Icon(
                                Icons.cancel,
                                color: oneController.text.isNotEmpty
                                    ? Colors.white
                                    : Colors.transparent,
                              ))),
                      controller: oneController,
                      onChanged: (v) {
                        setState(() {
                          int value = int.parse(v) * 2000;
                          one = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $one", style: textStyle),
                ],
              ),
              Row(
                children: [
                  Container(width: 90, child: Text("₹ 500", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      style: textStyle2,
                      controller: twoController,
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  twoController.clear();
                                  two = 0;
                                });
                              },
                              child: Icon(
                                Icons.cancel,
                                color: twoController.text.isNotEmpty
                                    ? Colors.white
                                    : Colors.transparent,
                              )),
                          border: OutlineInputBorder()),
                      onChanged: (v) {
                        setState(() {
                          int value = int.parse(v) * 500;
                          two = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $two", style: textStyle),
                ],
              ),
              Row(
                children: [
                  Container(width: 90, child: Text("₹ 200", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      style: textStyle2,
                      controller: threeController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                threeController.clear();
                                three = 0;
                              });
                            },
                            child: Icon(
                              Icons.cancel,
                              color: threeController.text.isNotEmpty
                                  ? Colors.white
                                  : Colors.transparent,
                            )),
                      ),
                      onChanged: (v) {
                        setState(() {
                          int value = int.parse(v) * 200;
                          three = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $three", style: textStyle),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 90, child: Text("₹ 100", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      style: textStyle2,
                      controller: fourController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                fourController.clear();
                                four = 0;
                              });
                            },
                            child: Icon(
                              Icons.cancel,
                              color: fourController.text.isNotEmpty
                                  ? Colors.white
                                  : Colors.transparent,
                            )),
                      ),
                      onChanged: (v) {
                        setState(() {
                          int value = int.parse(v) * 100;
                          four = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $four", style: textStyle),
                ],
              ),
              Row(
                children: [
                  Container(width: 90, child: Text("₹ 50", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      controller: fiveController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                fiveController.clear();
                                five = 0;
                              });
                            },
                            child: Icon(
                              Icons.cancel,
                              color: fiveController.text.isNotEmpty
                                  ? Colors.white
                                  : Colors.transparent,
                            )),
                      ),
                      onChanged: (v) {
                        setState(() {
                          int value = int.parse(v) * 50;
                          five = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $five", style: textStyle),
                ],
              ),
              Row(
                children: [
                  Container(width: 90, child: Text("₹ 20", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      style: textStyle2,
                      controller: sixController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  sixController.clear();
                                  six = 0;
                                });
                              },
                              child: Icon(
                                Icons.cancel,
                                color: sixController.text.isNotEmpty
                                    ? Colors.white
                                    : Colors.transparent,
                              ))),
                      onChanged: (v) {
                        setState(() {
                          int value = int.parse(v) * 20;
                          six = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $six", style: textStyle),
                ],
              ),
              Row(
                children: [
                  Container(width: 90, child: Text("₹ 10", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      style: textStyle2,
                      controller: sevenController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  sevenController.clear();
                                  seven = 0;
                                });
                              },
                              child: Icon(
                                Icons.cancel,
                                color: sevenController.text.isNotEmpty
                                    ? Colors.white
                                    : Colors.transparent,
                              ))),
                      onChanged: (v) {
                        setState(() {
                          int value = int.parse(v) * 10;
                          seven = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $seven", style: textStyle),
                ],
              ),
              Row(
                children: [
                  Container(width: 90, child: Text("₹ 5", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      style: textStyle2,
                      controller: eightController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  eightController.clear();
                                  eight = 0;
                                });
                              },
                              child: Icon(
                                Icons.cancel,
                                color: eightController.text.isNotEmpty
                                    ? Colors.white
                                    : Colors.transparent,
                              ))),
                      onChanged: (v) {
                        setState(() {
                          int value = int.parse(v) * 5;
                          eight = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $eight", style: textStyle),
                ],
              ),
              Row(
                children: [
                  Container(width: 90, child: Text("₹ 2", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      style: textStyle2,
                      controller: nineController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  nineController.clear();
                                  nine = 0;
                                });
                              },
                              child: Icon(
                                Icons.cancel,
                                color: nineController.text.isNotEmpty
                                    ? Colors.white
                                    : Colors.transparent,
                              ))),
                      onChanged: (v) {
                        setState(() {
                          int value = int.parse(v) * 2;
                          nine = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $nine", style: textStyle),
                ],
              ),
              Row(
                children: [
                  Container(width: 90, child: Text("₹ 1", style: textStyle)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("x", style: textStyle),
                  ),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: TextField(
                      style: textStyle2,
                      controller: tenController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  tenController.clear();
                                  ten = 0;
                                });
                              },
                              child: Icon(
                                Icons.cancel,
                                color: tenController.text.isNotEmpty
                                    ? Colors.white
                                    : Colors.transparent,
                              ))),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("= ₹ $ten", style: textStyle),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         showCategoryRemarkDialog(context);
// Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExpandableFAB()));
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.electric_bolt,
          color: Colors.white,
        ),
      ),
    );
  }

  String convertToWords(int amount) {
    if (amount == 0) return "zero";

    final List<String> units = [
      "",
      "one",
      "two",
      "three",
      "four",
      "five",
      "six",
      "seven",
      "eight",
      "nine"
    ];
    final List<String> teens = [
      "eleven",
      "twelve",
      "thirteen",
      "fourteen",
      "fifteen",
      "sixteen",
      "seventeen",
      "eighteen",
      "nineteen"
    ];
    final List<String> tens = [
      "",
      "ten",
      "twenty",
      "thirty",
      "forty",
      "fifty",
      "sixty",
      "seventy",
      "eighty",
      "ninety"
    ];
    final List<String> thousands = ["", "thousand", "million", "billion"];

    String _convertChunk(int number) {
      String chunkWord = "";

      if (number >= 100) {
        chunkWord += "${units[number ~/ 100]} hundred ";
        number %= 100;
      }

      if (number >= 11 && number <= 19) {
        chunkWord += "${teens[number - 11]} ";
      } else if (number == 10) {
        chunkWord += "ten ";
      } else if (number >= 20) {
        chunkWord += "${tens[number ~/ 10]} ";
        number %= 10;
      }

      if (number > 0) {
        chunkWord += "${units[number]} ";
      }

      return chunkWord.trim();
    }

    List<String> chunks = [];
    int thousandIndex = 0;

    while (amount > 0) {
      int chunk = amount % 1000;
      if (chunk > 0) {
        String chunkWords = _convertChunk(chunk);
        if (thousands[thousandIndex].isNotEmpty) {
          chunkWords += " ${thousands[thousandIndex]}";
        }
        chunks.insert(0, chunkWords);
      }
      amount ~/= 1000;
      thousandIndex++;
    }

    return chunks.join(", ").trim();
  }

  Future<void> saveExpense(String category, String remark, int amount) async {
    final dbHelper = DatabaseHelper();

    final expense = {
      'category': category,
      'remark': remark,
      'amount': totalAmount(),
    };

    final id = await dbHelper.insertExpense(expense);
    print('Inserted expense with ID: $id');
  }

  Future<void> fetchExpenses() async {
    final dbHelper = DatabaseHelper();
    final expenses = await dbHelper.getExpenses();

    for (var expense in expenses) {
      print(
          'ID: ${expense['id']}, Category: ${expense['category']}, Remark: ${expense['remark']}, Amount: ${expense['amount']}');
    }
  }

  void showCategoryRemarkDialog(BuildContext context) {
    final _remarkController = TextEditingController();
    String? selectedCategory;
    List<String> categories = ['General', 'Income', 'Expense'];

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          // backgroundColor: Colors.black38,
          title: Text('Add Expense'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Category',
                    border: OutlineInputBorder(),
                  ),
                  items: categories.map((category) {
                    return DropdownMenuItem(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  onChanged: (value) {
                    selectedCategory = value;
                  },
                ),
                SizedBox(height: 16),
                TextField(

                  controller: _remarkController,
                  decoration: InputDecoration(
                    labelText: 'Remarks',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final remark = _remarkController.text;
                if (selectedCategory != null && remark.isNotEmpty) {
                  // Handle saving the data (e.g., insert into database)
                  print('Category: $selectedCategory, Remark: $remark');
                  saveExpense(selectedCategory!, remark, totalAmount());
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Data saved succesfully'),
                      duration: Duration(seconds: 2),
                      // action: SnackBarAction(
                      //   label: 'UNDO',
                      //   onPressed: () {
                      //     // Undo action
                      //     print('Undo clicked!');
                      //   },
                      // ),
                    ),
                  );

                  Navigator.pop(context); // Close dialog
                } else {
                  // Show a warning if fields are not filled
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Please select a category and add remarks.'),
                  ));
                }
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

}
