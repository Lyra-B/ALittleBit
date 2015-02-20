require 'pry'
ALittleBit::App.controllers :books do
  layout :main

  get :new do
    @book = Book.new
    #binding.pry

    # 20.times {
    @book.chapters << Chapter.new
    render :new
    # render :'books/new'
  end

  post :create, :map => '' do
  # chapter_attributes = params[:book].delete("chapter_attributes")

   @book = Book.create!(params[:book])
   # chapter_attributes.each do |index, chapter_values|
   #    @book.chapters << Chapter.new(chapter_values)
   #  end
   # @book.chapters << Chapter.new(params[:book][:chapters_attributes])
   #@book.save!

   redirect url_for(:books, :new)
  end

  get :index do
    render :index
  end

  put :update do
  end

  delete :delete do
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
