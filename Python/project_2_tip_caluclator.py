print("Welcome to the Tip Calculator!")
bill = float(input("What was the total bill? ₹\n"))
tip = float(input("Wat percentage tip would you like to give? 10, 12, or 15?\n"))
people = int(input("How many people to split the bill?\n"))
tip_as_percent = tip / 100
total_tip_amount = bill * tip_as_percent
total_amount = bill + total_tip_amount
amount_per_person = total_amount / people
final_amount = round(amount_per_person, 2)
print(f"Each person should pay: ₹{final_amount:.2f}")