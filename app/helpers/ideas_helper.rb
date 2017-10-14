module IdeasHelper
  def net_score(idea)
    idea.get_upvotes.size - idea.get_downvotes.size
  end
end
