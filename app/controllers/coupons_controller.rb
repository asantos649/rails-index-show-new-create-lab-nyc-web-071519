class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
        
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create
        @c = Coupon.create(coupon_params)
        redirect_to coupon_path(@c)
    end
    
    def edit
    end

    def update
    end

    def delete
    end

    private

    def coupon_params
        params.permit(:coupon_code, :store)
    end

end
