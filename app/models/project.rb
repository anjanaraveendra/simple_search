class Project < ActiveRecord::Base

def self.search(query)
  if query
    where("body like ?", "%#{query}%") 
  else
	self.all
  end
end
end
