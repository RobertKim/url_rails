class Url < ActiveRecord::Base
  attr_accessible :count, :original, :shortened

  before_create :shorten_url

  def increment_count!
    self.count +=1
    self.save
  end


  private
  def shorten_url
    self.shortened = SecureRandom.hex(3)
  end


end
