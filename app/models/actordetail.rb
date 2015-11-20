class Actordetail < ActiveRecord::Base
	validates :name,  :gender, :dob , :hometown, :presence => true
	validates :name, :length => { :minimum =>2}
	validates :gender, :length => { :maximum =>6}
	validates :name, :uniqueness => true

	has_many :movie
	
end
