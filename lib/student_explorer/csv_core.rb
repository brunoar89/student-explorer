require 'csv'

module StudentExplorer
  class CsvCore
    def initialize(csv_file)
      @csv_file = csv_file
      @student_data = nil
      read_csv
    end

    def find_by_name(name)
      filtered_row = filter_row_by_header(:name, name)
      data = format_data(filtered_row)
      data.empty? ? nil : data.first
    end

    def find_by_email(email)
      filtered_row = filter_row_by_header(:email, email)
      data = format_data(filtered_row)
      data.empty? ? nil : data.first
    end

    def find_by_cpf(cpf)
      filtered_row = filter_row_by_header(:cpf, cpf)
      data = format_data(filtered_row)
      data.empty? ? nil : data.first
    end

    def find_by_rg(rg)
      filtered_row = filter_row_by_header(:rg, rg)
      data = format_data(filtered_row)
      data.empty? ? nil : data.first
    end

    def find_by_phone(phone)
      filtered_row = filter_row_by_header(:phone, phone)
      data = format_data(filtered_row)
      data.empty? ? nil : data.first
    end

    def find_by_coefficient(coefficient)
      filtered_row = filter_row_by_header(:coefficient, coefficient)
      format_data(filtered_row)
    end

    private
      def read_csv
        @student_data = CSV.read(@csv_file, headers: true, header_converters: :symbol)
      end

      def format_data(data)
        data.map do |student|
          {
            name:        student[:name],
            cpf:         student[:cpf],
            rg:          student[:rg],
            email:       student[:email],
            phone:       student[:phone],
            coefficient: student[:coefficient].to_i
          }
        end
      end

      def filter_row_by_header(header, q)
        filtered_row = @student_data.select do |student|
          student[header] == q
        end
      end
  end
end
