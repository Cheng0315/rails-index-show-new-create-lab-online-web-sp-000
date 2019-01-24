class CouponController < ApplicationController
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
