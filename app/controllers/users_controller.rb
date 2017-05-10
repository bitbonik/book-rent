class UsersController < ApplicationController
	#attr_accessible :username

	def show
		@user = User.find(params[:id])
		@user_books = @user.books.paginate(page: params[:page], per_page: 5)
	end
end
