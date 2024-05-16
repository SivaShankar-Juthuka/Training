<<<<<<< HEAD
class FolderStructureManager
    def initialize
        @continue = true
    end

    def create_folder
        while @continue
            print "Enter Folder Name: "
            folder_name = gets.chomp
            print "Enter File Name: "
            file_name = gets.chomp
            print "What do you want to write in the file? - "
            file_content = gets.chomp
            # Create folder if it doesn't exist
            Dir.mkdir(folder_name) unless Dir.exist?(folder_name)
            # Write content to the file
            File.open("#{folder_name}/#{file_name}", 'w') { |file| file.write(file_content) }
            manage_files(folder_name)
        end
    end

    private
    def manage_files(folder_name)
        print "\n Do you want to continue (Y/N)?: "
        response = gets.chomp.downcase
        if response == 'y'
            print "\nDo you want to create/update/delete a given file?"
            action = gets.chomp.downcase
            if action == 'create'
                create_file(folder_name)
            elsif action == 'update'
                update_file(folder_name)
            else action == 'delete'
                delete_file(folder_name)
            end
        else
            @continue = false
        end
    end

    def create_file(folder_name)
        print "Enter File Name: "
        file_name = gets.chomp
        print "What do you want to write in the file? - "
        file_content = gets.chomp
        File.open("#{folder_name}/#{file_name}", 'w') { |file| file.write(file_content) }
        manage_files(folder_name)
    end

    def update_file(folder_name)
        print "Enter File Name: "
        file_name = gets.chomp
        print "What do you want to write in the file? - "
        file_content = gets.chomp
        File.open("#{folder_name}/#{file_name}", 'w') { |file| file.write(file_content) }
        manage_files(folder_name)
    end

    def delete_file(folder_name)
        print "Enter File Name: "
        file_name = gets.chomp
        File.delete("#{folder_name}/#{file_name}") if File.exist?("#{folder_name}/#{file_name}")
        manage_files(folder_name)
    end
end
  
manager = FolderStructureManager.new
manager.create_folder_structure
=======
class FolderStructureManager
    def initialize
        @continue = true
    end

    def create_folder_structure
        while @continue
            print "Enter Folder Name: "
            folder_name = gets.chomp
            print "Enter File Name: "
            file_name = gets.chomp
            print "What do you want to write in the file? - "
            file_content = gets.chomp
            # Create folder if it doesn't exist
            Dir.mkdir(folder_name) unless Dir.exist?(folder_name)
            # Write content to the file
            File.open("#{folder_name}/#{file_name}", 'w') { |file| file.write(file_content) }
            manage_files(folder_name)
        end
    end

    private
    def manage_files(folder_name)
        print "\n Do you want to continue (Y/N)?: "
        response = gets.chomp.downcase
        if response == 'y'
            print "\nDo you want to create/update/delete a given file?"
            action = gets.chomp.downcase
            if action == 'create'
                create_file(folder_name)
            elsif action == 'update'
                update_file(folder_name)
            else action == 'delete'
                delete_file(folder_name)
            end
        else
            @continue = false
        end
    end

    def create_file(folder_name)
        print "Enter File Name: "
        file_name = gets.chomp
        print "What do you want to write in the file? - "
        file_content = gets.chomp
        File.open("#{folder_name}/#{file_name}", 'w') { |file| file.write(file_content) }
        manage_files(folder_name)
    end

    def update_file(folder_name)
        print "Enter File Name: "
        file_name = gets.chomp
        print "What do you want to write in the file? - "
        file_content = gets.chomp
        File.open("#{folder_name}/#{file_name}", 'w') { |file| file.write(file_content) }
        manage_files(folder_name)
    end

    def delete_file(folder_name)
        print "Enter File Name: "
        file_name = gets.chomp
        File.delete("#{folder_name}/#{file_name}") if File.exist?("#{folder_name}/#{file_name}")
        manage_files(folder_name)
    end
end
  
manager = FolderStructureManager.new
manager.create_folder_structure
  
>>>>>>> 1a79a8c65d1f8d8e267d96efd118e54c2749a684
