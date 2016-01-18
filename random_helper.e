note
	description	: "System's root class"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	RANDOM_HELPER

feature {NONE} -- Implementation		

	random_sequence: RANDOM
			-- Random sequence

feature -- Initialization

	initialize
			-- Creation procedure.
		local

			l_time: TIME
			l_seed: INTEGER
		do
			create l_time.make_now
			l_seed := l_time.hour
			l_seed := l_seed * 60 + l_time.minute
			l_seed := l_seed * 60 + l_time.second
			l_seed := l_seed * 1000 + l_time.milli_second
			create random_sequence.set_seed (l_seed)
		end
feature -- Access

	random_integer: INTEGER
			-- Random integer.
		do
			random_sequence.forth
			Result := random_sequence.item
		end

	random_double: DOUBLE
			-- Random integer.
		do
			random_sequence.forth
			Result := random_sequence.double_item
		end

	random_integer_in_range (a_range: INTEGER_INTERVAL): INTEGER_64
		do
			
			Result := random_real_in_range (a_range).truncated_to_integer_64
		end

	random_real_in_range (a_range: INTEGER_INTERVAL): REAL_64
			-- A `random_integer_in_range' `a_range'.
		do
			check attached random_sequence.double_item as al_percent then
				Result := ((a_range.upper - a_range.lower) * al_percent) + a_range.lower
			end
		end

invariant
	random_sequence_attached: random_sequence /= Void

end -- class RANDOM_NUMBERS
