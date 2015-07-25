class SessionsController < Devise::SessionsController
    layout  'log_in'
    
    def new
        super
    end
     def create
        super
    end
end