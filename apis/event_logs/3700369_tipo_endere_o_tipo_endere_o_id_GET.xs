// Get tipo_endereço record
query "tipo_endere_o/{tipo_endere_o_id}" verb=GET {
  api_group = "Event Logs"

  input {
    int tipo_endere_o_id? filters=min:1
  }

  stack {
    db.get "tipo_endereço" {
      field_name = "id"
      field_value = $input.tipo_endere_o_id
    } as $tipo_endere_o
  
    precondition ($tipo_endere_o != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $tipo_endere_o
}