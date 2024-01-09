def start
    puts "Welcome to Task Manager"

puts "New User press 1 OLD use press 2.............."


u= gets.chomp.to_i


if u==1
    puts "Before you start, first of all input your information..........."


    puts "plz enter your name:"
    name = gets.chomp

    puts "plz enter your catagories:............."

    puts "Work press 1\nexam press 2\nHobbies press 3"

    cat = gets.chomp

    puts "Plz enter the date"

    date = gets.chomp

    filename = name+"-"+cat+"-"+"("+date+").txt"

    uname = name+".txt"

    userAdd = open("users.txt",'a')

    userAdd.write(uname+" ")

    userAdd.close


    userDates = name+cat+"userDate.txt"

    userdate = open(userDates,'w')

    userdate.write(date+"\n")

    userdate.close



    

    puts "add your task on #{filename}........."


    line = gets.chomp


    target = open(filename,'w')


    target.write(line+"\n")

    target.close


    puts "your first Task is added successfully!!!!!"


    puts "plz enter 1 to continue or any key to exit"

    c = gets.chomp.to_i

    if c ==1 
        start
    else puts "Thank u"
    end
    



   

else 
    puts "See the task press 1 or delete press 2 or add the new task press 3"
    u = gets.chomp.to_i  
    if u==1
        puts "enter your name:........"
        name = gets.chomp
        puts "Work press 1\nexam press 2\nHobbies press 3"

        cat = gets.chomp

        uname = name+".txt"

        users = "users.txt"

        usersContant = open(users,'r')

        alluser = usersContant.read


        usersContant.close

        if alluser.include?(uname)
         date_array = []

         datefile = name+cat+"userDate.txt"


         File.foreach(datefile) do |line|
            # Assuming each line contains a date
            date_array << line.chomp
         end


         puts "heres the dates available are:"

         date_array.each {
            |i| puts i
         }


         puts "Plz enter the date"

         date = gets.chomp
       
         uname = name+".txt"

         users = "users.txt"

         usersContant = open(users,'r')

         alluser = usersContant.read


         usersContant.close


        

            userfile = name+"-"+cat+"-"+"("+date+").txt"

            taskfile=open(userfile,'r')

            task = taskfile.read

            puts task

            taskfile.close


          
        

        else puts "invalid name"
        end


        puts "plz enter 1 to continue or any key to exit"

        c = gets.chomp.to_i

        if c ==1 
           start
        else puts "Thank u"
        end



    elsif u==2



        puts "enter your name:........"
        name = gets.chomp
        puts "Work press 1\nexam press 2\nHobbies press 3"

        cat = gets.chomp


        date_array = []

        datefile = name+cat+"userDate.txt"


        File.foreach(datefile) do |line|
            # Assuming each line contains a date
            date_array << line.chomp
        end


        puts "heres the dates available are:"

        date_array.each {
            |i| puts i
        }


        puts "Plz enter the date"

        date = gets.chomp

        uname = name+".txt"

        users = "users.txt"

        usersContant = open(users,'r')

        alluser = usersContant.read


        usersContant.close


        if alluser.include?(uname)

            userfile = name+"-"+cat+"-"+"("+date+").txt"

            begin
                File.delete(userfile)
                puts "File '#{userfile}' deleted successfully."
              rescue => e
                puts "Error deleting file: #{e.message}"
            end



            dateLinesfile = name+cat+"userDate.txt"

            datelines = File.readlines(dateLinesfile)

            index_to_delete = datelines.find_index { |line| line.include?(date) }

            if index_to_delete
                # Delete the line from the array
                datelines.delete_at(index_to_delete)
            
                # Write the modified lines back to the file
                File.open(dateLinesfile, 'w') do |file|
                  file.puts datelines
                end


                puts "plz enter 1 to continue or any key to exit"

                c = gets.chomp.to_i

               if c ==1 
               start
               else "Thank u"
               end

            else puts "invalid Name"
            end



        end

       



    





    elsif u==3 
        puts "enter your name:........"
        name = gets.chomp
        puts "Work press 1\nexam press 2\nHobbies press 3"

        cat = gets.chomp
        puts "Plz enter the date"

        date = gets.chomp
        userfile = name+"-"+cat+"-"+"("+date+").txt"
        uname = name+".txt"


        users = "users.txt"

        usersContant = open(users,'r')

        alluser = usersContant.read


        usersContant.close

        if alluser.include?(uname)

            taskfile_again=open(userfile,'a')
            puts "add your task............"
            line = gets.chomp


            task = taskfile_again.write(line+"\n")

            puts "task is added successfully!!"

            taskfile_again.close


            userDates = name+cat+"userDate.txt"

            userdate = open(userDates,'a')

            userdate.write(date+"\n")

            userdate.close
        
            puts "plz enter 1 to continue or any key to exit"

            c = gets.chomp.to_i

            if c ==1 
               start
            else "Thank u"
            end
        else 
            puts "invalid name"

            puts "plz enter 1 to continue or any key to exit"

            c = gets.chomp.to_i

            if c ==1 
            start
            else puts "Thank u"
            end
    
        end

    else puts "Comming soon.............."
        puts "plz enter 1 to continue or any key to exit"

        c = gets.chomp.to_i

        if c ==1 
        start
        else puts "Thank u"
        end
  
    end
end

end










start





