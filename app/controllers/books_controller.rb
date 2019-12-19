class BooksController < ApplicationController
    
 
    def new
        @author = Author.find(params[:author_id])
        @book = Book.new
      end

      def create
        puts params
        author = Author.find(params[:book][:author_id])
        Book.create(params.require(:book).permit(:name, :genre, :author_id))
               
        redirect_to author
      end

end
