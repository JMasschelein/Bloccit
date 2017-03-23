module PostsHelper
    
   def user_is_authorized_for_post?(post)
              current_user && (current_user.admin? || current_user.moderator?)
   end
   
   def update_rank
     age_in_days = (created_at - Time.new(1970,1,1)) / 1.day.seconds
     new_rank = points + age_in_days
     update_attribute(:rank, new_rank)
   end   
    
end
