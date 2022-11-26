import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uno_graphql/client.dart';
import 'package:uno_graphql/src/graphql/mutations.graphql.dart';
import 'package:uno_graphql/src/helper/helper.dart';
import 'package:uno_graphql/src/pages/game_page.dart';
import 'package:flutter/services.dart';
import 'package:uno_graphql/src/pages/utils/snack_bar_class.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final createGame = useMutation$CreateRoom();
    final joinGame = useMutation$JoinGame();

    final nameController = useTextEditingController();
    final joinroomController = useTextEditingController();
    final createroomController = useTextEditingController();
    final createRoom = useState(false);

    useQueryErrorSnackbar(createGame.result, ref);
    useQueryErrorSnackbar(joinGame.result, ref);

    useAsyncEffect(() {
      if (joinGame.result.parsedData != null) {
        final token = joinGame.result.parsedData!.join;
        ref.read(tokenProvider.state).state = token;
        ref.read(nameProvider.state).state = nameController.text;

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Gamepage()),
        );
      }
      return Future.value();
    }, [joinGame.result.parsedData]);

    useAsyncEffect(() {
      if (createGame.result.parsedData != null) {
        final roomId = createGame.result.parsedData!.createRoom.id;
        createroomController.text = roomId;
        createRoom.value = true;
      }
      return Future.value();
    }, [createGame.result.parsedData]);

    ref.listen(
      scaffoldMessageProvider,
      (_, curr) {
        final messenger = ScaffoldMessenger.of(context);
        messenger.clearSnackBars();
        if (curr.type == SnackBarType.error) {
          messenger.showSnackBar(SnackBar(
            content: Text(
              curr.message,
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
          ));
        } else {
          messenger.showSnackBar(SnackBar(
            backgroundColor: Colors.white,
            behavior: SnackBarBehavior.floating,
            content: Text(
              curr.message,
            ),
          ));
        }
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text('OUNO')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(),
                )),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        decoration: const InputDecoration(
                          hintText: "Room Id",
                        ),
                        controller: joinroomController,
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (_joinGame(ref, joinGame, nameController.text,
                                joinroomController.text)) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Gamepage()),
                              );
                            }
                          },
                          child: const Text('Join Room')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'OR',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      if (createRoom.value)
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: () {
                                createRoom.value = false;
                              },
                              icon: const Icon(Icons.logout_rounded)),
                        ),
                      if (!createRoom.value)
                        ElevatedButton(
                          onPressed: createGame.result.isLoading
                              ? null
                              : () => createGame.runMutation(),
                          child: const Text('Create Room'),
                        )
                      else
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                readOnly: true,
                                controller: createroomController,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                await Clipboard.setData(ClipboardData(
                                    text: createroomController.text));
                              },
                              child: const Text('Copy'),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  if (_joinGame(
                                      ref,
                                      joinGame,
                                      nameController.text,
                                      createroomController.text)) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Gamepage()),
                                    );
                                  }
                                },
                                child: const Text('Play')),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

bool _joinGame(WidgetRef ref, Mutation$JoinGame$HookResult joinGame,
    String name, String roomId) {
  if (ref.read(nameProvider) == name && ref.read(roomProvider) == roomId) {
    return true;
  }
  ref.read(roomProvider.state).state = roomId;
  joinGame.runMutation(Variables$Mutation$JoinGame(name: name, roomID: roomId));
  return false;
}
