class TablesChannel < ApplicationCable::Channel
  def subscribed
    current_user.tables.each do |table|
      stream_from "tables:#{table.id}"
    end
  end

  def unsubscribed
    stop_all_streams
  end
end
