class MessageDecorator < Draper::Decorator
  delegate_all

  def user_title
    object.user.email
  end

  def user_gravatar
    "https://www.gravatar.com/avatar/" + gravatar_from_email  
  end

  def gravatar_from_email
    Digest::MD5.hexdigest(object.user.email.downcase.strip)
  end
end
