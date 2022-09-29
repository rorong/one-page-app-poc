class CreateCookies < ActiveRecord::Migration[5.2]
  def change
    create_table :cookies do |t|
      t.string :name
      t.string :value
      t.string :path
      t.string :domain
      t.datetime :expires
      t.string :same_site
      t.boolean :http_only
      t.boolean :secure

      t.timestamps
    end
  end
end
