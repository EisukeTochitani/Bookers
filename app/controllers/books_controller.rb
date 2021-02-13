class BooksController < ApplicationController


  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def cleate
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "successfully"
      redirect_to book_path(@book)
    end
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
