class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    self.update(hired: true) unless self.hired == true
  end
end