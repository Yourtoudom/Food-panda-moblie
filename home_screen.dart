import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myproject_flutter/screens/shop_screen.dart';
import 'package:myproject_flutter/widdgets/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final List<Map<String, String>> items = [
    {
      'title': 'Food delivery',
      'subtitle': 'Order food you love',
      'imagePath': 'assets/Food_Delivery.png',
    },
    {
      'title': 'pandamart',
      'subtitle': 'Essentials delivered fast',
      'imagePath': 'assets/pandamart.png',
    },
    {
      'title': 'Shops',
      'subtitle': 'Top brands to\nyour door',
      'imagePath': 'assets/shops.png',
    },
    {
      'title': 'Pick-up',
      'subtitle': 'Self-collect for\n50% off',
      'imagePath': 'assets/pick_up.png',
    },
    {
      'title': 'pandago',
      'subtitle': 'Send parcels in a \ntap',
      'imagePath': 'assets/pandago.png',
    },
  ];
  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Subway',
      'rating': '4.0',
      'reviews': '50+',
      'imagePath': 'assets/subway.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '15% off',
      'deliveryType': 'Free Delivery',
    },
        {
      'name': 'MMK-S FOODS',
      'rating': '4.0',
      'reviews': '50+',
      'imagePath': 'assets/MMK-S FOODS.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Food Place',
      'rating': '4.4',
      'reviews': '100+',
      'imagePath': 'assets/Food Place.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '15-30 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Burger House',
      'rating': '4.7',
      'reviews': '200+',
      'imagePath': 'assets/Burger House.jpg',
      'minOrder': 'PKR 299 minimum',
      'cuisine': 'Pakistani',
      'time': '10-25 min',
      'discount': '10% off',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Pizza House',
      'rating': '4.5',
      'reviews': '150+',
      'imagePath': 'assets/Pizza House.jpg',
      'minOrder': 'PKR 249 minimum',
      'cuisine': 'Pakistani',
      'time': '20-40 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
  ];

//shop

 final List<String> categories = [
    "Popular",
    "Cricket Deals",
    "Strong Pepsi Deals",
    "All New"
  ];

  final List<Map<String, String>> popularItems = [
    {
      "title": "Cricket Deal 2",
      "price": "Rs. 549.00",
      "oldPrice": "Rs. 869.00",
      "image": "assets/cricket_deal_2.jpg"
    },
    {
      "title": "Chicken Fajita",
      "price": "from Rs. 785.00",
      "image": "assets/chicken_fajita.jpg"
    },
    {
      "title": "Chicken Tikka",
      "price": "from Rs. 785.00",
      "image": "assets/chicken_tikka.jpg"
    },
    {
      "title": "Chicken Teriyaki",
      "price": "from Rs. 840.00",
      "image": "assets/chicken_teriyaki.jpg"
    },
    {
      "title": "Roasted Chicken Breast",
      "price": "from Rs. 710.00",
      "image": "assets/roasted_chicken_breast.jpg"
    },
    {
      "title": "Chicken Tikka Salad",
      "price": "from Rs. 845.00",
      "image": "assets/chicken_tikka_salad.png"
    }
  ];
