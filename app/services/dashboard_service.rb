class DashboardService

  def initializer(type, user)
    @type = type
    @user = user
  end

  def perform
    send("group_by_#{@type}")
  end

  private

  def group_by_category
    categories = Category.includes(:movies, :series)
    Api::V1::CategorySerializer.new(categories)
  end

  def group_by_watching
    @players = Player.includes(:movie).where(end_date: nil, user: @user)
    Api::V1::MovieSerializer.new(players.map(&:movie))
  end

  def group_by_highlight
    highglight = Movie.find_by(highlighted: true)
    highglight ||= Serie.find_by(highlighted: true)
    Api::V1::WatchableSerializer.new(highglight, params: {user: @user})
  end
end
