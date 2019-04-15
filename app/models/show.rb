require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(arg = {:call_letters => "NBC"})
    self.network.shows << self
  end

# binding.pry
# 0
end
