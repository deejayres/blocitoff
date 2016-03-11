namespace :todo do
  desc "delete to-do items after 7 days"
  task delete_items: :environment do
    Item.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

end
