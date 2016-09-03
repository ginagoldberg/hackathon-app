class Tip < ActiveRecord::Base

  def self.search(search)
    if search
      where('content LIKE ?', "%#{search}%")
      where('title LIKE ?', "%#{search}%")
    end
  end

end
