// Query all tipo_endereço records
query tipo_endere_o verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query "tipo_endereço" {
      return = {type: "list"}
    } as $tipo_endere_o
  }

  response = $tipo_endere_o
}