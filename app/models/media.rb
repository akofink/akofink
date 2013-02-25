class Media < ActiveRecord::Base
  attr_accessible :title, :content

  def to_s
    return "#{id} - #{title} - #{content}"[0..60]
  end
end
