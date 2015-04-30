class AdminLoginController < ApplicationController
layout 'application'
  def loginmethod
    @loginvar = AdminLogin.new(params.require(:admin_login).permit(:username,:password))
    puts "*********************************************************************"
    if (@loginvar.username.empty? || @loginvar.password.empty? )
      puts "////////////////////////////////////////////////////////////////////"
      redirect_to(:controller => 'admin_login',:action =>'incorrect')
    else
      @username = AdminLogin.where(["username=?",@loginvar.username])
      if(@username.size !=0 && @username[0].password==@loginvar.password)
        puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
        redirect_to( :controller => 'students', :action => 'index' )
      else
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1"
        redirect_to(:action =>'incorrect')
      end
    end
  end

  def signup
  end

  def incorrect
  end
end

