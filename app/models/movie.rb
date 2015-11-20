class Movie < ActiveRecord::Base
	validates :title, :director , :actor , :genre, :rating, :runtime, :year , :presence => true
	validates :title, :length => { :minimum =>2}
	validates :title, :uniqueness => true

	has_one :actordetail
	has_one :directordetail
end
