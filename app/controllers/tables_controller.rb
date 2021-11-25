# Edited 4/23/2020 by Tze Hei Tam: Added update route

class TablesController < ApplicationController

    def update
        @table = Table.find(params[:id])
        @table.is_available = !@table.is_available
        @table.save
        
        redirect_to reservations_url

    end
end
