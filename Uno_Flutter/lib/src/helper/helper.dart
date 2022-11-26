import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uno_graphql/src/pages/utils/snack_bar_class.dart';

final scaffoldMessageProvider =
    StateProvider((ref) => SnackBarClas(message: '', type: SnackBarType.error));

void useQueryErrorSnackbar(QueryResult result, WidgetRef ref) {
  // final context = useContext();
  // final messenger = ScaffoldMessenger.of(context);
  useAsyncEffect(() {
    if (result.hasException) {
      final errorMessage = result.exception!.graphqlErrors.first.message;
      ref.read(scaffoldMessageProvider.state).state =
          SnackBarClas(message: errorMessage, type: SnackBarType.error);
      // // Future.microtask(() {
      // messenger.clearSnackBars();
      // messenger.showSnackBar(SnackBar(
      //   content: Text(
      //     errorMessage,
      //     style: const TextStyle(color: Colors.white),
      //   ),
      //   backgroundColor: Colors.red,
      // ));
      // });
    }
    return Future.value();
  }, [result.hasException]);
}

void useAsyncEffect(Future<Dispose?> Function() effect, [List<Object?>? keys]) {
  useEffect(() {
    final disposeFuture = Future.microtask(effect);
    return () => disposeFuture.then((dispose) => dispose?.call());
  }, keys);
}
