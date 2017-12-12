#HOSPITAL

class Hospital
  def initialize
    @hospital_name = "Misty River Hospital"
    @location = "Vancouver, BA"
    @doctor = Doctor.new
    @nurse = Nurse.new
    @patients = Patients.new
  end

  def authentication
    puts "Welcome to #{@hospital_name}, #{@location}"
    puts "Please enter username"
    input1 = gets.chomp
    puts "Please enter password"
    input2 = gets.chomp
    if input1 == "Doctor" && input2 == "543210"
      @doctor.options
    elsif input1 == "Nurse" && input2 == "567890"
      @nurse.options
    elsif input1 == "Patient" && input2 == "012345"
      @patients.options
    else
      puts "Wrong information submitted"
    end
  end

  @@patients = ["Jack", "Jill", "James"]

end

#EMPLOYEES

class Employees < Hospital
  def initialize(username, password)
    @username = username
    @password = password
  end
end

#DOCTOR

class Doctor < Employees
  attr_accessor :patients

  def initialize
    @username = "Doctor"
    @password = "543210"
  end

  def options
    puts "Enter 1 for Patient Records"
    puts "Enter 2 to add patient"
    puts "Enter 3 to delete patient"
    input = gets.chomp.to_i
    if input == 1
      patient_records
    elsif input == 2
      add_patient
    elsif input == 3
      delete_patient
    else
      puts "Command not recognised"
    end
  end

  def patient_records
    puts "Patients in system: #{@@patients}"
  end

  def add_patient
    patient_records

    puts "Please enter name of patient"
    input = gets.chomp
    @@patients << input
    puts "New list of patients: #{@@patients}"
  end

  def delete_patient
    patient_records

    puts "Please enter name of patient"
    input = gets.chomp
    @@patients.delete(input)
    puts "New patient list: #{@@patients}"
  end

end

#NURSE

class Nurse < Employees
  attr_reader :patients

  def initialize
    @username = "Nurse"
    @password = "567890"
  end

  def options
    puts "Press 1 for patient list"
    input = gets.chomp.to_i
    if input == 1
      patient_list
    else
      puts "Invalid command"
    end
  end

  def patient_list
    puts "Patient list: #{@@patients}"
  end
end

#PATIENTS

class Patients < Hospital

  def initialize
    @username = "Patient"
    @password = "012345"
  end

  def options
    puts "Press 1 for nurse"
    puts "Press 2 for food"
    input = gets.chomp.to_i
    if input == 1
      nurse
    elsif input == 2
      food_request
    else
      puts "Whoops, not a valid request!"
    end
  end

  def nurse
    puts "How may I help you?"
  end

  def food_request
    puts "Please refer to your in-room menu for more options"
  end
end

hospi = Hospital.new
hospi.authentication
