class Blog < ActiveRecord::Base
  attr_accessible :content, :title

  def to_s
    return "#{id} - #{title} - #{content}"[0..60]
  end
end
