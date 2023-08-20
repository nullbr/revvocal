module UsersHelper
  def profile_img(user)
    if user.avatar_url.present?
      url_for(user.avatar_url)
    else
      gravatar_url(user)
    end
  end

  def gravatar_for(user, options = { size: 80 })
    size = options[:size]
    gravatar_id  = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=retro"
    image_tag(gravatar_url, alt: user.username, class: 'gravatar')
  end

  def gravatar_url(user)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=250&d=retro"
  end
end
