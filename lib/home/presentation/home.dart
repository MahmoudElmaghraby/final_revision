import 'package:final_revision/home/cubit/home_cubit.dart';
import 'package:final_revision/home/cubit/home_states.dart';
import 'package:final_revision/home/presentation/details_screen.dart';
import 'package:final_revision/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // final List<Item> items = [
  //   Item(
  //     title: 'Item 1',
  //     imageUrl: 'https://via.placeholder.com/150',
  //     description: 'Description for item 1',
  //   ),
  //   Item(
  //     title: 'Item 2',
  //     imageUrl: 'https://via.placeholder.com/150',
  //     description: 'Description for item 2',
  //   ),
  //   Item(
  //     title: 'Item 3',
  //     imageUrl: 'https://via.placeholder.com/150',
  //     description: 'Description for item 3',
  //   ),
  //   Item(
  //     title: 'Item 4',
  //     imageUrl: 'https://via.placeholder.com/150',
  //     description: 'Description for item 4',
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getData(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          print('dataaaaaaaa : ${HomeCubit.get(context).data}');
          List categoriesList = HomeCubit.get(context).data?.data['categories'];
          return Scaffold(
            appBar: AppBar(
              title: Text('Categories'),
              centerTitle: true,
            ),
            body: GridView.builder(
              itemCount: categoriesList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => DetailsScreen(
                    //             item: categoriesList[index],
                    //           )),
                    // );
                  },
                  child: Card(
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            const SizedBox(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border)),
                          ],
                        ),
                        Image.network(
                          categoriesList[index]['strCategoryThumb'],
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          categoriesList[index]['strCategory'],
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
