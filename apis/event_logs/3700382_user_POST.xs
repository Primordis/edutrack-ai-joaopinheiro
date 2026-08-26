// Add User record
query user verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "User"
    }
  }

  stack {
    db.add User {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $user
  }

  response = $user
}