require 'pry'
ALittleBit::App.controllers :books do
  layout :main

  get :new do
    @book = Book.new
    @book.chapters << Chapter.new
    render :new
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


end
