import 'package:flutter/material.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_application_1/services/navigation_service.dart';
import 'package:flutter_application_1/ui/pages/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth < 520) return _MobileMenu();
      return _TabletDesktopMenu();
    });
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          CustomFlatButton(
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            child: Text('Stateful Counter'),
            color: Colors.black,
          ),
          CustomFlatButton(
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            child: Text('Provider Counter'),
            color: Colors.black,
          ),
          CustomFlatButton(
            onPressed: () => locator<NavigationService>().navigateTo('/xd'),
            child: Text('Another Counter'),
            color: Colors.black,
          ),
          CustomFlatButton(
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider?q=200'),
            child: Text('Provider 200'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            child: Text('Stateful Counter'),
            color: Colors.black,
          ),
          CustomFlatButton(
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            child: Text('Provider Counter'),
            color: Colors.black,
          ),
          CustomFlatButton(
            onPressed: () => locator<NavigationService>().navigateTo('/xd'),
            child: Text('Another Counter'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
