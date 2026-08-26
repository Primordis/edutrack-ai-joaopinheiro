// Delete tipo_endereço record.
query "tipo_endere_o/{tipo_endere_o_id}" verb=DELETE {
  api_group = "Event Logs"

  input {
    int tipo_endere_o_id? filters=min:1
  }

  stack {
    db.del "tipo_endereço" {
      field_name = "id"
      field_value = $input.tipo_endere_o_id
    }
  }

  response = null
}