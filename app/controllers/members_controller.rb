require 'net/http'

class MembersController < ApplicationController
  def index
    helpers.find_senate_members
  end
end
