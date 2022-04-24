import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(padding: const EdgeInsets.all(12), children: [
      TextFormField(
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: 'Search',
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
      const SizedBox(height: 18),
      Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.red[200],
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Text(
            'NEODEAL RECOGNISE THE IMPORTANCE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 18),
          Row(children: const [
            Text(
              '₹999',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 18),
            Text(
              '₹199',
              style: TextStyle(color: Colors.white),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            for (int i = 0; i < 5; i++)
              Container(
                height: 5,
                width: 15,
                margin: const EdgeInsets.all(1.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: i == 3 ? Colors.white : Colors.grey[300],
                ),
              ),
          ]),
        ]),
      ),
      Container(
        height: 80,
        width: size.width,
        margin: const EdgeInsets.only(top: 18, bottom: 18),
        child: ListView.builder(
            itemCount: 99,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Column(children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.6,
                    ),
                    shape: BoxShape.circle,
                    color: true ? Colors.blue : null,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'index $index',
                  style: const TextStyle(fontSize: 12),
                )
              ]);
            }),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          'Our Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'See All',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ))
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(children: [
          Container(
            height: 120,
            width: size.width / 2.2,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Colors.red[200],
            ),
            child: const Text(
              'Fashion',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 9),
          Container(
            height: 120,
            width: size.width / 2.2,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Colors.red[200],
            ),
            child: const Text(
              'Fashion',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
        Container(
          height: 249,
          width: size.width / 2.2,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.red[200],
          ),
          child: const Text(
            'Fashion',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
      // TODO [Deals of the day header home page]
      Row(children: [
        Container(
          margin: const EdgeInsets.only(top: 24),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.red[200],
          ),
          child: const Text(
            'Deals of the day',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ]),
      // TODO [Deals of the day list items home page]
      Container(
        height: 259,
        width: size.width,
        margin: const EdgeInsets.only(top: 18, bottom: 18),
        child: ListView.builder(
            itemCount: 99,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Container(
                height: 249,
                width: size.width / 2.2,
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.red[200],
                ),
                child: const Text(
                  'Fashion',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }),
      ),
      // TODO [Get On Neodeal header home page]
      Container(
        padding: const EdgeInsets.all(12),
        child: const Text(
          'Get On Neodeal',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // TODO [Get On Neodeal items home page]
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          height: 120,
          width: size.width / 3.5,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.red[200],
          ),
          child: const Text(
            'Fashion',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          height: 120,
          width: size.width / 3.5,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.red[200],
          ),
          child: const Text(
            'Fashion',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          height: 120,
          width: size.width / 3.5,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.red[200],
          ),
          child: const Text(
            'Fashion',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    ]);
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(padding: const EdgeInsets.all(12), children: [
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: 'Search',
            fillColor: Colors.grey[200],
            filled: true,
          ),
        ),
        const SizedBox(height: 18),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton.icon(
            icon: const Icon(Icons.sort, color: Colors.black),
            label: const Text(
              'Sort',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {},
          ),
          const SizedBox(),
          const SizedBox(),
          TextButton.icon(
            icon: const Icon(Icons.filter, color: Colors.black),
            label: const Text(
              'Filter',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {},
          ),
        ]),
        const SizedBox(height: 18),
        GridView(
          shrinkWrap: true,
          children: List.generate(
              99,
              (index) => Column(children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.red[200],
                        ),
                        child: Container(
                          width: size.width,
                          color: Colors.black38,
                          padding: const EdgeInsets.all(6),
                          margin: const EdgeInsets.only(bottom: 9),
                          child: const Text(
                            'Fashion',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 18.0, bottom: 18.0),
                      child: Text('Mens'),
                    ),
                  ])),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.8,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 6.0,
            crossAxisCount: 2,
          ),
        ),
      ]),
    );
  }
}

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: Image.asset(
          'assets/app_title.jpeg',
          height: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          )
        ],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(child: ListView()),
      body: _selectedIndex == 0
          ? const HomePage()
          : _selectedIndex == 0
              ? const HomePage()
              : _selectedIndex == 1
                  ? const ProductPage()
                  : Container(
                      alignment: Alignment.center,
                      child: Text(
                        _selectedIndex == 1 ? 'Personal' : 'Profile',
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        //type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() {
          _selectedIndex = index;
        }),
      ),
    );
  }
}
