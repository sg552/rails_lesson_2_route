

class Interface::BooksController < ActionController::Base
  def all
    render :json => {
      :name => '小王',
      :sex => 'male',
      :age => 18,
      :address => '北京市朝阳区...'
    }
  end
end
