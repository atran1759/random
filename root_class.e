note
	description	: "System's root class"
	date: "$Date$"
	revision: "$Revision$"

class
	ROOT_CLASS

inherit
	RANDOM_HELPER

create
	make

feature -- Initialization

	make
			-- Creation procedure.
		do
			initialize
			print_line (random_integer)
			print_line (random_integer)
			print_line (random_integer)
			print_line (random_integer)

			print_line (random_double)
			print_line (random_double)
			print_line (random_double)
			print_line (random_double)

			print_line (random_integer_in_range ({INTEGER_32} 2000 |..| {INTEGER_32} 2500))
			print_line (random_integer_in_range ({INTEGER_32} 1 |..| {INTEGER_32} 100))
			print_line (random_integer_in_range ({INTEGER_32} 5 |..| {INTEGER_32} 25))
			print_line (random_integer_in_range ({INTEGER_32} 500 |..| {INTEGER_32} 5000))

		end

feature {NONE} -- Implementation		

	print_line (a_object: ANY)
			-- Prints `a_string' followed by a new line.
		do
			print (a_object.out)
			io.new_line
		end

end -- class ROOT_CLASS
