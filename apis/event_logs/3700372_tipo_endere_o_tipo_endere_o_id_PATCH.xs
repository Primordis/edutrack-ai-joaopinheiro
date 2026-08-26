// Edit tipo_endereço record
query "tipo_endere_o/{tipo_endere_o_id}" verb=PATCH {
  api_group = "Event Logs"

  input {
    int tipo_endere_o_id? filters=min:1
    dblink {
      table = "tipo_endereço"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "tipo_endereço" {
      field_name = "id"
      field_value = $input.tipo_endere_o_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $tipo_endere_o
  }

  response = $tipo_endere_o
}