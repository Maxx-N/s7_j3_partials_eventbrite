class AttributeOrganizerToEvents < ActiveRecord::Migration[5.2]
  def change
    change_table :events do |t|
      t.references :organizer, index: true
    end
  end
end
