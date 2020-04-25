# frozen_string_literal: true

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = env['warden'].user
    end

    # private
    # def find_verified_company
    #   if current_company = env['warden'].user
    #     current_company
    #   else
    #     reject_unauthorized_connection
    #   end
    # end
  end
end
