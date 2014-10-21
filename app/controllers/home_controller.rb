class HomeController < ApplicationController
  #layout 'false'
 before_filter :password_match, :only => :verify


  def index

  end

  def login
    
  end

  def signup
    
    @user=Signup.new
    #render layout: false
    #render layout: "adminlayout"

    
  end

  def password_match
    emailid=params[:emailid]
    password=params[:password]
    if(emailid !='' and password !='')
        db_emailid=Signup.select(:emailid).find_by emailid:emailid
        if db_emailid!=nil#to check whether he is registred or not
            db_password=Signup.select(:password).find_by emailid:emailid

    #yml_password=USER_CONFIG['password']

#emailid==db_emailid.emailid and
               if db_password!= nil
                  if ( password!=db_password.password)
       #if ( password!=yml_password)
                          flash[:error] = "your login credintials are wrong,try again"
                          redirect_to :action => 'login'
                  end
               else
                  flash[:error] = "your login credintials are wrong,try again"
                  redirect_to :action => 'login'
                end
        else
          redirect_to "/home/index"
          flash[:error2]="you are not an registered user.To continue to login register first"
        end
    else
      flash[:error3] = "emailid and password cann't be blank"
      redirect_to :action => 'login'
    end
  end


  def verify
  	#emailid=params[:emailid]
  	#password=params[:password]
               # #db_emailid=Signup.select(:emailid).find_by emailid:emailid
               ##db_password=User.select(:password).find_by emailid:emailid

    #yml_password=USER_CONFIG['password']

##emailid==db_emailid.emailid and
    #if yml_password!= nil
  	   ##if ( password==db_password.password)
       #if ( password==yml_password)
  		#session[:user] = emailid
      session[:user] = params[:emailid]
  		redirect_to "/dashboard/index"
  	   #else 
      #flash[:error] = "your login credintials are wrong,try again"
  		#redirect_to :action => 'login'
      #end
     #else
       #flash[:error] = "your login credintials are wrong,try again"
       #redirect_to :action => 'login'
    #end
   end

  def signupdetails
    #@user=Signup.new :firstname => params[:firstname], :lastname => params[:lastname], :password => params[:password], :emailid => params[:emailid], :phonenumber => params[:phonenumber], :gender => params[:gender], :qualification => params[:qualification], :language => [params[:english],params[:hindi]], :address => params[:address]
     @user = Signup.create(user_params)
    @user.save

     #@user.build_personalinfo :fbid => params[:fbid]
    #@user.save

    if !@user.valid?
      flash[:error]=@user.errors.full_messages.join("<br>").html_safe
      redirect_to '/home/signup'
    else
      redirect_to '/home/login'
      flash[:success]="You have registered successfully,now u can login"
    end

  end

   private
    
    def user_params
      params.require(:signup).permit(:firstname, :lastname, :password, :gender, :qualification, :emailid, :phonenumber, :address, :married)
    end

  def signup_details
  	@fname=params[:firstname]
  	@uname=params[:lastname]
  	@password=params[:password]
  	@emailid=params[:emailid]
  	@phonenumber=params[:phonenumber]
  	@gender=params[:gender]
  	@qualification=params[:qualification]
  	@address=params[:address]
  	@english=params[:english]
  	@hindi=params[:hindi]
  	@image=params[:image]

   end
  
end
