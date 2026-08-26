// Get test record
query "test/{test_id}" verb=GET {
  api_group = "Event Logs"

  input {
    int test_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.test_id
    } as $test
  
    precondition ($test != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $test
}