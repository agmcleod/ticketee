class CreateTagsTickets < ActiveRecord::Migration
  def change
  	create_table :tags_tickets, id: false do |t|
  		t.integer :tag_id, :ticket_id
  	end
  end
end
