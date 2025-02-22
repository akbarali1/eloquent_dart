import 'package:eloquent/eloquent.dart';

class Processor {
  ///
  /// Process the results of a "select" query.
  ///
  /// @param  \Illuminate\Database\Query\Builder  $query
  /// @param  array  $results
  /// @return array
  ///
  List<Map<String, dynamic>> processSelect(QueryBuilder query, List<Map<String, dynamic>> results) {
    return results;
  }

  ///
  /// Process an  "insert get ID" query.
  ///
  /// @param  \Illuminate\Database\Query\Builder  $query
  /// @param  string  $sql
  /// @param  array   $values
  /// @param  string  $sequence
  /// @return int
  ///
  Future<dynamic> processInsertGetId(
      QueryBuilder query, String sql, List values,
      [String sequence ='id']) async {
    return query.getConnection().insert(sql, values);
    //var id = query.getConnection().getPdo().lastInsertId(sequence);
    //return is_numeric($id) ? (int) $id : $id;
    //return -1;
  }

  ///
  /// Process the results of a column listing query.
  ///
  /// @param  array  $results
  /// @return array
  ///
  List processColumnListing(List results) {
    return results;
  }
}
