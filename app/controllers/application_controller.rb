class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @coupons = Coupon.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code] 
    @coupon.store = params[:store] 
    @coupon.save

    redirect_to coupon_path(@coupon)
  end
end
