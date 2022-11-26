import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$CardFragmnet {
  Fragment$CardFragmnet({
    required this.id,
    required this.number,
    required this.color,
    required this.cardType,
  });

  factory Fragment$CardFragmnet.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$color = json['color'];
    final l$cardType = json['cardType'];
    return Fragment$CardFragmnet(
      id: (l$id as String),
      number: (l$number as String),
      color: fromJson$Enum$Color((l$color as String)),
      cardType: fromJson$Enum$CardType((l$cardType as String)),
    );
  }

  final String id;

  final String number;

  final Enum$Color color;

  final Enum$CardType cardType;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$color = color;
    _resultData['color'] = toJson$Enum$Color(l$color);
    final l$cardType = cardType;
    _resultData['cardType'] = toJson$Enum$CardType(l$cardType);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$number = number;
    final l$color = color;
    final l$cardType = cardType;
    return Object.hashAll([
      l$id,
      l$number,
      l$color,
      l$cardType,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CardFragmnet) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$cardType = cardType;
    final lOther$cardType = other.cardType;
    if (l$cardType != lOther$cardType) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CardFragmnet on Fragment$CardFragmnet {
  CopyWith$Fragment$CardFragmnet<Fragment$CardFragmnet> get copyWith =>
      CopyWith$Fragment$CardFragmnet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CardFragmnet<TRes> {
  factory CopyWith$Fragment$CardFragmnet(
    Fragment$CardFragmnet instance,
    TRes Function(Fragment$CardFragmnet) then,
  ) = _CopyWithImpl$Fragment$CardFragmnet;

  factory CopyWith$Fragment$CardFragmnet.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CardFragmnet;

  TRes call({
    String? id,
    String? number,
    Enum$Color? color,
    Enum$CardType? cardType,
  });
}

class _CopyWithImpl$Fragment$CardFragmnet<TRes>
    implements CopyWith$Fragment$CardFragmnet<TRes> {
  _CopyWithImpl$Fragment$CardFragmnet(
    this._instance,
    this._then,
  );

  final Fragment$CardFragmnet _instance;

  final TRes Function(Fragment$CardFragmnet) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? number = _undefined,
    Object? color = _undefined,
    Object? cardType = _undefined,
  }) =>
      _then(Fragment$CardFragmnet(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined || number == null
            ? _instance.number
            : (number as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as Enum$Color),
        cardType: cardType == _undefined || cardType == null
            ? _instance.cardType
            : (cardType as Enum$CardType),
      ));
}

class _CopyWithStubImpl$Fragment$CardFragmnet<TRes>
    implements CopyWith$Fragment$CardFragmnet<TRes> {
  _CopyWithStubImpl$Fragment$CardFragmnet(this._res);

  TRes _res;

  call({
    String? id,
    String? number,
    Enum$Color? color,
    Enum$CardType? cardType,
  }) =>
      _res;
}

