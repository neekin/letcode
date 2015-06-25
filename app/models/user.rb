class User < ActiveRecord::Base
  validates :username ,presence: true
  validates :username , uniqueness: { case_sensitive: false}
  has_secure_password
  has_many :topic
  #添加用户验证
  before_create { generate_token(:auth_token) }
  mount_uploader :avatar, AvatarUploader
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column =>self[column])
  end
end
