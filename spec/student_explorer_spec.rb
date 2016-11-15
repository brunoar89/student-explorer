require 'spec_helper'

describe StudentExplorer do
  student1 = {
    name:        'Enrico Pedro Henrique Moura',
    cpf:         '347.651.835-30',
    rg:          '31.393.753-9',
    email:       'enrico-pedro79@randstad.com.br',
    phone:       '(61) 9845-0738',
    coefficient: 60
  }

  student2 = {
    name:        "Nicole Rebeca Gomes",
    cpf:         "614.627.931-50",
    rg:          "22.613.370-9",
    email:       "nicole_rebeca@artelazer.com",
    phone:       "(98) 99343-6597",
    coefficient: 60
  }

  it 'has a version number' do
    expect(StudentExplorer::VERSION).not_to be nil
  end

  it 'finds a student by name' do
    student_found =  StudentExplorer.find_by_name('students.csv', 'Enrico Pedro Henrique Moura')
    expect(student_found).to eq(student1)
  end

  it 'finds a student by email' do
    student_found =  StudentExplorer.find_by_email('students.csv', 'enrico-pedro79@randstad.com.br')
    expect(student_found).to eq(student1)
  end

  it 'finds a student by cpf' do
    student_found =  StudentExplorer.find_by_cpf('students.csv', '347.651.835-30')
    expect(student_found).to eq(student1)
  end

  it 'finds a student by rg' do
    student_found =  StudentExplorer.find_by_rg('students.csv', '31.393.753-9')
    expect(student_found).to eq(student1)
  end

  it 'finds a student by phone' do
    student_found =  StudentExplorer.find_by_phone('students.csv', '(61) 9845-0738')
    expect(student_found).to eq(student1)
  end

  it 'finds a students by coefficient' do
    student_found =  StudentExplorer.find_by_coefficient('students.csv', '60')
    expect(student_found).to eq([student1, student2])
  end
end
