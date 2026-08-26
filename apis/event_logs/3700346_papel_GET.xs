// Query all papel records
query papel verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query papel {
      return = {type: "list"}
    } as $papel
  }

  response = $papel
}