import 'package:book_shop/ui/widgets/custom_text.dart';
import 'package:book_shop/ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Homepage extends StatelessWidget {
  final searchController = TextEditingController();
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: CustomText(text: "Book Junction"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: CustomTextfield(
                controller: searchController,
                prefixIcon: const Icon(Icons.search),
                hintText: "Search for books",
                suffixIcon: const Icon(Icons.mic_outlined),
              ),
            ),
          ),
          SliverToBoxAdapter(child: const Gap(10)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 45,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10),
                      child: Center(
                        child: CustomText(
                          text: "category",
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: CustomText(
                text: "Continue Reading",
                size: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
              child: ListView.separated(
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(15)),
                            image: DecorationImage(
                              opacity: 0.1,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/931007/pexels-photo-931007.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.network(
                              "https://images.pexels.com/photos/931007/pexels-photo-931007.jpeg?auto=compress&cs=tinysrgb&w=600",
                              width: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "A Day of Fallen Night",
                                  size: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomText(
                                  text: "Samantha Shannon",
                                  size: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                const LinearProgressIndicator(
                                  value: 0.4,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: CustomText(
                text: "Best Sellers",
                size: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 280,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Card(
                    elevation: 1,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Image.network(
                                "https://images.pexels.com/photos/931007/pexels-photo-931007.jpeg?auto=compress&cs=tinysrgb&w=600"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 8, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: "Book of Night",
                                    size: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  Card(
                                      color: Colors.amber.shade100,
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 15,
                                            ),
                                            CustomText(
                                              text: '4.8',
                                              size: 12,
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              CustomText(
                                text: "Elodie Harper",
                                color: Colors.grey,
                                height: 1,
                                size: 12,
                              ),
                              CustomText(
                                text: "\$6.9",
                                fontWeight: FontWeight.bold,
                                size: 16,
                                height: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
