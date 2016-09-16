class Blog < ApplicationRecord
  validates_presence_of :title

  def hello_world
    "hello world"
  end
end
