ALittleBit::App.controllers :books do

  get :index do
    200
  end

  get :new do
    200
  end

  post :create, :map => '' do
   Book.create!(params[:book])
   redirect url_for(:books, :index)
  end

  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end


end
