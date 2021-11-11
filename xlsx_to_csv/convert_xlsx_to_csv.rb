require 'roo'

CSV.open("./result.csv", "wb") do |csv|
    xlsx = Roo::Spreadsheet.open('./Excel Template DSG.xlsx')
    for i in 2..(xlsx.sheet(0).last_row)
        csv << xlsx.sheet(0).row(i)
    end
end