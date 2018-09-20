class HomeController < ApplicationController
  def index #메인 페이지
    @courts = Court.all
  end
  
  def court #재판소 페이지
    @courts = Court.all
  end
  
  def new #재판소 글올리기
    @token = form_authenticity_token
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
    c.agree_num = 0
    c.disagree_num = 0
    c.save
    redirect_to '/home/court'
  end
  
  def edit
    @token = form_authenticity_token
    @court = Court.find(params[:c_id])
  end
  
  def update
    c = Court.find(params[:c_id])
    c.title = params[:title]
    c.series = params[:series]
    c.content = params[:content]
    c.category = params[:category]
    c.hashtag = params[:hashtag]
    c.end_date = params[:end_date]
    c.save
    redirect_to "/home/detail/#{params[:c_id]}"
  end
  
  def destroy
    Court.destroy(params[:c_id])
    redirect_to '/home/court'
  end
  
  
  before_action :log_impression, :only=> [:detail]
  def log_impression
      @hit_court = Court.find(params[:c_id])
      # this assumes you have a current_user method in your authentication system
      @hit_court.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  end
  
  def detail #재판소 글 상세보기
    @court = Court.find(params[:c_id])
  end
  
  def counseling
  end
  def reiview
  end
end