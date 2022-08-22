# frozen_string_literal: true

class CreateInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :infos do |t|
      t.string :key, null: false
      t.string :value, null: false
      t.timestamps null: false
    end
  end
end
