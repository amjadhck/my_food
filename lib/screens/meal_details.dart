import 'package:flutter/material.dart';
import 'package:my_food/dummy_data.dart';
import 'package:my_food/modals/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const id = '/meal_details';
  const MealDetailScreen({Key? key}) : super(key: key);

  Widget buildTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 200,
      width: 450,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildTitle(context, "Ingrediens"),
            buildContainer(
              ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (context, index) => Card(
                  color: Theme.of(context).backgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(selectedMeal.ingredients[index]),
                  ),
                ),
              ),
            ),
            buildTitle(context, "Steps"),
            buildContainer(
              ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${index + 1}'),
                      ),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    const Divider(
                      thickness: 5,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
