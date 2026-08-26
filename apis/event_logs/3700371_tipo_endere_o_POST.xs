// Add tipo_endereço record
query tipo_endere_o verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "tipo_endereço"
    }
  }

  stack {
    db.add "tipo_endereço" {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $tipo_endere_o
  }

  response = $tipo_endere_o
}