require "roo"
require "csv"

xlsx = Roo::Excelx.new('./xxx.xlsx', {:expand_merged_ranges => true})

CSV.open("file.csv", "wb") do |csv|
     xlsx.each_row_streaming(offset: 0) do |row| 
            csv << row
      end
end