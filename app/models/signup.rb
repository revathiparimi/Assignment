class Signup < ActiveRecord::Base
	#after_touch do |user|
    #puts "You have touched an object"
  #end
  #attr_accessible :username
	has_one :personalinfo
	validates :firstname, :lastname, :gender, :qualification, :address, presence: true
	validates_format_of :emailid, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+\z/i
	validates :password, length: { in: 6..20 }
	validates :phonenumber, length: { in: 10..12 }
	after_save :generateusername
	

  def generateusername

    #@fname=(Signup.select(:firstname).find_by id: Signup.last.id).firstname
    #@lname=Signup.select(:lastname).find_by id: Signup.last.id
    #@username=@fname.to_s+@lname.to_s
    #@user=Signup.last
    #@user.username = @username
    #save
  end
end
