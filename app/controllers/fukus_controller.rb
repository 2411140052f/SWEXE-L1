class FukusController < ApplicationController
  # ① 一覧表示 (index)
  def index
    @fukus = Fuku.all
  end

  # ② 詳細表示 (show)
  def show
    @fuku = Fuku.find(params[:id])
  end

  # ③ 新規作成フォーム (new)
  def new
    @fuku = Fuku.new
  end

  # ④ データ登録処理 (create)
  def create
    @fuku = Fuku.new(fuku_params)
    if @fuku.save
      redirect_to fukus_path, notice: "服を登録しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # ⑤ 編集フォーム (edit)
  def edit
    @fuku = Fuku.find(params[:id])
  end

  # ⑥ データ更新処理 (update)
  def update
    @fuku = Fuku.find(params[:id])
    if @fuku.update(fuku_params)
      redirect_to fukus_path, notice: "服を更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # ⑦ データ削除処理 (destroy)
  def destroy
    @fuku = Fuku.find(params[:id])
    @fuku.destroy
    redirect_to fukus_path
  end

  private
  
  # セキュリティのためのストロングパラメーター
  def fuku_params
    params.require(:fuku).permit(:name, :price, :url)
  end
end