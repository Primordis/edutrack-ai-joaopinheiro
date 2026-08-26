// Add papel record
query papel verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "papel"
    }
  }

  stack {
    db.add papel {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $papel
  }

  response = $papel
}