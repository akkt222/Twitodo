class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update]

  def index
    @group = Group.all
  end

  def new
    @group = Group.new
    @group.members.build
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      render :index, notice: 'リストを作成しました'
    else
      render :new
    end
    # @group = Group.new(group_params)
    # if @group.save
    #   redirect_to root_path, notice: 'グループを作成しました'
    # else
    #   render :new
    # end
    # group = Group.create!(group_params)
    # group.user_ids.each do |user_id|
    #   user = User.find_by(user_id: user_id)
    #   group.members.create!(user: user)

    # @group = Group.new(group_params)

    # if @group.save
    #   binding.pry
    # group = Group.create!(group_params)
    # group.user_ids.each do |user_id|
    #   user = User.find_by(user_id: user_id)
    #   group.members.create!(user: user)

    # render :index
    # end
  end

  def show
    @tweet = Tweet.all
    @new = Tweet.where(status: "1", group_identifier: @group.id)
    @wip = Tweet.where(status: "2", group_identifier: @group.id)
    @pending = Tweet.where(status: "3", group_identifier: @group.id)
    @completed = Tweet.where(status: "4", group_identifier: @group.id)
  end

  def edit
    # if @group.update(group_name: params[:name], id: params[:id])
    #   redirect_to :index, notice: 'リストを更新しました'
    # else
    #   render :edit
    # end
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_name: params["group"][:group_name], hashtag: params["group"][:hashtag])
      render :index, notice: 'リストを更新しました'
    else
      render :edit
    end
  end

  private

  def group_params
    params.require(:group).permit(:group_name, :hashtag, user_ids: [])
  end

  def set_group
    @group = Group.find(params[:id])
  end

end
