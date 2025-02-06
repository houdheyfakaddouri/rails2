class User < ApplicationRecord
    belongs_to :city
    has_many :gossips, dependent: :destroy
    has_many :sent_messages, class_name: "PrivateMessage", foreign_key: "sender_id", dependent: :destroy
    has_many :received_messages, class_name: "PrivateMessage", foreign_key: "recipient_id", dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
  end
  