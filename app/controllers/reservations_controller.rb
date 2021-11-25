# Edited 4/22/2020 by Tze Hei Tam: Redid index
# Edited 4/22/2020 by Nina Yao: created edit, update, destroy methods
# Edited 4/22/2020 by Alli Hornyak: created create and updated new
# Edited 4/22/2020 by Emily Niehaus: adjust index to track @is_admin
# Edited 4/22/2020 by Nick Harvey: Adjusted reservation_params
# Edited 4/23/2020 by Emiy Niehaus: Fix tabbing
# Edited 4/23/2020 by Tze Hei Tam: Added variables for queue and reservations display for admin
# Edited 4/23/2020 by Alli Hornyak: adjust new to track @is_admin
# Edited 4/24/2020 by Tze Hei Tam: Added filter so only future dates/times are valid


class ReservationsController < ApplicationController
    before_action :authenticate_user!

    def index
        if current_user.admin == true
            @users = User.all
            @is_admin = true
            @tables = Table.all
            @queue = Reservation.where date: Date.today
            @reservations = Reservation.all
        else 
            @users = [current_user]
            @is_admin = false
            @tables = Table.all
        end
    end

    def edit
        @reservation = Reservation.find(params[:id])
    end
    def update
        @reservation = Reservation.find(params[:id])  
        if Date.parse(params[:reservation][:date]) > Date.today or params[:reservation]["time(4i)"].to_i > Time.now.hour or (params[:reservation]["time(4i)"].to_i > Time.now.hour and params[:reservation]["time(5i)"].to_i > Time.now.min)
            if @reservation.update(reservation_params)
                redirect_to reservations_url, notice: 'Success!' 
            else
                redirect_to edit_reservation_path(params[:id])
            end
        else
            redirect_to edit_reservation_path(params[:id])
        end
    end
    
    def destroy
        @reservation= Reservation.find(params[:id])
        @reservation.destroy()
        redirect_to reservations_url
    end

    def create
	    @customer = current_user
	    @reservation = current_user.reservations.build(reservation_params)	
        if @reservation.date > Date.today or @reservation.time.hour > Time.now.hour or(@reservation.time.hour == Time.now.hour and @reservation.time.min > Time.now.min)
            if @reservation.save
                redirect_to reservations_url
            else
                redirect_to new_reservation_url
            end

        else
            redirect_to new_reservation_url
        end
    end

    def show
        @reservation= Reservation.find(params[:id])
    end

    def new
	    @customer = current_user
        @reservation = Reservation.new
	    if current_user.admin == true
		    @is_admin = true
	    else
		    @is_admin = false
	    end
    end

    private 
        def reservation_params
            params.require(:reservation).permit(:date, :time, :party_size, :special_requests, :name, :phone_num, :email)
        end
end
