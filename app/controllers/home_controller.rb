class HomeController < ApplicationController
  def pick
    @child = Child.all.sample
    @child_pick = ChildPick.new({ child: @child, picked: Time.now })
    @child_pick.save
  end
end
