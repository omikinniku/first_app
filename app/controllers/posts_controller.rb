class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.all  # すべてのレコードを@postsに代入
  end

  def new
  end
  # 新規投稿ページで入力フォームを表示させるだけで、データの表示は行わない
  # そのためfindやallはいらない

  def create
    Post.create(content: params[:content])
  end
end
