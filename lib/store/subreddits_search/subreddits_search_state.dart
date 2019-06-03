import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'subreddits_search_state.g.dart';

abstract class SubredditsSearchState
    implements Built<SubredditsSearchState, SubredditsSearchStateBuilder> {
  String get lastQuery;

  // Full names with the `r/` prefix
  BuiltList<String> get resultFeedsNames;

  SubredditsSearchState._();

  factory SubredditsSearchState([updates(SubredditsSearchStateBuilder b)]) {
    return _$SubredditsSearchState._(
      lastQuery: '',
      resultFeedsNames: BuiltList<String>([]),
    ).rebuild(updates);
  }
}
