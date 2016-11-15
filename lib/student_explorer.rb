require "student_explorer/version"
require "student_explorer/csv_core"

module StudentExplorer
  def self.find_by_name(csv_file, name)
    StudentExplorer::CsvCore.new(csv_file).find_by_name(name)
  end

  def self.find_by_email(csv_file, email)
    StudentExplorer::CsvCore.new(csv_file).find_by_email(email)
  end

  def self.find_by_cpf(csv_file, cpf)
    StudentExplorer::CsvCore.new(csv_file).find_by_cpf(cpf)
  end

  def self.find_by_rg(csv_file, rg)
    StudentExplorer::CsvCore.new(csv_file).find_by_rg(rg)
  end

  def self.find_by_phone(csv_file, phone)
    StudentExplorer::CsvCore.new(csv_file).find_by_phone(phone)
  end

  def self.find_by_coefficient(csv_file, coefficient)
    StudentExplorer::CsvCore.new(csv_file).find_by_coefficient(coefficient)
  end
end
