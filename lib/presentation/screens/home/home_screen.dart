import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';
// import 'package:widgets_app/presentation/screens/carts/cards_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey, // referencia al scaffold
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const BouncingScrollPhysics(), // Quitar la animación de rebote
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItems = appMenuItems[index];
        return _CustomListTitle(menuItems: menuItems);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItems,
  });

  final MenuItem menuItems;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItems.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary),
      title: Text(menuItems.title),
      subtitle: Text(menuItems.subTitle),
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => const ButtonsScreen(),
        // ));

        // Con nombres de rutas.
        // Navigator.pushNamed(context, menuItems.link);

        // Con go_router.
        context.push(menuItems.link);
        // context.pushNamed(
        //   CardsScreen.routeName,
        // );
      },
    );
  }
}
