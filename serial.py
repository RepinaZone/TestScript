import sys

def input_text():
	count=0
	res=""

	print('Please input serial number of the server :       ')

	serial_num=input()
	for serial in serial_num:
		count+=1
		res+=serial
		if count==2 or count==6:
			res+="-"
#	print("Result: ", res)
#	print("Lenght: ", len(res))
	if len(res)==13:
		file = open("result.txt","a+")
		file.write(str(res.upper()))
		file.close()
	elif len(res)<13:
		print("ATTENTION: Too short string!")
		input_text()
	else:
		print("ATTENTION: Too long string!")
		input_text()


input_text()
