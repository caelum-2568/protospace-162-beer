class UserController < ApplicationController
  has_many :prototype #prototypes テーブルとのアソシエーション
  has_many :comment #comments テーブルとのアソシエーション
end
