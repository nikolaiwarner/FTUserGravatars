require 'digest/md5'

module UserSystem
  module Gravatar
    module UserModelMixin

      def self.included kls
        kls.validates_presence_of :email
        kls.send :before_save, :hash_email
      end

      def gravatar_url      
        "http://www.gravatar.com/avatar/#{email_md5}.jpg"
      end
    
    
      private
    
      def hash_email
        if email.blank?
          self.email_md5 = nil
        elsif (changes['email'] or email_md5.blank?)
          self.email_md5 = Digest::MD5.hexdigest(email)
        end
      end
      
    end
  end
end
