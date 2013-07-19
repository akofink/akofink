class Medium < ActiveRecord::Base
  def to_s
    return "#{id} - #{title} - #{content}"[0..60]
  end
end
