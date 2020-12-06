class TodolistsController < ApplicationController

  #空のモデルを作成 投稿フォーム(form_with)と関連させている
  def new
    @list = List.new
  end

  #データを登録するための処理
  def create
    #データを新規登録するためのインスタンスを生成
    #list_paramsが呼び出される　※下に定義されている
    list = List.new(list_params)
    list.save
    #新規投稿後のリダイレクト先
    redirect_to todolist_path(list.id)
  end

  #投稿一覧　allメソッドで全てのデータを取り出す　インスタンス変数は複数形
  def index
    @lists = List.all
  end

  #URL内のidをparams[:id]で受け取る
  def show
    @list = List.find(params[:id])
  end

  #データを編集するために、.findメソッドで保存されたデータを取り出す必要がある
  def edit
    @list = List.find(params[:id])
  end

def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
end

  #privateより下はコントローラ内の中でしか呼び出せない
  private
  #privateよりも下に記載されたlist_paramsはアクションとして認識されない
  def list_params
    params.require(:list).permit(:title,:body)
  end
end