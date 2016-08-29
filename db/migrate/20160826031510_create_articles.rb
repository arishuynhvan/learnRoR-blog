# To migrate files use: rake db:migrate 0
# (and the optional 'RAILS_ENV=production' argument if migrate in production)
class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
