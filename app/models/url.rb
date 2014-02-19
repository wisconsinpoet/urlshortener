class Url < ActiveRecord::Base
  before_save :shorten_url

  def shorten_url
    self.shortened_url = rand(99).to_s.concat(('a'..'z').to_a.sample).concat(('a'..'z').to_a.sample).concat(rand(99).to_s).concat(('a'..'z').to_a.sample)
  end

  def to_url
    "http://oursite.#{shortened_url}"
  end

  def listify
    "#{to_url}   (#{url})"
  end

end