const fragmentDefinitionCardFragmnet = FragmentDefinitionNode(
  name: NameNode(value: 'CardFragmnet'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Card'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'number'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'color'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'cardType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCardFragmnet = DocumentNode(definitions: [
  fragmentDefinitionCardFragmnet,
]);

extension ClientExtension$Fragment$CardFragmnet on graphql.GraphQLClient {
  void writeFragment$CardFragmnet({
    required Fragment$CardFragmnet data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CardFragmnet',
            document: documentNodeFragmentCardFragmnet,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CardFragmnet? readFragment$CardFragmnet({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CardFragmnet',
          document: documentNodeFragmentCardFragmnet,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CardFragmnet.fromJson(result);
  }
}

class Fragment$PlayerFragment {
  Fragment$PlayerFragment({
    required this.name,
    required this.cardCount,
  });

  factory Fragment$PlayerFragment.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$cardCount = json['cardCount'];
    return Fragment$PlayerFragment(
      name: (l$name as String),
      cardCount: (l$cardCount as int),
    );
  }

  final String name;

  final int cardCount;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$cardCount = cardCount;
    _resultData['cardCount'] = l$cardCount;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$cardCount = cardCount;
    return Object.hashAll([
      l$name,
      l$cardCount,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PlayerFragment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$cardCount = cardCount;
    final lOther$cardCount = other.cardCount;
    if (l$cardCount != lOther$cardCount) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PlayerFragment on Fragment$PlayerFragment {
  CopyWith$Fragment$PlayerFragment<Fragment$PlayerFragment> get copyWith =>
      CopyWith$Fragment$PlayerFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PlayerFragment<TRes> {
  factory CopyWith$Fragment$PlayerFragment(
    Fragment$PlayerFragment instance,
    TRes Function(Fragment$PlayerFragment) then,
  ) = _CopyWithImpl$Fragment$PlayerFragment;

  factory CopyWith$Fragment$PlayerFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PlayerFragment;

  TRes call({
    String? name,
    int? cardCount,
  });
}

class _CopyWithImpl$Fragment$PlayerFragment<TRes>
    implements CopyWith$Fragment$PlayerFragment<TRes> {
  _CopyWithImpl$Fragment$PlayerFragment(
    this._instance,
    this._then,
  );

  final Fragment$PlayerFragment _instance;

  final TRes Function(Fragment$PlayerFragment) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? cardCount = _undefined,
  }) =>
      _then(Fragment$PlayerFragment(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        cardCount: cardCount == _undefined || cardCount == null
            ? _instance.cardCount
            : (cardCount as int),
      ));
}

class _CopyWithStubImpl$Fragment$PlayerFragment<TRes>
    implements CopyWith$Fragment$PlayerFragment<TRes> {
  _CopyWithStubImpl$Fragment$PlayerFragment(this._res);

  TRes _res;

  call({
    String? name,
    int? cardCount,
  }) =>
      _res;
}

const fragmentDefinitionPlayerFragment = FragmentDefinitionNode(
  name: NameNode(value: 'PlayerFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Player'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'cardCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPlayerFragment = DocumentNode(definitions: [
  fragmentDefinitionPlayerFragment,
]);

extension ClientExtension$Fragment$PlayerFragment on graphql.GraphQLClient {
  void writeFragment$PlayerFragment({
    required Fragment$PlayerFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PlayerFragment',
            document: documentNodeFragmentPlayerFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PlayerFragment? readFragment$PlayerFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PlayerFragment',
          document: documentNodeFragmentPlayerFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PlayerFragment.fromJson(result);
  }
}

class Subscription$ListenState {
  Subscription$ListenState({required this.roomState});

  factory Subscription$ListenState.fromJson(Map<String, dynamic> json) {
    final l$roomState = json['roomState'];
    return Subscription$ListenState(
        roomState: Subscription$ListenState$roomState.fromJson(
            (l$roomState as Map<String, dynamic>)));
  }

  final Subscription$ListenState$roomState roomState;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roomState = roomState;
    _resultData['roomState'] = l$roomState.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roomState = roomState;
    return Object.hashAll([l$roomState]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ListenState) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roomState = roomState;
    final lOther$roomState = other.roomState;
    if (l$roomState != lOther$roomState) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$ListenState
    on Subscription$ListenState {
  CopyWith$Subscription$ListenState<Subscription$ListenState> get copyWith =>
      CopyWith$Subscription$ListenState(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$ListenState<TRes> {
  factory CopyWith$Subscription$ListenState(
    Subscription$ListenState instance,
    TRes Function(Subscription$ListenState) then,
  ) = _CopyWithImpl$Subscription$ListenState;

  factory CopyWith$Subscription$ListenState.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ListenState;

  TRes call({Subscription$ListenState$roomState? roomState});
  CopyWith$Subscription$ListenState$roomState<TRes> get roomState;
}

class _CopyWithImpl$Subscription$ListenState<TRes>
    implements CopyWith$Subscription$ListenState<TRes> {
  _CopyWithImpl$Subscription$ListenState(
    this._instance,
    this._then,
  );

  final Subscription$ListenState _instance;

  final TRes Function(Subscription$ListenState) _then;

  static const _undefined = {};

  TRes call({Object? roomState = _undefined}) => _then(Subscription$ListenState(
      roomState: roomState == _undefined || roomState == null
          ? _instance.roomState
          : (roomState as Subscription$ListenState$roomState)));
  CopyWith$Subscription$ListenState$roomState<TRes> get roomState {
    final local$roomState = _instance.roomState;
    return CopyWith$Subscription$ListenState$roomState(
        local$roomState, (e) => call(roomState: e));
  }
}

class _CopyWithStubImpl$Subscription$ListenState<TRes>
    implements CopyWith$Subscription$ListenState<TRes> {
  _CopyWithStubImpl$Subscription$ListenState(this._res);

  TRes _res;

  call({Subscription$ListenState$roomState? roomState}) => _res;
  CopyWith$Subscription$ListenState$roomState<TRes> get roomState =>
      CopyWith$Subscription$ListenState$roomState.stub(_res);
}

const documentNodeSubscriptionListenState = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'ListenState'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'roomState'),
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
          ),
          FieldNode(
            name: NameNode(value: 'players'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PlayerFragment'),
                directives: [],
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'winner'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'topcard'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'CardFragmnet'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'lastNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastColor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'players'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PlayerFragment'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'cards'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'CardFragmnet'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'currentPlayer'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gameDirection'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'validmoves'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'CardFragmnet'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'validmoves'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'CardFragmnet'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'pickCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'requireChoose'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  ),
  fragmentDefinitionPlayerFragment,
  fragmentDefinitionCardFragmnet,
]);
Subscription$ListenState _parserFn$Subscription$ListenState(
        Map<String, dynamic> data) =>
    Subscription$ListenState.fromJson(data);

class Options$Subscription$ListenState
    extends graphql.SubscriptionOptions<Subscription$ListenState> {
  Options$Subscription$ListenState({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeSubscriptionListenState,
          parserFn: _parserFn$Subscription$ListenState,
        );
}

class WatchOptions$Subscription$ListenState
    extends graphql.WatchQueryOptions<Subscription$ListenState> {
  WatchOptions$Subscription$ListenState({
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
          document: documentNodeSubscriptionListenState,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$ListenState,
        );
}

class FetchMoreOptions$Subscription$ListenState
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$ListenState(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionListenState,
        );
}

extension ClientExtension$Subscription$ListenState on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$ListenState>> subscribe$ListenState(
          [Options$Subscription$ListenState? options]) =>
      this.subscribe(options ?? Options$Subscription$ListenState());
  graphql.ObservableQuery<Subscription$ListenState>
      watchSubscription$ListenState(
              [WatchOptions$Subscription$ListenState? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$ListenState());
}

graphql.QueryResult<Subscription$ListenState> useSubscription$ListenState(
        Options$Subscription$ListenState options) =>
    graphql_flutter.useSubscription(options);

class Subscription$ListenState$Widget
    extends graphql_flutter.Subscription<Subscription$ListenState> {
  Subscription$ListenState$Widget({
    widgets.Key? key,
    Options$Subscription$ListenState? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$ListenState>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$ListenState>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$ListenState(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$ListenState$roomState {
  Subscription$ListenState$roomState({
    required this.id,
    required this.players,
    this.winner,
    this.state,
  });

  factory Subscription$ListenState$roomState.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$players = json['players'];
    final l$winner = json['winner'];
    final l$state = json['state'];
    return Subscription$ListenState$roomState(
      id: (l$id as String),
      players: (l$players as List<dynamic>)
          .map((e) =>
              Fragment$PlayerFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      winner: l$winner == null
          ? null
          : Subscription$ListenState$roomState$winner.fromJson(
              (l$winner as Map<String, dynamic>)),
      state: l$state == null
          ? null
          : Subscription$ListenState$roomState$state.fromJson(
              (l$state as Map<String, dynamic>)),
    );
  }

  final String id;

  final List<Fragment$PlayerFragment> players;

  final Subscription$ListenState$roomState$winner? winner;

  final Subscription$ListenState$roomState$state? state;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$players = players;
    _resultData['players'] = l$players.map((e) => e.toJson()).toList();
    final l$winner = winner;
    _resultData['winner'] = l$winner?.toJson();
    final l$state = state;
    _resultData['state'] = l$state?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$players = players;
    final l$winner = winner;
    final l$state = state;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$players.map((v) => v)),
      l$winner,
      l$state,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ListenState$roomState) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$players = players;
    final lOther$players = other.players;
    if (l$players.length != lOther$players.length) {
      return false;
    }
    for (int i = 0; i < l$players.length; i++) {
      final l$players$entry = l$players[i];
      final lOther$players$entry = lOther$players[i];
      if (l$players$entry != lOther$players$entry) {
        return false;
      }
    }
    final l$winner = winner;
    final lOther$winner = other.winner;
    if (l$winner != lOther$winner) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$ListenState$roomState
    on Subscription$ListenState$roomState {
  CopyWith$Subscription$ListenState$roomState<
          Subscription$ListenState$roomState>
      get copyWith => CopyWith$Subscription$ListenState$roomState(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$ListenState$roomState<TRes> {
  factory CopyWith$Subscription$ListenState$roomState(
    Subscription$ListenState$roomState instance,
    TRes Function(Subscription$ListenState$roomState) then,
  ) = _CopyWithImpl$Subscription$ListenState$roomState;

  factory CopyWith$Subscription$ListenState$roomState.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ListenState$roomState;

  TRes call({
    String? id,
    List<Fragment$PlayerFragment>? players,
    Subscription$ListenState$roomState$winner? winner,
    Subscription$ListenState$roomState$state? state,
  });
  TRes players(
      Iterable<Fragment$PlayerFragment> Function(
              Iterable<
                  CopyWith$Fragment$PlayerFragment<Fragment$PlayerFragment>>)
          _fn);
  CopyWith$Subscription$ListenState$roomState$winner<TRes> get winner;
  CopyWith$Subscription$ListenState$roomState$state<TRes> get state;
}

class _CopyWithImpl$Subscription$ListenState$roomState<TRes>
    implements CopyWith$Subscription$ListenState$roomState<TRes> {
  _CopyWithImpl$Subscription$ListenState$roomState(
    this._instance,
    this._then,
  );

  final Subscription$ListenState$roomState _instance;

  final TRes Function(Subscription$ListenState$roomState) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? players = _undefined,
    Object? winner = _undefined,
    Object? state = _undefined,
  }) =>
      _then(Subscription$ListenState$roomState(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        players: players == _undefined || players == null
            ? _instance.players
            : (players as List<Fragment$PlayerFragment>),
        winner: winner == _undefined
            ? _instance.winner
            : (winner as Subscription$ListenState$roomState$winner?),
        state: state == _undefined
            ? _instance.state
            : (state as Subscription$ListenState$roomState$state?),
      ));
  TRes players(
          Iterable<Fragment$PlayerFragment> Function(
                  Iterable<
                      CopyWith$Fragment$PlayerFragment<
                          Fragment$PlayerFragment>>)
              _fn) =>
      call(
          players:
              _fn(_instance.players.map((e) => CopyWith$Fragment$PlayerFragment(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Subscription$ListenState$roomState$winner<TRes> get winner {
    final local$winner = _instance.winner;
    return local$winner == null
        ? CopyWith$Subscription$ListenState$roomState$winner.stub(
            _then(_instance))
        : CopyWith$Subscription$ListenState$roomState$winner(
            local$winner, (e) => call(winner: e));
  }

  CopyWith$Subscription$ListenState$roomState$state<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith$Subscription$ListenState$roomState$state.stub(
            _then(_instance))
        : CopyWith$Subscription$ListenState$roomState$state(
            local$state, (e) => call(state: e));
  }
}

class _CopyWithStubImpl$Subscription$ListenState$roomState<TRes>
    implements CopyWith$Subscription$ListenState$roomState<TRes> {
  _CopyWithStubImpl$Subscription$ListenState$roomState(this._res);

  TRes _res;

  call({
    String? id,
    List<Fragment$PlayerFragment>? players,
    Subscription$ListenState$roomState$winner? winner,
    Subscription$ListenState$roomState$state? state,
  }) =>
      _res;
  players(_fn) => _res;
  CopyWith$Subscription$ListenState$roomState$winner<TRes> get winner =>
      CopyWith$Subscription$ListenState$roomState$winner.stub(_res);
  CopyWith$Subscription$ListenState$roomState$state<TRes> get state =>
      CopyWith$Subscription$ListenState$roomState$state.stub(_res);
}

class Subscription$ListenState$roomState$winner {
  Subscription$ListenState$roomState$winner({required this.name});

  factory Subscription$ListenState$roomState$winner.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    return Subscription$ListenState$roomState$winner(name: (l$name as String));
  }

  final String name;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ListenState$roomState$winner) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$ListenState$roomState$winner
    on Subscription$ListenState$roomState$winner {
  CopyWith$Subscription$ListenState$roomState$winner<
          Subscription$ListenState$roomState$winner>
      get copyWith => CopyWith$Subscription$ListenState$roomState$winner(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$ListenState$roomState$winner<TRes> {
  factory CopyWith$Subscription$ListenState$roomState$winner(
    Subscription$ListenState$roomState$winner instance,
    TRes Function(Subscription$ListenState$roomState$winner) then,
  ) = _CopyWithImpl$Subscription$ListenState$roomState$winner;

  factory CopyWith$Subscription$ListenState$roomState$winner.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ListenState$roomState$winner;

  TRes call({String? name});
}

class _CopyWithImpl$Subscription$ListenState$roomState$winner<TRes>
    implements CopyWith$Subscription$ListenState$roomState$winner<TRes> {
  _CopyWithImpl$Subscription$ListenState$roomState$winner(
    this._instance,
    this._then,
  );

  final Subscription$ListenState$roomState$winner _instance;

  final TRes Function(Subscription$ListenState$roomState$winner) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Subscription$ListenState$roomState$winner(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String)));
}

class _CopyWithStubImpl$Subscription$ListenState$roomState$winner<TRes>
    implements CopyWith$Subscription$ListenState$roomState$winner<TRes> {
  _CopyWithStubImpl$Subscription$ListenState$roomState$winner(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Subscription$ListenState$roomState$state {
  Subscription$ListenState$roomState$state({
    required this.topcard,
    required this.lastNumber,
    required this.lastColor,
    required this.players,
    required this.cards,
    required this.currentPlayer,
    required this.gameDirection,
    required this.validmoves,
    required this.pickCount,
    required this.requireChoose,
  });

  factory Subscription$ListenState$roomState$state.fromJson(
      Map<String, dynamic> json) {
    final l$topcard = json['topcard'];
    final l$lastNumber = json['lastNumber'];
    final l$lastColor = json['lastColor'];
    final l$players = json['players'];
    final l$cards = json['cards'];
    final l$currentPlayer = json['currentPlayer'];
    final l$gameDirection = json['gameDirection'];
    final l$validmoves = json['validmoves'];
    final l$pickCount = json['pickCount'];
    final l$requireChoose = json['requireChoose'];
    return Subscription$ListenState$roomState$state(
      topcard:
          Fragment$CardFragmnet.fromJson((l$topcard as Map<String, dynamic>)),
      lastNumber: (l$lastNumber as int),
      lastColor: fromJson$Enum$Color((l$lastColor as String)),
      players: (l$players as List<dynamic>)
          .map((e) =>
              Fragment$PlayerFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      cards: (l$cards as List<dynamic>)
          .map((e) =>
              Fragment$CardFragmnet.fromJson((e as Map<String, dynamic>)))
          .toList(),
      currentPlayer: (l$currentPlayer as String),
      gameDirection: fromJson$Enum$Direction((l$gameDirection as String)),
      validmoves: (l$validmoves as List<dynamic>)
          .map((e) =>
              Fragment$CardFragmnet.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pickCount: (l$pickCount as int),
      requireChoose: (l$requireChoose as bool),
    );
  }

  final Fragment$CardFragmnet topcard;

  final int lastNumber;

  final Enum$Color lastColor;

  final List<Fragment$PlayerFragment> players;

  final List<Fragment$CardFragmnet> cards;

  final String currentPlayer;

  final Enum$Direction gameDirection;

  final List<Fragment$CardFragmnet> validmoves;

  final int pickCount;

  final bool requireChoose;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topcard = topcard;
    _resultData['topcard'] = l$topcard.toJson();
    final l$lastNumber = lastNumber;
    _resultData['lastNumber'] = l$lastNumber;
    final l$lastColor = lastColor;
    _resultData['lastColor'] = toJson$Enum$Color(l$lastColor);
    final l$players = players;
    _resultData['players'] = l$players.map((e) => e.toJson()).toList();
    final l$cards = cards;
    _resultData['cards'] = l$cards.map((e) => e.toJson()).toList();
    final l$currentPlayer = currentPlayer;
    _resultData['currentPlayer'] = l$currentPlayer;
    final l$gameDirection = gameDirection;
    _resultData['gameDirection'] = toJson$Enum$Direction(l$gameDirection);
    final l$validmoves = validmoves;
    _resultData['validmoves'] = l$validmoves.map((e) => e.toJson()).toList();
    final l$pickCount = pickCount;
    _resultData['pickCount'] = l$pickCount;
    final l$requireChoose = requireChoose;
    _resultData['requireChoose'] = l$requireChoose;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topcard = topcard;
    final l$lastNumber = lastNumber;
    final l$lastColor = lastColor;
    final l$players = players;
    final l$cards = cards;
    final l$currentPlayer = currentPlayer;
    final l$gameDirection = gameDirection;
    final l$validmoves = validmoves;
    final l$pickCount = pickCount;
    final l$requireChoose = requireChoose;
    return Object.hashAll([
      l$topcard,
      l$lastNumber,
      l$lastColor,
      Object.hashAll(l$players.map((v) => v)),
      Object.hashAll(l$cards.map((v) => v)),
      l$currentPlayer,
      l$gameDirection,
      Object.hashAll(l$validmoves.map((v) => v)),
      l$pickCount,
      l$requireChoose,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ListenState$roomState$state) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topcard = topcard;
    final lOther$topcard = other.topcard;
    if (l$topcard != lOther$topcard) {
      return false;
    }
    final l$lastNumber = lastNumber;
    final lOther$lastNumber = other.lastNumber;
    if (l$lastNumber != lOther$lastNumber) {
      return false;
    }
    final l$lastColor = lastColor;
    final lOther$lastColor = other.lastColor;
    if (l$lastColor != lOther$lastColor) {
      return false;
    }
    final l$players = players;
    final lOther$players = other.players;
    if (l$players.length != lOther$players.length) {
      return false;
    }
    for (int i = 0; i < l$players.length; i++) {
      final l$players$entry = l$players[i];
      final lOther$players$entry = lOther$players[i];
      if (l$players$entry != lOther$players$entry) {
        return false;
      }
    }
    final l$cards = cards;
    final lOther$cards = other.cards;
    if (l$cards.length != lOther$cards.length) {
      return false;
    }
    for (int i = 0; i < l$cards.length; i++) {
      final l$cards$entry = l$cards[i];
      final lOther$cards$entry = lOther$cards[i];
      if (l$cards$entry != lOther$cards$entry) {
        return false;
      }
    }
    final l$currentPlayer = currentPlayer;
    final lOther$currentPlayer = other.currentPlayer;
    if (l$currentPlayer != lOther$currentPlayer) {
      return false;
    }
    final l$gameDirection = gameDirection;
    final lOther$gameDirection = other.gameDirection;
    if (l$gameDirection != lOther$gameDirection) {
      return false;
    }
    final l$validmoves = validmoves;
    final lOther$validmoves = other.validmoves;
    if (l$validmoves.length != lOther$validmoves.length) {
      return false;
    }
    for (int i = 0; i < l$validmoves.length; i++) {
      final l$validmoves$entry = l$validmoves[i];
      final lOther$validmoves$entry = lOther$validmoves[i];
      if (l$validmoves$entry != lOther$validmoves$entry) {
        return false;
      }
    }
    final l$pickCount = pickCount;
    final lOther$pickCount = other.pickCount;
    if (l$pickCount != lOther$pickCount) {
      return false;
    }
    final l$requireChoose = requireChoose;
    final lOther$requireChoose = other.requireChoose;
    if (l$requireChoose != lOther$requireChoose) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$ListenState$roomState$state
    on Subscription$ListenState$roomState$state {
  CopyWith$Subscription$ListenState$roomState$state<
          Subscription$ListenState$roomState$state>
      get copyWith => CopyWith$Subscription$ListenState$roomState$state(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$ListenState$roomState$state<TRes> {
  factory CopyWith$Subscription$ListenState$roomState$state(
    Subscription$ListenState$roomState$state instance,
    TRes Function(Subscription$ListenState$roomState$state) then,
  ) = _CopyWithImpl$Subscription$ListenState$roomState$state;

  factory CopyWith$Subscription$ListenState$roomState$state.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ListenState$roomState$state;

  TRes call({
    Fragment$CardFragmnet? topcard,
    int? lastNumber,
    Enum$Color? lastColor,
    List<Fragment$PlayerFragment>? players,
    List<Fragment$CardFragmnet>? cards,
    String? currentPlayer,
    Enum$Direction? gameDirection,
    List<Fragment$CardFragmnet>? validmoves,
    int? pickCount,
    bool? requireChoose,
  });
  CopyWith$Fragment$CardFragmnet<TRes> get topcard;
  TRes players(
      Iterable<Fragment$PlayerFragment> Function(
              Iterable<
                  CopyWith$Fragment$PlayerFragment<Fragment$PlayerFragment>>)
          _fn);
  TRes cards(
      Iterable<Fragment$CardFragmnet> Function(
              Iterable<CopyWith$Fragment$CardFragmnet<Fragment$CardFragmnet>>)
          _fn);
  TRes validmoves(
      Iterable<Fragment$CardFragmnet> Function(
              Iterable<CopyWith$Fragment$CardFragmnet<Fragment$CardFragmnet>>)
          _fn);
}

class _CopyWithImpl$Subscription$ListenState$roomState$state<TRes>
    implements CopyWith$Subscription$ListenState$roomState$state<TRes> {
  _CopyWithImpl$Subscription$ListenState$roomState$state(
    this._instance,
    this._then,
  );

  final Subscription$ListenState$roomState$state _instance;

  final TRes Function(Subscription$ListenState$roomState$state) _then;

  static const _undefined = {};

  TRes call({
    Object? topcard = _undefined,
    Object? lastNumber = _undefined,
    Object? lastColor = _undefined,
    Object? players = _undefined,
    Object? cards = _undefined,
    Object? currentPlayer = _undefined,
    Object? gameDirection = _undefined,
    Object? validmoves = _undefined,
    Object? pickCount = _undefined,
    Object? requireChoose = _undefined,
  }) =>
      _then(Subscription$ListenState$roomState$state(
        topcard: topcard == _undefined || topcard == null
            ? _instance.topcard
            : (topcard as Fragment$CardFragmnet),
        lastNumber: lastNumber == _undefined || lastNumber == null
            ? _instance.lastNumber
            : (lastNumber as int),
        lastColor: lastColor == _undefined || lastColor == null
            ? _instance.lastColor
            : (lastColor as Enum$Color),
        players: players == _undefined || players == null
            ? _instance.players
            : (players as List<Fragment$PlayerFragment>),
        cards: cards == _undefined || cards == null
            ? _instance.cards
            : (cards as List<Fragment$CardFragmnet>),
        currentPlayer: currentPlayer == _undefined || currentPlayer == null
            ? _instance.currentPlayer
            : (currentPlayer as String),
        gameDirection: gameDirection == _undefined || gameDirection == null
            ? _instance.gameDirection
            : (gameDirection as Enum$Direction),
        validmoves: validmoves == _undefined || validmoves == null
            ? _instance.validmoves
            : (validmoves as List<Fragment$CardFragmnet>),
        pickCount: pickCount == _undefined || pickCount == null
            ? _instance.pickCount
            : (pickCount as int),
        requireChoose: requireChoose == _undefined || requireChoose == null
            ? _instance.requireChoose
            : (requireChoose as bool),
      ));
  CopyWith$Fragment$CardFragmnet<TRes> get topcard {
    final local$topcard = _instance.topcard;
    return CopyWith$Fragment$CardFragmnet(
        local$topcard, (e) => call(topcard: e));
  }

  TRes players(
          Iterable<Fragment$PlayerFragment> Function(
                  Iterable<
                      CopyWith$Fragment$PlayerFragment<
                          Fragment$PlayerFragment>>)
              _fn) =>
      call(
          players:
              _fn(_instance.players.map((e) => CopyWith$Fragment$PlayerFragment(
                    e,
                    (i) => i,
                  ))).toList());
  TRes cards(
          Iterable<Fragment$CardFragmnet> Function(
                  Iterable<
                      CopyWith$Fragment$CardFragmnet<Fragment$CardFragmnet>>)
              _fn) =>
      call(
          cards: _fn(_instance.cards.map((e) => CopyWith$Fragment$CardFragmnet(
                e,
                (i) => i,
              ))).toList());
  TRes validmoves(
          Iterable<Fragment$CardFragmnet> Function(
                  Iterable<
                      CopyWith$Fragment$CardFragmnet<Fragment$CardFragmnet>>)
              _fn) =>
      call(
          validmoves: _fn(
              _instance.validmoves.map((e) => CopyWith$Fragment$CardFragmnet(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$ListenState$roomState$state<TRes>
    implements CopyWith$Subscription$ListenState$roomState$state<TRes> {
  _CopyWithStubImpl$Subscription$ListenState$roomState$state(this._res);

  TRes _res;

  call({
    Fragment$CardFragmnet? topcard,
    int? lastNumber,
    Enum$Color? lastColor,
    List<Fragment$PlayerFragment>? players,
    List<Fragment$CardFragmnet>? cards,
    String? currentPlayer,
    Enum$Direction? gameDirection,
    List<Fragment$CardFragmnet>? validmoves,
    int? pickCount,
    bool? requireChoose,
  }) =>
      _res;
  CopyWith$Fragment$CardFragmnet<TRes> get topcard =>
      CopyWith$Fragment$CardFragmnet.stub(_res);
  players(_fn) => _res;
  cards(_fn) => _res;
  validmoves(_fn) => _res;
}
