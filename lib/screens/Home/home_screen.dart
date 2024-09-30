import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:g_store/constants.dart';
import 'package:g_store/screens/Home/Widget/home_app_bar.dart';
import 'package:g_store/screens/Home/Widget/image_slider.dart';
import 'package:g_store/screens/Home/Widget/product_cart.dart';
import 'package:g_store/screens/Home/Widget/search_bar.dart';

import '../../models/category.dart';
import '../../models/product.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    List<List<Product>>selectedCategories=[all,shoes,beauty,womenFashion,jewelry, menFashion];
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35,),
              //for custom app bar
              const CustomAppBar(),
              const SizedBox(height: 20,),
              // for search bar
              const MySearchBar(),
              const SizedBox(height: 20),
              ImageSlider(
                  currentSlide: currentSlider,
                  onChange: (value){
                    setState(() {
                      currentSlider = value;
                    },
                    );
                  },
              ),
              const SizedBox(height: 20),
              //categoryItems(),
              //for category selection
          SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: categoriesList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex =index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: selectedIndex == index
                          ?Colors.blue[200]
                          :Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(categoriesList[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          categoriesList[index].title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

          ),
              if(selectedIndex==0)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight:  FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              //for shopping items
              const SizedBox(height: 10),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: selectedCategories[selectedIndex].length,
                  itemBuilder: (context,index) {
                    return  ProductCard(
                      product: selectedCategories[selectedIndex][index],
                    );
                  }
              ),
            ],
          ),
        ),

      )
    );
  }
}






































































