namespace :ft do
  namespace :plugin do
    namespace :ftusergravatars do   
 
      desc 'runs after downloading plugin'
      task :post_install do
      
      end

      desc 'runs prior to restart after enabling'
      task :post_enable do
      
        Rake::Task["ftusergravatars:migrate"].invoke      

      end

      desc 'runs prior to restart after disabling'
      task :post_disable do
      
      end

      desc 'runs prior to restart after uninstalling'
      task :post_uninstall do
      
      end  

    end
  end
end
