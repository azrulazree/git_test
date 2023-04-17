import 'package:flutter_svg/flutter_svg.dart';
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
        title: const Text('Frequently Asked Question'),
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
            const SizedBox(height: 50),

            SvgPicture.asset(
              "images/login.svg",
              height: 200,
              width: 200,
            ), //Insert image
            const SizedBox(
              height: 10,
            ), //create an invisible box that made the black line go a little lower
            // const Divider(
            //   //insert divider under the image
            //   color: Colors.black,
            // ),
            Container(
              // color: const Color.fromARGB(255, 139, 203, 255),
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Why sleep is important?',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            ExpansionTile(
              title: const Text('Why sleep is so important?',
                  style: TextStyle(color: Colors.deepPurple)),
              children: <Widget>[
                ListTile(
                  title: const Text(
                      'Sleep is essential for physical health and well-being.'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),
                ListTile(
                  title: const Text(
                      'Poor sleep is linked to mood disorders such as anxiety and depression.'),
                  onTap: () {
                    // Do something when item 2 is tapped
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Why causes sleep disturbance?',
                  style: TextStyle(color: Colors.deepPurple)),
              children: <Widget>[
                ListTile(
                  title: const Text(
                      'Stress and anxiety, including work-related stress, financial worries, or relationship problems.'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),
                ListTile(
                  title: const Text(
                      'Medical conditions such as sleep apnea, chronic pain, restless leg syndrome, or thyroid disorders.'),
                  onTap: () {
                    // Do something when item 2 is tapped
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('How many hours of sleep do I need?',
                  style: TextStyle(color: Colors.deepPurple)),
              children: <Widget>[
                ListTile(
                  title: const Text(
                      'Stress and anxiety, including work-related stress, financial worries, or relationship problems.'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),
                ListTile(
                  title: const Text(
                      'Medical conditions such as sleep apnea, chronic pain, restless leg syndrome, or thyroid disorders.'),
                  onTap: () {
                    // Do something when item 2 is tapped
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Why causes sleep disturbance?',
                  style: TextStyle(color: Colors.deepPurple)),
              children: <Widget>[
                ListTile(
                  title: const Text(
                      'Stress and anxiety, including work-related stress, financial worries, or relationship problems.'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),
                ListTile(
                  title: const Text(
                      'Medical conditions such as sleep apnea, chronic pain, restless leg syndrome, or thyroid disorders.'),
                  onTap: () {
                    // Do something when item 2 is tapped
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Why causes sleep disturbance?',
                  style: TextStyle(color: Colors.deepPurple)),
              children: <Widget>[
                ListTile(
                  title: const Text(
                      'Stress and anxiety, including work-related stress, financial worries, or relationship problems.'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),
                ListTile(
                  title: const Text(
                      'Medical conditions such as sleep apnea, chronic pain, restless leg syndrome, or thyroid disorders.'),
                  onTap: () {
                    // Do something when item 2 is tapped
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Why causes sleep disturbance?',
                  style: TextStyle(color: Colors.deepPurple)),
              children: <Widget>[
                ListTile(
                  title: const Text(
                      'Stress and anxiety, including work-related stress, financial worries, or relationship problems.'),
                  onTap: () {
                    // Do something when item 1 is tapped
                  },
                ),
                ListTile(
                  title: const Text(
                      'Medical conditions such as sleep apnea, chronic pain, restless leg syndrome, or thyroid disorders.'),
                  onTap: () {
                    // Do something when item 2 is tapped
                  },
                ),
              ],
            ),

            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: isSwitch ? Colors.blue : Colors.green,
            //   ),
            //   //Button with filled color
            //   onPressed: () {
            //     debugPrint('Elevated Button');
            //   },
            //   child: const Text('Elevated Button'),
            // ),
            // OutlinedButton(
            //   //Button without filled color
            //   onPressed: () {
            //     debugPrint('Outlined Button');
            //   },
            //   child: const Text('Outlined Button'),
            // ),
            // TextButton(
            //   //Button with only text
            //   onPressed: () {
            //     debugPrint('Text Button');
            //   },
            //   child: const Text('Elevated Button'),
            // ),
            // GestureDetector(
            //   behavior: HitTestBehavior
            //       .opaque, //Every where on the row will be clickable instead of only the icons/text
            //   onTap: () {
            //     debugPrint('This is the row');
            //   },
            //   child: Row(
            //     mainAxisAlignment:
            //         MainAxisAlignment.spaceEvenly, //Organised the icons evenly
            //     children: const [
            //       Icon(
            //         Icons.local_fire_department,
            //         color: Colors.blue,
            //       ),
            //       Text(
            //         'Row Widget',
            //         style: TextStyle(color: Colors.blue),
            //       ),
            //       Icon(
            //         Icons.local_fire_department,
            //         color: Colors.blue,
            //       ),
            //     ],
            //   ),
            // ),
            // Switch(
            //     value: isSwitch,
            //     onChanged: (bool newBool) {
            //       setState(() {
            //         //needed to refresh the screen
            //         isSwitch = newBool;
            //       });
            //     }),
            // Checkbox(
            //     value: isCheckbox,
            //     onChanged: (bool? newBool) {
            //       setState(() {
            //         isCheckbox = newBool;
            //       });
            //     }),
            // Image.network(
            //     'https://www.daysoftheyear.com/cdn-cgi/image/dpr=1%2Cf=auto%2Cfit=cover%2Cheight=650%2Cq=70%2Csharpen=1%2Cwidth=956/wp-content/uploads/international-cat-day1-scaled.jpg')
          ],
        ),
      ),
    );
  }
}
