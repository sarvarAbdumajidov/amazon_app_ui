import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 100,
              child: Image(image: AssetImage('assets/images/img.png')),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            // #search
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: const Color(0xFF018197),
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: const TextField(
                    cursorColor: Color(0xFF018197),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 8.0,
                      ),
                      isDense: false,
                      border: InputBorder.none,
                      hintText: "What are you looking for?",
                      icon: Icon(Icons.search),
                      iconColor: Color(0xFF018197),
                      suffixIcon: Icon(Icons.camera_alt),
                      suffixIconColor: Color(0xFF018197),
                    ),
                  )),
            ),
            Expanded(
              child: ListView(
                children: [
                  // #location
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child: const Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          "Deliver to Korea, Republic of",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  // #adds
                  SizedBox(
                    height: 140,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          width: 180,
                          color: Colors.white,
                          child: const Text(
                            'We ship 45million products',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: ColoredBox(
                            color: Colors.white,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(70),
                                    bottomLeft: Radius.circular(70)),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/img_1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  // #sign in
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sign in for the best experience",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: double.infinity,
                          child: CupertinoButton(
                            borderRadius: BorderRadius.zero,
                            alignment: Alignment.center,
                            color: Colors.orange,
                            child: const Text(
                              'Sing in',
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Create account',
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  // #deal
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deal of the Day",
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        SizedBox(height: 16),
                        Image(
                          width: double.infinity,
                          height: 240,
                          image: AssetImage('assets/images/img_9.png'),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Up to 31% off APC UPS Battery Back",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(height: 6),
                        Text(
                          r"$10.99 - $79.9",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // #best
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Text(
                          "Best sellers in Electronics",
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: MediaQuery.of(context).size.width,
                          child: const Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/img_6.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/img_7.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/img_5.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/img_4.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