final GlobalKey<ScaffoldState> _scaffoldkey =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: const Color(0xFFF1E2E5),
      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            pinned: true,
            expandedHeight: 130,
            backgroundColor: const Color(0XFFFF2B85),
            leading: IconButton(
              onPressed: () => _scaffoldkey.currentState?.openDrawer(),
              icon: const Icon(Icons.menu_sharp,
              size: 30),
              color: Colors.white,
            ),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Home",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 2),
                Text("Your location or address will be here....",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),)
              ],
            ),
            actions: [
              IconButton(onPressed: () {}, 
              icon: const Icon(
                Icons.favorite_border_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            Stack(
              children: [
                IconButton(onPressed: () {}, 
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Positioned(
                right: 10,
                top: 25,
                child: Container(
                  height: 16,
                  width: 16,
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Text('1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFF2B85),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              )
              ],
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search for shops & restaurants",
                        prefixIcon: Icon(CupertinoIcons.search,
                        size: 30,
                        color: Colors.black,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                  )
                ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
              [
                Padding(
                padding: const EdgeInsets.all(20),
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 3.1, 
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.black26,
                          )
                        ),
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.symmetric(
                              vertical: 10,horizontal: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(items[0]['title']!,
                                      style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                    Text(items[0]['subtitle']!,
                                      style: const TextStyle(
                                      fontSize: 12,
                                      
                                  ),
                                  ),
                                ],
                              ),
                              ),
                              Padding(padding: const EdgeInsets.all(8),
                              child: Image.asset(items[0]['imagePath']!,
                              fit: BoxFit.cover,
                              ),
                              ),
                          ],
                        ),
                      ),
                      ),
                       StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.05, 
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.black26,
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                    Text(items[1]['title']!,
                                      style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                    Text(items[1]['subtitle']!,
                                      style: const TextStyle(
                                      fontSize: 12,
                                  ),
                                  ),
                              ],
                            ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child:
                                  Padding(padding: const EdgeInsets.all(5),
                                    child: Image.asset(items[1]['imagePath']!,
                                    fit: BoxFit.cover,
                                    height: 100,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ),
                       StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.05, 
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.black26,
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.symmetric(
                              vertical:10,
                              horizontal: 15,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                    Text(items[2]['title']!,
                                      style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                    Text(items[2]['subtitle']!,
                                      style: const TextStyle(
                                      fontSize: 12,
                                  ),
                                  ),
                              ],
                            ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child:
                                  Padding(padding: const EdgeInsets.all(5),
                                    child: Image.asset(items[2]['imagePath']!,
                                    fit: BoxFit.cover,
                                    height:25,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ),
                       StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.05, 
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.black26,
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.symmetric(
                              vertical:10,
                              horizontal: 15,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                    Text(items[3]['title']!,
                                      style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                    Text(items[3]['subtitle']!,
                                      style: const TextStyle(
                                      fontSize: 12,
                                  ),
                                  ),
                              ],
                            ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child:
                                  Padding(padding: const EdgeInsets.all(5),
                                    child: Image.asset(items[3]['imagePath']!,
                                    fit: BoxFit.cover,
                                    height:25,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ),
                      StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.05, 
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 0.5,
                            color: Colors.black26,
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: const EdgeInsets.symmetric(
                              vertical:10,
                              horizontal: 15,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                    Text(items[4]['title']!,
                                      style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                    Text(items[4]['subtitle']!,
                                      style: const TextStyle(
                                      fontSize: 10,
                                  ),
                                  ),
                              ],
                            ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child:
                                  Padding(padding: const EdgeInsets.all(5),
                                    child: Image.asset(items[4]['imagePath']!,
                                    fit: BoxFit.cover,
                                    height:50,
                                    width: 50,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ),
                  ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Padding(padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Free Delivery",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight:FontWeight.bold,
                          ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 240,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: restaurants.length,
                              itemBuilder: (context, index) {
                                return _buildRestauratnItem(restaurants[index]);
                              }
                            ),
                          ),
                        ],
                      ),
                      ),
                      const SizedBox(height: 50),
                    ]
                  ),
                ),
              ],
              ),
            ),
        ],
      ),
    );
  }
  Widget _buildRestauratnItem(Map<String, dynamic>restaurants){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ShopScreen()));
      },
      child: Container(
        width: 260,
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.asset(restaurants['imagePath'],
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  
                  ),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if(restaurants['discount'].isNotEmpty)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0XFFFF2B85),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Text(restaurants['discount'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          
                        ),
                        ),
                      ),
                      Container(
                        margin:restaurants['discount'].isNotEmpty ? const EdgeInsets.only(
                          top: 5): const EdgeInsets.only(),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8.0,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0XFFFF2B85),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Text(restaurants['deliveryType'],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ],
                  ),
                  ),
              ],
            ),
                    Padding(
                    padding:const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(restaurants['name'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.orange, size: 18),
                                const SizedBox(width: 4),
                                Text(
                                  restaurants['rating'],
                                  style: const TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  '(${restaurants['reviews']})',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text('${restaurants['mainOrder']} - ${restaurants['cuisine']}',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 12,
                        ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.access_time, color: Colors.black,size: 16),
                            const SizedBox(width: 4),
                            Text(restaurants['time'],
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 12,
                            ),
                            ),
                            const SizedBox(width: 15),
                            const Icon(Icons.delivery_dining_rounded,
                            color: Color(0xFFFF2b85), size: 16,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              restaurants['deliveryType'],
                            style: const TextStyle(
                              color: Color(0xFFFF2b85),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}