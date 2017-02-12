class WelcomeController < ApplicationController
  
  def index
    
  end
  
  def import
     @raw_Data=CSV.read(params[:file].path, :col_sep => "," ,:headers => true, :row_sep => :auto,  :encoding  =>'iso-8859-1:utf-8')
     ##CSV.read(params[:file].path, headers: true, encoding:'iso-8859-1:utf-8')
     

     flash[:notice]= "File Imported Succefully"
     render 'import'
     

  end
  
  
end