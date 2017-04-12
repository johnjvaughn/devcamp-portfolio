module TopicsHelper
  
  def topic_title_helper(blog)
    Topic.find(blog.topic_id).title if (blog.topic_id)
  end
  
end
