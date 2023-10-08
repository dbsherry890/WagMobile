class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_person_name
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :booking_types
  validates :booking_link, presence: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  

  include Pay::Billable

  pay_customer stripe_attributes: :stripe_attributes, default_payment_processor: :stripe
  
  def stripe_attributes(pay_customer)
    {
      address: {
        city: pay_customer.owner.city,
        country: pay_customer.owner.country
      },
      metadata: {
        pay_customer_id: pay_customer.id,
        user_id: id # or pay_customer.owner_id
      }
    }
  end

  def pay_should_sync_customer?
    # super will invoke Pay's default (e-mail changed)
    super || self.saved_change_to_name?
  end

end
