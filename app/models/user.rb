class User < ApplicationRecord
    # validates :name,presence:true,uniqueness:true
    # validates :email,presence:true,uniqueness:true,confirmation: true
    #  validates: email_confirmation, presence: true
    validates :email,presence:true

    # before_create :set_name

   
    after_create :send_email_to_user
    after_commit :send_message
    after_update :after_updater
    before_save :before_saveh

    def before_saveh
        puts "defore save h"
    end
    def after_updater
        puts "update around hxxfsdf"
    end
    def set_name
        self.name = 'test test'
    end 
    
    def send_email_to_user
        puts 'send email to user'
    end   
    
    def send_message
        puts 'send message'
    end     
    # validates :email_confirmation, presence: true
    # validates :age,presence:true,uniqueness:true,length:{minimum:1,maximum:2}
    # validates :terms_of_service, acceptance: true
    # validates :age,presence:true,uniqueness:true,length:{minimum:1,maximum:2}

    # custome validation=customize karna
    # validate :display_student_name
    # private
    # def display_student_name
    #  username=User.where("username =?",username)
    #  errors.add(:username,"already taken")
    # end
    
    #call back
    # after_commit: testcallback

    # private
    # def testcallback:
    #     puts"i am call back"
    # end


    
#   before_validation :ensure_login_has_a_value
#   private
# #   def ensure_login_has_a_valu
#     def ensure_login_has_a_value
#         if login.nil?
#          puts ">>>>>>",self.login = email unless email.blank?
#         end  

#     end

end
