module ImageHelper
  def user_avatar(user, size=100)
    # if user.avatar.attached?
    #     user.avatar.variant(resize:"#{size}x#{size}")
    # else
        "https://avatars.dicebear.com/api/big-ears-neutral/#{user.name.hash}.svg?size=#{size}"
    # end
  end


end