ActiveRecord::Schema.define do
  self.verbose = false

  create_table :records, :force => true do |t|
    t.string :text
    t.timestamps
  end
end
