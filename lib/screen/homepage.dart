import 'package:e_commerce_app/screen/data.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.qr_code_2_rounded),
      ),
      bottomNavigationBar: const BottomAppBarWidget(),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 21,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('image/me.jpg'),
                        radius: 20,
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      size: 25,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 190),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'New & Noteworthy',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextFieldWidget(),
                const SizedBox(
                  height: 10,
                ),
                const ListViewWidget(),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'image/furniture.jpg',
                            ),
                            fit: BoxFit.cover),
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200, top: 15),
                      child: Container(
                        height: 65,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Featured',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '\$600',
                                  style: TextStyle(
                                      color: Colors.red.shade200,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 25),
                              child: Text(
                                'Furniture',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured products',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const FeaturedProductWidget(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Popular products',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const PopularProductWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextFormField(
            style: const TextStyle(fontSize: 15, color: Colors.grey),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              hintText: 'Search here',
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              suffixIcon: const Icon(Icons.mic_none),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 40,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.pink[400],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.settings),
        ),
      ],
    );
  }
}

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({
    super.key,
  });

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color: Colors.white,
      notchMargin: 6.0,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.free_breakfast_outlined,
                  color: Colors.black,
                ),
                Text(
                  'Rewards',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                Text(
                  'Cart',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Text(
                  'Menu',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedProductWidget extends StatefulWidget {
  const FeaturedProductWidget({
    super.key,
  });

  @override
  State<FeaturedProductWidget> createState() => _FeaturedProductWidgetState();
}

class _FeaturedProductWidgetState extends State<FeaturedProductWidget> {
  List _datas = [
    Data(images: 'image/watch.jpg', text1: '\$225', text2: '4.8'),
    Data(images: 'image/airpods.jpg', text1: '\$200', text2: '5.0'),
    Data(images: 'image/mobile cover.jpg', text1: '\$150', text2: '3.0'),
    Data(images: 'image/watch.jpg', text1: '\$225', text2: '4.8'),
    Data(images: 'image/airpods.jpg', text1: '\$200', text2: '5.0'),
    Data(images: 'image/mobile cover.jpg', text1: '\$150', text2: '3.0'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 190,
        ),
        itemCount: _datas.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      // height: 40,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(_datas[index].images),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 135, top: 5),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(_datas[index].text1),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                Text(_datas[index].text2),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  int _selectedIndex = -1;
  List _datas = [
    GadgetsData(icons: Icons.shop, text: 'Gadgets'),
    GadgetsData(icons: Icons.mobile_friendly, text: 'mobiles'),
    GadgetsData(icons: Icons.shopping_cart, text: 'shoes'),
    GadgetsData(icons: Icons.broken_image, text: 'album'),
    GadgetsData(icons: Icons.cable, text: 'Cables'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 70,
        width: double.infinity,
        child: ListView.builder(
          itemCount: _datas.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      height: 38,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Icon(
                                _datas[index].icons,
                                size: 15,
                                color: index == _selectedIndex
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                            Center(
                              child: Text(
                                _datas[index].text,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: index == _selectedIndex
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class PopularProductWidget extends StatefulWidget {
  const PopularProductWidget({
    super.key,
  });

  @override
  State<PopularProductWidget> createState() => _PopularProductWidgetState();
}

class _PopularProductWidgetState extends State<PopularProductWidget> {
  List _data = [
    PopularData(image: 'image/mobile cover.jpg', text3: '\$500', text4: '3.8'),
    PopularData(image: 'image/watch.jpg', text3: '\$300', text4: '2.5'),
    PopularData(image: 'image/airpods.jpg', text3: '\400', text4: '4.5'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          // crossAxisSpacing: 10.0,
          // mainAxisSpacing: 5.0,
          mainAxisExtent: 190,
        ),
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      // height: 40,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(_data[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 135, top: 5),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(_data[index].text3),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                Text(_data[index].text4),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
