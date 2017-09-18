class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "tables:#{message.table.id}", {
      message: MessagesController.render(message),
      table_id: message.table.id
    }
  end
end
