import 'package:flutter/cupertino.dart';

class ListViewUserProperty extends StatelessWidget {
  const ListViewUserProperty({Key? key, required this.properties})
      : super(key: key);
  final List<Property> properties;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // Change to NeverScrollableScrollPhysics
      itemBuilder: (context, index) => CustomUserPropertyDetails(property: properties[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: properties.length,
    );
  }
}