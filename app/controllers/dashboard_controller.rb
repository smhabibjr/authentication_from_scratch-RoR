class DashboardController < ApplicationController
  def index
    @all_articles = Article.all
    @all_students = Student.all
  end
end
