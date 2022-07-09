import csv

headers = []
data = []

with open("employees.csv") as infile:
	print("Reading file")
	csvreader = csv.reader(infile)
	headers = next(csvreader)
	for line in csvreader:
		data.append(line)

mdy_to_dmy = lambda x: '/'.join([x.split('/')[1], x.split('/')[0], x.split('/')[2]])
print("Processing data")
modified_data = list(map(lambda x: [x[0], x[1], mdy_to_dmy(x[2]), x[3], x[4], x[5], mdy_to_dmy(x[6])], data))

with open("employees_modified.csv", "w") as outfile:
	print("Printing to file")
	csvreader = csv.writer(outfile)
	csvreader.writerow(headers)
	csvreader.writerows(modified_data)
