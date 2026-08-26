// Delete test record.
query "test/{test_id}" verb=DELETE {
  api_group = "Event Logs"

  input {
    int test_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.test_id
    }
  }

  response = null
}