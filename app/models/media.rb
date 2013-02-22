class Media < ActiveRecord::Base
  attr_accessible :html

  def to_s
    return "#{id} - #{html}"[0..60]
  end
end
