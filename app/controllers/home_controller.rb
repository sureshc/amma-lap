class HomeController < ApplicationController
  def pick
    @child = Child.all.sample
    @child_pick = @child.child_picks.create(picked: Time.now)
    @child_pick.save
  end
end
