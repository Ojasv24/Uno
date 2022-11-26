import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uno_graphql/client.dart';
import 'package:uno_graphql/src/pages/home_page.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GraphQLProvider(
      client: ref.watch(clientNotifierProvider),
      child: MaterialApp(
        title: 'OUNO',
        theme: ThemeData(
            primarySwatch: Colors.blue, colorScheme: const ColorScheme.dark()),
        home: const HomePage(),
      ),
    );
  }
}
