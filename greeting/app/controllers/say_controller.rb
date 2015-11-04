class SayController < ApplicationController
  def hello
    right_now = Time.now
    @current_time = right_now.stamp('06:01 PM')
    @current_date = right_now.stamp('April 29, 1976')
  end

  def goodbye
  end
end
