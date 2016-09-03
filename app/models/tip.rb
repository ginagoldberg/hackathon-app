class Tip < ActiveRecord::Base
  acts_as_votable

  def self.search(search)
    if search
      where('content LIKE ?', "%#{search}%")
      where('title LIKE ?', "%#{search}%")
    end
  end

end
