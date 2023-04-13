import 'package:firstapp/home_page.dart';
import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false, //Remove go back arrow on top nav
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(); //pop = go back to previous page
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        //make the screen scrollable
        child: Column(
          //Allow multilpe widget (cause children only allow one widget per children)
          children: [
            Image.asset('images/einstein.jpg'), //Insert image
            const SizedBox(
              height: 10,
            ), //create an invisible box that made the black line go a little lower
            const Divider(
              //insert divider under the image
              color: Colors.black,
            ),
            Container(
              color: const Color.fromARGB(255, 139, 203, 255),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Be financially smart',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.blue : Colors.green,
              ),
              //Button with filled color
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              //Button without filled color
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              //Button with only text
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Elevated Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior
                  .opaque, //Every where on the row will be clickable instead of only the icons/text
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, //Organised the icons evenly
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text(
                    'Row Widget',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    //needed to refresh the screen
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image.network(
                'https://www.daysoftheyear.com/cdn-cgi/image/dpr=1%2Cf=auto%2Cfit=cover%2Cheight=650%2Cq=70%2Csharpen=1%2Cwidth=956/wp-content/uploads/international-cat-day1-scaled.jpg')
          ],
        ),
      ),
    );
  }
}
