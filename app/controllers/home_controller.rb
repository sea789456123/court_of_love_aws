class HomeController < ApplicationController
  def index #메인 페이지
  end
  
  def court #재판소 페이지
    @courts = Court.all
  end
  
  def court_new #재판소 글올리기
  end
  
  def court_create #재판소 글 DB 등록
  end
  
end
