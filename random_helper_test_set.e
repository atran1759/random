note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	RANDOM_HELPER_TEST_SET

inherit
	EQA_TEST_SET

feature -- Test routines

	random_test
			-- New test routine
		local
			l_root: ROOT_CLASS
			l_range: INTEGER_INTERVAL
		do
			create l_root.make
			l_range := ({INTEGER_32} 1 |..| {INTEGER_32} 100)
			assert ("in_range_1_to_100", l_range.has (l_root.random_integer_in_range (l_range).as_integer_32))
			l_range := ({INTEGER_32} 1500 |..| {INTEGER_32} 12000)
			assert ("in_range_1500_to_12000", l_range.has (l_root.random_integer_in_range (l_range).as_integer_32))
		end

end


