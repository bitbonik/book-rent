class AddAttachmentBookCoverToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :book_cover
    end
  end

  def self.down
    remove_attachment :users, :book_cover
  end
end
