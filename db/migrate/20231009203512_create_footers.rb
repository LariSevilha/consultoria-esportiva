class CreateFooters < ActiveRecord::Migration[7.0]
  def change
    create_table :footers do |t|
      t.string :icon
      t.string :url

      t.timestamps
    end
  end
end
