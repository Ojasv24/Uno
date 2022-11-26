import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$JoinGame {
  factory Variables$Mutation$JoinGame({
    required String name,
    required String roomID,
  }) =>
      Variables$Mutation$JoinGame._({
        r'name': name,
        r'roomID': roomID,
      });

  Variables$Mutation$JoinGame._(this._$data);

  factory Variables$Mutation$JoinGame.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$roomID = data['roomID'];
    result$data['roomID'] = (l$roomID as String);
    return Variables$Mutation$JoinGame._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  String get roomID => (_$data['roomID'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$roomID = roomID;
    result$data['roomID'] = l$roomID;
    return result$data;
  }

  CopyWith$Variables$Mutation$JoinGame<Variables$Mutation$JoinGame>
      get copyWith => CopyWith$Variables$Mutation$JoinGame(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$JoinGame) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$roomID = roomID;
    final lOther$roomID = other.roomID;
    if (l$roomID != lOther$roomID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$roomID = roomID;
    return Object.hashAll([
      l$name,
      l$roomID,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$JoinGame<TRes> {
  factory CopyWith$Variables$Mutation$JoinGame(
    Variables$Mutation$JoinGame instance,
    TRes Function(Variables$Mutation$JoinGame) then,
  ) = _CopyWithImpl$Variables$Mutation$JoinGame;

  factory CopyWith$Variables$Mutation$JoinGame.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$JoinGame;

  TRes call({
    String? name,
    String? roomID,
  });
}

class _CopyWithImpl$Variables$Mutation$JoinGame<TRes>
    implements CopyWith$Variables$Mutation$JoinGame<TRes> {
  _CopyWithImpl$Variables$Mutation$JoinGame(
    this._instance,
    this._then,
  );

  final Variables$Mutation$JoinGame _instance;

  final TRes Function(Variables$Mutation$JoinGame) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? roomID = _undefined,
  }) =>
      _then(Variables$Mutation$JoinGame._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (roomID != _undefined && roomID != null)
          'roomID': (roomID as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$JoinGame<TRes>
    implements CopyWith$Variables$Mutation$JoinGame<TRes> {
  _CopyWithStubImpl$Variables$Mutation$JoinGame(this._res);

  TRes _res;

  call({
    String? name,
    String? roomID,
  }) =>
      _res;
}

class Mutation$JoinGame {
  Mutation$JoinGame({required this.join});

  factory Mutation$JoinGame.fromJson(Map<String, dynamic> json) {
    final l$join = json['join'];
    return Mutation$JoinGame(join: (l$join as String));
  }

  final String join;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$join = join;
    _resultData['join'] = l$join;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$join = join;
    return Object.hashAll([l$join]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$JoinGame) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$join = join;
    final lOther$join = other.join;
    if (l$join != lOther$join) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$JoinGame on Mutation$JoinGame {
  CopyWith$Mutation$JoinGame<Mutation$JoinGame> get copyWith =>
      CopyWith$Mutation$JoinGame(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$JoinGame<TRes> {
  factory CopyWith$Mutation$JoinGame(
    Mutation$JoinGame instance,
    TRes Function(Mutation$JoinGame) then,
  ) = _CopyWithImpl$Mutation$JoinGame;

  factory CopyWith$Mutation$JoinGame.stub(TRes res) =
      _CopyWithStubImpl$Mutation$JoinGame;

  TRes call({String? join});
}

class _CopyWithImpl$Mutation$JoinGame<TRes>
    implements CopyWith$Mutation$JoinGame<TRes> {
  _CopyWithImpl$Mutation$JoinGame(
    this._instance,
    this._then,
  );

  final Mutation$JoinGame _instance;

  final TRes Function(Mutation$JoinGame) _then;

  static const _undefined = {};

  TRes call({Object? join = _undefined}) => _then(Mutation$JoinGame(
      join: join == _undefined || join == null
          ? _instance.join
          : (join as String)));
}

class _CopyWithStubImpl$Mutation$JoinGame<TRes>
    implements CopyWith$Mutation$JoinGame<TRes> {
  _CopyWithStubImpl$Mutation$JoinGame(this._res);

  TRes _res;

  call({String? join}) => _res;
}

const documentNodeMutationJoinGame = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'JoinGame'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roomID')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'join'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'roomID'),
            value: VariableNode(name: NameNode(value: 'roomID')),
          ),
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$JoinGame _parserFn$Mutation$JoinGame(Map<String, dynamic> data) =>
    Mutation$JoinGame.fromJson(data);
typedef OnMutationCompleted$Mutation$JoinGame = FutureOr<void> Function(
  dynamic,
  Mutation$JoinGame?,
);

class Options$Mutation$JoinGame
    extends graphql.MutationOptions<Mutation$JoinGame> {
  Options$Mutation$JoinGame({
    String? operationName,
    required Variables$Mutation$JoinGame variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$JoinGame? onCompleted,
    graphql.OnMutationUpdate<Mutation$JoinGame>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$JoinGame(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationJoinGame,
          parserFn: _parserFn$Mutation$JoinGame,
        );

  final OnMutationCompleted$Mutation$JoinGame? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$JoinGame
    extends graphql.WatchQueryOptions<Mutation$JoinGame> {
  WatchOptions$Mutation$JoinGame({
    String? operationName,
    required Variables$Mutation$JoinGame variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationJoinGame,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$JoinGame,
        );
}

extension ClientExtension$Mutation$JoinGame on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$JoinGame>> mutate$JoinGame(
          Options$Mutation$JoinGame options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$JoinGame> watchMutation$JoinGame(
          WatchOptions$Mutation$JoinGame options) =>
      this.watchMutation(options);
}

class Mutation$JoinGame$HookResult {
  Mutation$JoinGame$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$JoinGame runMutation;

  final graphql.QueryResult<Mutation$JoinGame> result;
}

Mutation$JoinGame$HookResult useMutation$JoinGame(
    [WidgetOptions$Mutation$JoinGame? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$JoinGame());
  return Mutation$JoinGame$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$JoinGame> useWatchMutation$JoinGame(
        WatchOptions$Mutation$JoinGame options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$JoinGame
    extends graphql.MutationOptions<Mutation$JoinGame> {
  WidgetOptions$Mutation$JoinGame({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$JoinGame? onCompleted,
    graphql.OnMutationUpdate<Mutation$JoinGame>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$JoinGame(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationJoinGame,
          parserFn: _parserFn$Mutation$JoinGame,
        );

  final OnMutationCompleted$Mutation$JoinGame? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$JoinGame
    = graphql.MultiSourceResult<Mutation$JoinGame> Function(
  Variables$Mutation$JoinGame, {
  Object? optimisticResult,
});
typedef Builder$Mutation$JoinGame = widgets.Widget Function(
  RunMutation$Mutation$JoinGame,
  graphql.QueryResult<Mutation$JoinGame>?,
);

class Mutation$JoinGame$Widget
    extends graphql_flutter.Mutation<Mutation$JoinGame> {
  Mutation$JoinGame$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$JoinGame? options,
    required Builder$Mutation$JoinGame builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$JoinGame(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$StartGame {
  Mutation$StartGame({required this.startGame});

  factory Mutation$StartGame.fromJson(Map<String, dynamic> json) {
    final l$startGame = json['startGame'];
    return Mutation$StartGame(startGame: (l$startGame as bool));
  }

  final bool startGame;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startGame = startGame;
    _resultData['startGame'] = l$startGame;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startGame = startGame;
    return Object.hashAll([l$startGame]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$StartGame) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$startGame = startGame;
    final lOther$startGame = other.startGame;
    if (l$startGame != lOther$startGame) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StartGame on Mutation$StartGame {
  CopyWith$Mutation$StartGame<Mutation$StartGame> get copyWith =>
      CopyWith$Mutation$StartGame(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StartGame<TRes> {
  factory CopyWith$Mutation$StartGame(
    Mutation$StartGame instance,
    TRes Function(Mutation$StartGame) then,
  ) = _CopyWithImpl$Mutation$StartGame;

  factory CopyWith$Mutation$StartGame.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StartGame;

  TRes call({bool? startGame});
}

class _CopyWithImpl$Mutation$StartGame<TRes>
    implements CopyWith$Mutation$StartGame<TRes> {
  _CopyWithImpl$Mutation$StartGame(
    this._instance,
    this._then,
  );

  final Mutation$StartGame _instance;

  final TRes Function(Mutation$StartGame) _then;

  static const _undefined = {};

  TRes call({Object? startGame = _undefined}) => _then(Mutation$StartGame(
      startGame: startGame == _undefined || startGame == null
          ? _instance.startGame
          : (startGame as bool)));
}

class _CopyWithStubImpl$Mutation$StartGame<TRes>
    implements CopyWith$Mutation$StartGame<TRes> {
  _CopyWithStubImpl$Mutation$StartGame(this._res);

  TRes _res;

  call({bool? startGame}) => _res;
}

const documentNodeMutationStartGame = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'StartGame'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'startGame'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$StartGame _parserFn$Mutation$StartGame(Map<String, dynamic> data) =>
    Mutation$StartGame.fromJson(data);
typedef OnMutationCompleted$Mutation$StartGame = FutureOr<void> Function(
  dynamic,
  Mutation$StartGame?,
);

class Options$Mutation$StartGame
    extends graphql.MutationOptions<Mutation$StartGame> {
  Options$Mutation$StartGame({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StartGame? onCompleted,
    graphql.OnMutationUpdate<Mutation$StartGame>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$StartGame(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationStartGame,
          parserFn: _parserFn$Mutation$StartGame,
        );

  final OnMutationCompleted$Mutation$StartGame? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$StartGame
    extends graphql.WatchQueryOptions<Mutation$StartGame> {
  WatchOptions$Mutation$StartGame({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationStartGame,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$StartGame,
        );
}

extension ClientExtension$Mutation$StartGame on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$StartGame>> mutate$StartGame(
          [Options$Mutation$StartGame? options]) async =>
      await this.mutate(options ?? Options$Mutation$StartGame());
  graphql.ObservableQuery<Mutation$StartGame> watchMutation$StartGame(
          [WatchOptions$Mutation$StartGame? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$StartGame());
}

class Mutation$StartGame$HookResult {
  Mutation$StartGame$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$StartGame runMutation;

  final graphql.QueryResult<Mutation$StartGame> result;
}

Mutation$StartGame$HookResult useMutation$StartGame(
    [WidgetOptions$Mutation$StartGame? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$StartGame());
  return Mutation$StartGame$HookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$StartGame> useWatchMutation$StartGame(
        [WatchOptions$Mutation$StartGame? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$StartGame());

class WidgetOptions$Mutation$StartGame
    extends graphql.MutationOptions<Mutation$StartGame> {
  WidgetOptions$Mutation$StartGame({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StartGame? onCompleted,
    graphql.OnMutationUpdate<Mutation$StartGame>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$StartGame(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationStartGame,
          parserFn: _parserFn$Mutation$StartGame,
        );

  final OnMutationCompleted$Mutation$StartGame? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$StartGame
    = graphql.MultiSourceResult<Mutation$StartGame> Function(
        {Object? optimisticResult});
typedef Builder$Mutation$StartGame = widgets.Widget Function(
  RunMutation$Mutation$StartGame,
  graphql.QueryResult<Mutation$StartGame>?,
);

class Mutation$StartGame$Widget
    extends graphql_flutter.Mutation<Mutation$StartGame> {
  Mutation$StartGame$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$StartGame? options,
    required Builder$Mutation$StartGame builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$StartGame(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({optimisticResult}) => run(
              const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Variables$Mutation$Move {
  factory Variables$Mutation$Move({
    required String cardId,
    required Enum$Color cardColor,
  }) =>
      Variables$Mutation$Move._({
        r'cardId': cardId,
        r'cardColor': cardColor,
      });

  Variables$Mutation$Move._(this._$data);

  factory Variables$Mutation$Move.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cardId = data['cardId'];
    result$data['cardId'] = (l$cardId as String);
    final l$cardColor = data['cardColor'];
    result$data['cardColor'] = fromJson$Enum$Color((l$cardColor as String));
    return Variables$Mutation$Move._(result$data);
  }

  Map<String, dynamic> _$data;

  String get cardId => (_$data['cardId'] as String);
  Enum$Color get cardColor => (_$data['cardColor'] as Enum$Color);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cardId = cardId;
    result$data['cardId'] = l$cardId;
    final l$cardColor = cardColor;
    result$data['cardColor'] = toJson$Enum$Color(l$cardColor);
    return result$data;
  }

  CopyWith$Variables$Mutation$Move<Variables$Mutation$Move> get copyWith =>
      CopyWith$Variables$Mutation$Move(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Move) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cardId = cardId;
    final lOther$cardId = other.cardId;
    if (l$cardId != lOther$cardId) {
      return false;
    }
    final l$cardColor = cardColor;
    final lOther$cardColor = other.cardColor;
    if (l$cardColor != lOther$cardColor) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cardId = cardId;
    final l$cardColor = cardColor;
    return Object.hashAll([
      l$cardId,
      l$cardColor,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Move<TRes> {
  factory CopyWith$Variables$Mutation$Move(
    Variables$Mutation$Move instance,
    TRes Function(Variables$Mutation$Move) then,
  ) = _CopyWithImpl$Variables$Mutation$Move;

  factory CopyWith$Variables$Mutation$Move.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Move;

  TRes call({
    String? cardId,
    Enum$Color? cardColor,
  });
}

class _CopyWithImpl$Variables$Mutation$Move<TRes>
    implements CopyWith$Variables$Mutation$Move<TRes> {
  _CopyWithImpl$Variables$Mutation$Move(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Move _instance;

  final TRes Function(Variables$Mutation$Move) _then;

  static const _undefined = {};

  TRes call({
    Object? cardId = _undefined,
    Object? cardColor = _undefined,
  }) =>
      _then(Variables$Mutation$Move._({
        ..._instance._$data,
        if (cardId != _undefined && cardId != null)
          'cardId': (cardId as String),
        if (cardColor != _undefined && cardColor != null)
          'cardColor': (cardColor as Enum$Color),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Move<TRes>
    implements CopyWith$Variables$Mutation$Move<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Move(this._res);

  TRes _res;

  call({
    String? cardId,
    Enum$Color? cardColor,
  }) =>
      _res;
}

class Mutation$Move {
  Mutation$Move({required this.move});

  factory Mutation$Move.fromJson(Map<String, dynamic> json) {
    final l$move = json['move'];
    return Mutation$Move(move: (l$move as bool));
  }

  final bool move;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$move = move;
    _resultData['move'] = l$move;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$move = move;
    return Object.hashAll([l$move]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Move) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$move = move;
    final lOther$move = other.move;
    if (l$move != lOther$move) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Move on Mutation$Move {
  CopyWith$Mutation$Move<Mutation$Move> get copyWith => CopyWith$Mutation$Move(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Move<TRes> {
  factory CopyWith$Mutation$Move(
    Mutation$Move instance,
    TRes Function(Mutation$Move) then,
  ) = _CopyWithImpl$Mutation$Move;

  factory CopyWith$Mutation$Move.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Move;

  TRes call({bool? move});
}

class _CopyWithImpl$Mutation$Move<TRes>
    implements CopyWith$Mutation$Move<TRes> {
  _CopyWithImpl$Mutation$Move(
    this._instance,
    this._then,
  );

  final Mutation$Move _instance;

  final TRes Function(Mutation$Move) _then;

  static const _undefined = {};

  TRes call({Object? move = _undefined}) => _then(Mutation$Move(
      move: move == _undefined || move == null
          ? _instance.move
          : (move as bool)));
}

class _CopyWithStubImpl$Mutation$Move<TRes>
    implements CopyWith$Mutation$Move<TRes> {
  _CopyWithStubImpl$Mutation$Move(this._res);

  TRes _res;

  call({bool? move}) => _res;
}

const documentNodeMutationMove = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Move'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cardId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cardColor')),
        type: NamedTypeNode(
          name: NameNode(value: 'Color'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'move'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'cardId'),
            value: VariableNode(name: NameNode(value: 'cardId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'cardColor'),
            value: VariableNode(name: NameNode(value: 'cardColor')),
          ),
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$Move _parserFn$Mutation$Move(Map<String, dynamic> data) =>
    Mutation$Move.fromJson(data);
typedef OnMutationCompleted$Mutation$Move = FutureOr<void> Function(
  dynamic,
  Mutation$Move?,
);

class Options$Mutation$Move extends graphql.MutationOptions<Mutation$Move> {
  Options$Mutation$Move({
    String? operationName,
    required Variables$Mutation$Move variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Move? onCompleted,
    graphql.OnMutationUpdate<Mutation$Move>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Move(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationMove,
          parserFn: _parserFn$Mutation$Move,
        );

  final OnMutationCompleted$Mutation$Move? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Move
    extends graphql.WatchQueryOptions<Mutation$Move> {
  WatchOptions$Mutation$Move({
    String? operationName,
    required Variables$Mutation$Move variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationMove,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Move,
        );
}

extension ClientExtension$Mutation$Move on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Move>> mutate$Move(
          Options$Mutation$Move options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Move> watchMutation$Move(
          WatchOptions$Mutation$Move options) =>
      this.watchMutation(options);
}

class Mutation$Move$HookResult {
  Mutation$Move$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Move runMutation;

  final graphql.QueryResult<Mutation$Move> result;
}

Mutation$Move$HookResult useMutation$Move(
    [WidgetOptions$Mutation$Move? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Move());
  return Mutation$Move$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Move> useWatchMutation$Move(
        WatchOptions$Mutation$Move options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Move
    extends graphql.MutationOptions<Mutation$Move> {
  WidgetOptions$Mutation$Move({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Move? onCompleted,
    graphql.OnMutationUpdate<Mutation$Move>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Move(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationMove,
          parserFn: _parserFn$Mutation$Move,
        );

  final OnMutationCompleted$Mutation$Move? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Move = graphql.MultiSourceResult<Mutation$Move>
    Function(
  Variables$Mutation$Move, {
  Object? optimisticResult,
});
typedef Builder$Mutation$Move = widgets.Widget Function(
  RunMutation$Mutation$Move,
  graphql.QueryResult<Mutation$Move>?,
);

class Mutation$Move$Widget extends graphql_flutter.Mutation<Mutation$Move> {
  Mutation$Move$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Move? options,
    required Builder$Mutation$Move builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Move(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$PickCard {
  Mutation$PickCard({required this.pickCard});

  factory Mutation$PickCard.fromJson(Map<String, dynamic> json) {
    final l$pickCard = json['pickCard'];
    return Mutation$PickCard(pickCard: (l$pickCard as bool));
  }

  final bool pickCard;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pickCard = pickCard;
    _resultData['pickCard'] = l$pickCard;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pickCard = pickCard;
    return Object.hashAll([l$pickCard]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$PickCard) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pickCard = pickCard;
    final lOther$pickCard = other.pickCard;
    if (l$pickCard != lOther$pickCard) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$PickCard on Mutation$PickCard {
  CopyWith$Mutation$PickCard<Mutation$PickCard> get copyWith =>
      CopyWith$Mutation$PickCard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PickCard<TRes> {
  factory CopyWith$Mutation$PickCard(
    Mutation$PickCard instance,
    TRes Function(Mutation$PickCard) then,
  ) = _CopyWithImpl$Mutation$PickCard;

  factory CopyWith$Mutation$PickCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PickCard;

  TRes call({bool? pickCard});
}

class _CopyWithImpl$Mutation$PickCard<TRes>
    implements CopyWith$Mutation$PickCard<TRes> {
  _CopyWithImpl$Mutation$PickCard(
    this._instance,
    this._then,
  );

  final Mutation$PickCard _instance;

  final TRes Function(Mutation$PickCard) _then;

  static const _undefined = {};

  TRes call({Object? pickCard = _undefined}) => _then(Mutation$PickCard(
      pickCard: pickCard == _undefined || pickCard == null
          ? _instance.pickCard
          : (pickCard as bool)));
}

class _CopyWithStubImpl$Mutation$PickCard<TRes>
    implements CopyWith$Mutation$PickCard<TRes> {
  _CopyWithStubImpl$Mutation$PickCard(this._res);

  TRes _res;

  call({bool? pickCard}) => _res;
}

const documentNodeMutationPickCard = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'PickCard'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pickCard'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$PickCard _parserFn$Mutation$PickCard(Map<String, dynamic> data) =>
    Mutation$PickCard.fromJson(data);
typedef OnMutationCompleted$Mutation$PickCard = FutureOr<void> Function(
  dynamic,
  Mutation$PickCard?,
);

class Options$Mutation$PickCard
    extends graphql.MutationOptions<Mutation$PickCard> {
  Options$Mutation$PickCard({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PickCard? onCompleted,
    graphql.OnMutationUpdate<Mutation$PickCard>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$PickCard(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationPickCard,
          parserFn: _parserFn$Mutation$PickCard,
        );

  final OnMutationCompleted$Mutation$PickCard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$PickCard
    extends graphql.WatchQueryOptions<Mutation$PickCard> {
  WatchOptions$Mutation$PickCard({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationPickCard,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$PickCard,
        );
}

extension ClientExtension$Mutation$PickCard on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$PickCard>> mutate$PickCard(
          [Options$Mutation$PickCard? options]) async =>
      await this.mutate(options ?? Options$Mutation$PickCard());
  graphql.ObservableQuery<Mutation$PickCard> watchMutation$PickCard(
          [WatchOptions$Mutation$PickCard? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$PickCard());
}

class Mutation$PickCard$HookResult {
  Mutation$PickCard$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$PickCard runMutation;

  final graphql.QueryResult<Mutation$PickCard> result;
}

Mutation$PickCard$HookResult useMutation$PickCard(
    [WidgetOptions$Mutation$PickCard? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$PickCard());
  return Mutation$PickCard$HookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$PickCard> useWatchMutation$PickCard(
        [WatchOptions$Mutation$PickCard? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$PickCard());

class WidgetOptions$Mutation$PickCard
    extends graphql.MutationOptions<Mutation$PickCard> {
  WidgetOptions$Mutation$PickCard({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PickCard? onCompleted,
    graphql.OnMutationUpdate<Mutation$PickCard>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$PickCard(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationPickCard,
          parserFn: _parserFn$Mutation$PickCard,
        );

  final OnMutationCompleted$Mutation$PickCard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$PickCard
    = graphql.MultiSourceResult<Mutation$PickCard> Function(
        {Object? optimisticResult});
typedef Builder$Mutation$PickCard = widgets.Widget Function(
  RunMutation$Mutation$PickCard,
  graphql.QueryResult<Mutation$PickCard>?,
);

class Mutation$PickCard$Widget
    extends graphql_flutter.Mutation<Mutation$PickCard> {
  Mutation$PickCard$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$PickCard? options,
    required Builder$Mutation$PickCard builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$PickCard(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({optimisticResult}) => run(
              const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$KeepCard {
  Mutation$KeepCard({required this.keepCard});

  factory Mutation$KeepCard.fromJson(Map<String, dynamic> json) {
    final l$keepCard = json['keepCard'];
    return Mutation$KeepCard(keepCard: (l$keepCard as bool));
  }

  final bool keepCard;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$keepCard = keepCard;
    _resultData['keepCard'] = l$keepCard;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$keepCard = keepCard;
    return Object.hashAll([l$keepCard]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$KeepCard) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$keepCard = keepCard;
    final lOther$keepCard = other.keepCard;
    if (l$keepCard != lOther$keepCard) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$KeepCard on Mutation$KeepCard {
  CopyWith$Mutation$KeepCard<Mutation$KeepCard> get copyWith =>
      CopyWith$Mutation$KeepCard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$KeepCard<TRes> {
  factory CopyWith$Mutation$KeepCard(
    Mutation$KeepCard instance,
    TRes Function(Mutation$KeepCard) then,
  ) = _CopyWithImpl$Mutation$KeepCard;

  factory CopyWith$Mutation$KeepCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$KeepCard;

  TRes call({bool? keepCard});
}

class _CopyWithImpl$Mutation$KeepCard<TRes>
    implements CopyWith$Mutation$KeepCard<TRes> {
  _CopyWithImpl$Mutation$KeepCard(
    this._instance,
    this._then,
  );

  final Mutation$KeepCard _instance;

  final TRes Function(Mutation$KeepCard) _then;

  static const _undefined = {};

  TRes call({Object? keepCard = _undefined}) => _then(Mutation$KeepCard(
      keepCard: keepCard == _undefined || keepCard == null
          ? _instance.keepCard
          : (keepCard as bool)));
}

class _CopyWithStubImpl$Mutation$KeepCard<TRes>
    implements CopyWith$Mutation$KeepCard<TRes> {
  _CopyWithStubImpl$Mutation$KeepCard(this._res);

  TRes _res;

  call({bool? keepCard}) => _res;
}

const documentNodeMutationKeepCard = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'KeepCard'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'keepCard'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$KeepCard _parserFn$Mutation$KeepCard(Map<String, dynamic> data) =>
    Mutation$KeepCard.fromJson(data);
typedef OnMutationCompleted$Mutation$KeepCard = FutureOr<void> Function(
  dynamic,
  Mutation$KeepCard?,
);

class Options$Mutation$KeepCard
    extends graphql.MutationOptions<Mutation$KeepCard> {
  Options$Mutation$KeepCard({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$KeepCard? onCompleted,
    graphql.OnMutationUpdate<Mutation$KeepCard>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$KeepCard(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationKeepCard,
          parserFn: _parserFn$Mutation$KeepCard,
        );

  final OnMutationCompleted$Mutation$KeepCard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$KeepCard
    extends graphql.WatchQueryOptions<Mutation$KeepCard> {
  WatchOptions$Mutation$KeepCard({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationKeepCard,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$KeepCard,
        );
}

extension ClientExtension$Mutation$KeepCard on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$KeepCard>> mutate$KeepCard(
          [Options$Mutation$KeepCard? options]) async =>
      await this.mutate(options ?? Options$Mutation$KeepCard());
  graphql.ObservableQuery<Mutation$KeepCard> watchMutation$KeepCard(
          [WatchOptions$Mutation$KeepCard? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$KeepCard());
}

class Mutation$KeepCard$HookResult {
  Mutation$KeepCard$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$KeepCard runMutation;

  final graphql.QueryResult<Mutation$KeepCard> result;
}

Mutation$KeepCard$HookResult useMutation$KeepCard(
    [WidgetOptions$Mutation$KeepCard? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$KeepCard());
  return Mutation$KeepCard$HookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$KeepCard> useWatchMutation$KeepCard(
        [WatchOptions$Mutation$KeepCard? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$KeepCard());

class WidgetOptions$Mutation$KeepCard
    extends graphql.MutationOptions<Mutation$KeepCard> {
  WidgetOptions$Mutation$KeepCard({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$KeepCard? onCompleted,
    graphql.OnMutationUpdate<Mutation$KeepCard>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$KeepCard(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationKeepCard,
          parserFn: _parserFn$Mutation$KeepCard,
        );

  final OnMutationCompleted$Mutation$KeepCard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$KeepCard
    = graphql.MultiSourceResult<Mutation$KeepCard> Function(
        {Object? optimisticResult});
typedef Builder$Mutation$KeepCard = widgets.Widget Function(
  RunMutation$Mutation$KeepCard,
  graphql.QueryResult<Mutation$KeepCard>?,
);

class Mutation$KeepCard$Widget
    extends graphql_flutter.Mutation<Mutation$KeepCard> {
  Mutation$KeepCard$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$KeepCard? options,
    required Builder$Mutation$KeepCard builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$KeepCard(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({optimisticResult}) => run(
              const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$RestartGame {
  Mutation$RestartGame({required this.restart});

  factory Mutation$RestartGame.fromJson(Map<String, dynamic> json) {
    final l$restart = json['restart'];
    return Mutation$RestartGame(restart: (l$restart as bool));
  }

  final bool restart;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$restart = restart;
    _resultData['restart'] = l$restart;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$restart = restart;
    return Object.hashAll([l$restart]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RestartGame) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$restart = restart;
    final lOther$restart = other.restart;
    if (l$restart != lOther$restart) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RestartGame on Mutation$RestartGame {
  CopyWith$Mutation$RestartGame<Mutation$RestartGame> get copyWith =>
      CopyWith$Mutation$RestartGame(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RestartGame<TRes> {
  factory CopyWith$Mutation$RestartGame(
    Mutation$RestartGame instance,
    TRes Function(Mutation$RestartGame) then,
  ) = _CopyWithImpl$Mutation$RestartGame;

  factory CopyWith$Mutation$RestartGame.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RestartGame;

  TRes call({bool? restart});
}

class _CopyWithImpl$Mutation$RestartGame<TRes>
    implements CopyWith$Mutation$RestartGame<TRes> {
  _CopyWithImpl$Mutation$RestartGame(
    this._instance,
    this._then,
  );

  final Mutation$RestartGame _instance;

  final TRes Function(Mutation$RestartGame) _then;

  static const _undefined = {};

  TRes call({Object? restart = _undefined}) => _then(Mutation$RestartGame(
      restart: restart == _undefined || restart == null
          ? _instance.restart
          : (restart as bool)));
}

class _CopyWithStubImpl$Mutation$RestartGame<TRes>
    implements CopyWith$Mutation$RestartGame<TRes> {
  _CopyWithStubImpl$Mutation$RestartGame(this._res);

  TRes _res;

  call({bool? restart}) => _res;
}

const documentNodeMutationRestartGame = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RestartGame'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'restart'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Mutation$RestartGame _parserFn$Mutation$RestartGame(
        Map<String, dynamic> data) =>
    Mutation$RestartGame.fromJson(data);
typedef OnMutationCompleted$Mutation$RestartGame = FutureOr<void> Function(
  dynamic,
  Mutation$RestartGame?,
);

class Options$Mutation$RestartGame
    extends graphql.MutationOptions<Mutation$RestartGame> {
  Options$Mutation$RestartGame({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RestartGame? onCompleted,
    graphql.OnMutationUpdate<Mutation$RestartGame>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$RestartGame(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRestartGame,
          parserFn: _parserFn$Mutation$RestartGame,
        );

  final OnMutationCompleted$Mutation$RestartGame? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RestartGame
    extends graphql.WatchQueryOptions<Mutation$RestartGame> {
  WatchOptions$Mutation$RestartGame({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationRestartGame,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RestartGame,
        );
}

extension ClientExtension$Mutation$RestartGame on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RestartGame>> mutate$RestartGame(
          [Options$Mutation$RestartGame? options]) async =>
      await this.mutate(options ?? Options$Mutation$RestartGame());
  graphql.ObservableQuery<Mutation$RestartGame> watchMutation$RestartGame(
          [WatchOptions$Mutation$RestartGame? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$RestartGame());
}

class Mutation$RestartGame$HookResult {
  Mutation$RestartGame$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$RestartGame runMutation;

  final graphql.QueryResult<Mutation$RestartGame> result;
}

Mutation$RestartGame$HookResult useMutation$RestartGame(
    [WidgetOptions$Mutation$RestartGame? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RestartGame());
  return Mutation$RestartGame$HookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RestartGame> useWatchMutation$RestartGame(
        [WatchOptions$Mutation$RestartGame? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$RestartGame());

class WidgetOptions$Mutation$RestartGame
    extends graphql.MutationOptions<Mutation$RestartGame> {
  WidgetOptions$Mutation$RestartGame({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RestartGame? onCompleted,
    graphql.OnMutationUpdate<Mutation$RestartGame>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$RestartGame(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRestartGame,
          parserFn: _parserFn$Mutation$RestartGame,
        );

  final OnMutationCompleted$Mutation$RestartGame? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$RestartGame
    = graphql.MultiSourceResult<Mutation$RestartGame> Function(
        {Object? optimisticResult});
typedef Builder$Mutation$RestartGame = widgets.Widget Function(
  RunMutation$Mutation$RestartGame,
  graphql.QueryResult<Mutation$RestartGame>?,
);

class Mutation$RestartGame$Widget
    extends graphql_flutter.Mutation<Mutation$RestartGame> {
  Mutation$RestartGame$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$RestartGame? options,
    required Builder$Mutation$RestartGame builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$RestartGame(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({optimisticResult}) => run(
              const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$CreateRoom {
  Mutation$CreateRoom({required this.createRoom});

  factory Mutation$CreateRoom.fromJson(Map<String, dynamic> json) {
    final l$createRoom = json['createRoom'];
    return Mutation$CreateRoom(
        createRoom: Mutation$CreateRoom$createRoom.fromJson(
            (l$createRoom as Map<String, dynamic>)));
  }

  final Mutation$CreateRoom$createRoom createRoom;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createRoom = createRoom;
    _resultData['createRoom'] = l$createRoom.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createRoom = createRoom;
    return Object.hashAll([l$createRoom]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRoom) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createRoom = createRoom;
    final lOther$createRoom = other.createRoom;
    if (l$createRoom != lOther$createRoom) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateRoom on Mutation$CreateRoom {
  CopyWith$Mutation$CreateRoom<Mutation$CreateRoom> get copyWith =>
      CopyWith$Mutation$CreateRoom(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateRoom<TRes> {
  factory CopyWith$Mutation$CreateRoom(
    Mutation$CreateRoom instance,
    TRes Function(Mutation$CreateRoom) then,
  ) = _CopyWithImpl$Mutation$CreateRoom;

  factory CopyWith$Mutation$CreateRoom.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateRoom;

  TRes call({Mutation$CreateRoom$createRoom? createRoom});
  CopyWith$Mutation$CreateRoom$createRoom<TRes> get createRoom;
}

class _CopyWithImpl$Mutation$CreateRoom<TRes>
    implements CopyWith$Mutation$CreateRoom<TRes> {
  _CopyWithImpl$Mutation$CreateRoom(
    this._instance,
    this._then,
  );

  final Mutation$CreateRoom _instance;

  final TRes Function(Mutation$CreateRoom) _then;

  static const _undefined = {};

  TRes call({Object? createRoom = _undefined}) => _then(Mutation$CreateRoom(
      createRoom: createRoom == _undefined || createRoom == null
          ? _instance.createRoom
          : (createRoom as Mutation$CreateRoom$createRoom)));
  CopyWith$Mutation$CreateRoom$createRoom<TRes> get createRoom {
    final local$createRoom = _instance.createRoom;
    return CopyWith$Mutation$CreateRoom$createRoom(
        local$createRoom, (e) => call(createRoom: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateRoom<TRes>
    implements CopyWith$Mutation$CreateRoom<TRes> {
  _CopyWithStubImpl$Mutation$CreateRoom(this._res);

  TRes _res;

  call({Mutation$CreateRoom$createRoom? createRoom}) => _res;
  CopyWith$Mutation$CreateRoom$createRoom<TRes> get createRoom =>
      CopyWith$Mutation$CreateRoom$createRoom.stub(_res);
}

const documentNodeMutationCreateRoom = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateRoom'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createRoom'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Mutation$CreateRoom _parserFn$Mutation$CreateRoom(Map<String, dynamic> data) =>
    Mutation$CreateRoom.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateRoom = FutureOr<void> Function(
  dynamic,
  Mutation$CreateRoom?,
);

class Options$Mutation$CreateRoom
    extends graphql.MutationOptions<Mutation$CreateRoom> {
  Options$Mutation$CreateRoom({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateRoom? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateRoom>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateRoom(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateRoom,
          parserFn: _parserFn$Mutation$CreateRoom,
        );

  final OnMutationCompleted$Mutation$CreateRoom? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateRoom
    extends graphql.WatchQueryOptions<Mutation$CreateRoom> {
  WatchOptions$Mutation$CreateRoom({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationCreateRoom,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateRoom,
        );
}

extension ClientExtension$Mutation$CreateRoom on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateRoom>> mutate$CreateRoom(
          [Options$Mutation$CreateRoom? options]) async =>
      await this.mutate(options ?? Options$Mutation$CreateRoom());
  graphql.ObservableQuery<Mutation$CreateRoom> watchMutation$CreateRoom(
          [WatchOptions$Mutation$CreateRoom? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$CreateRoom());
}

class Mutation$CreateRoom$HookResult {
  Mutation$CreateRoom$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateRoom runMutation;

  final graphql.QueryResult<Mutation$CreateRoom> result;
}

Mutation$CreateRoom$HookResult useMutation$CreateRoom(
    [WidgetOptions$Mutation$CreateRoom? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateRoom());
  return Mutation$CreateRoom$HookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateRoom> useWatchMutation$CreateRoom(
        [WatchOptions$Mutation$CreateRoom? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$CreateRoom());

class WidgetOptions$Mutation$CreateRoom
    extends graphql.MutationOptions<Mutation$CreateRoom> {
  WidgetOptions$Mutation$CreateRoom({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateRoom? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateRoom>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateRoom(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateRoom,
          parserFn: _parserFn$Mutation$CreateRoom,
        );

  final OnMutationCompleted$Mutation$CreateRoom? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateRoom
    = graphql.MultiSourceResult<Mutation$CreateRoom> Function(
        {Object? optimisticResult});
typedef Builder$Mutation$CreateRoom = widgets.Widget Function(
  RunMutation$Mutation$CreateRoom,
  graphql.QueryResult<Mutation$CreateRoom>?,
);

class Mutation$CreateRoom$Widget
    extends graphql_flutter.Mutation<Mutation$CreateRoom> {
  Mutation$CreateRoom$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateRoom? options,
    required Builder$Mutation$CreateRoom builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateRoom(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({optimisticResult}) => run(
              const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$CreateRoom$createRoom {
  Mutation$CreateRoom$createRoom({required this.id});

  factory Mutation$CreateRoom$createRoom.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$CreateRoom$createRoom(id: (l$id as String));
  }

  final String id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateRoom$createRoom) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateRoom$createRoom
    on Mutation$CreateRoom$createRoom {
  CopyWith$Mutation$CreateRoom$createRoom<Mutation$CreateRoom$createRoom>
      get copyWith => CopyWith$Mutation$CreateRoom$createRoom(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateRoom$createRoom<TRes> {
  factory CopyWith$Mutation$CreateRoom$createRoom(
    Mutation$CreateRoom$createRoom instance,
    TRes Function(Mutation$CreateRoom$createRoom) then,
  ) = _CopyWithImpl$Mutation$CreateRoom$createRoom;

  factory CopyWith$Mutation$CreateRoom$createRoom.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateRoom$createRoom;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$CreateRoom$createRoom<TRes>
    implements CopyWith$Mutation$CreateRoom$createRoom<TRes> {
  _CopyWithImpl$Mutation$CreateRoom$createRoom(
    this._instance,
    this._then,
  );

  final Mutation$CreateRoom$createRoom _instance;

  final TRes Function(Mutation$CreateRoom$createRoom) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Mutation$CreateRoom$createRoom(
      id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$CreateRoom$createRoom<TRes>
    implements CopyWith$Mutation$CreateRoom$createRoom<TRes> {
  _CopyWithStubImpl$Mutation$CreateRoom$createRoom(this._res);

  TRes _res;

  call({String? id}) => _res;
}
