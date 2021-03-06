class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table    :meals do |t|
      t.string      :address
      t.string      :title
      t.text        :description
      t.datetime    :date
      t.attachment  :image
      t.integer     :user_id
      t.integer     :max_people
      t.string      :place
      t.string        :tags, array: true, default: []

      t.timestamps
    end
  end
end
