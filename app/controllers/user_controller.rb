class UserController < ApplicationController
  #下記2点いつかはは使うと思う
  has_many :prototypes #prototypes テーブルとのアソシエーション
  #has_many :comment #comments テーブルとのアソシエーション
end
