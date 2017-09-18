App.tables = App.cable.subscriptions.create "TablesChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    active_table = $("[data-behavior='messages'][data-table-id='#{data.table_id}']")

    if active_table.length > 0
      active_table.append(data.message)
    else
      $("[data-behavior='table-link'][data-table-id='#{data.table_id}']").css("font-weight", "bold")

    # Called when there's incoming data on the websocket for this channel
