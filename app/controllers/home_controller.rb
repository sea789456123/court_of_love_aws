class HomeController < ApplicationController
  def index #메인 페이지
  end
  
  def court #재판소 페이지
    @courts = Court.all
  end
  
  def new #재판소 글올리기
    if(Court.count==0)
      @c_id = 1;
    else
      @c_id = Court.last.id+1;
    end
  end
  
  def create #재판소 글 DB 등록
    c = Court.new
    c.nickname = params[:nickname]
    c.title = params[:title]
    c.series = params[:series]
    c.content = params[:content]
    c.category = params[:category]
    c.hashtag = params[:hashtag]
    c.end_date = params[:end_date]
    h = params[:end_hour].to_i
    if params[:ampm] == "am"
      if h == 12
        c.end_hour = 0
      else
        c.end_hour = h
      end
    else
      if h == 12
        c.end_hour = h
      else
        c.end_hour = h+12;
      end
    end
    c.agree_num = 0
    c.disagree_num = 0
    c.save
    redirect_to '/home/court'
  end
  
  def detail #재판소 글 상세보기
    @view = params[:c_id]
    @a_view = Court.find(@view)
    
    @a_view = Court.find(params[:c_id])
    
  end
end
