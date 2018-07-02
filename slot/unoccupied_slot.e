note
	description: "A slot in a peg solitaire board that is not occupied by a peg."
	author: "Mustafa Alsoufi and Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	UNOCCUPIED_SLOT

inherit
	AVAILABLE_SLOT
		redefine
			out
		end

create {SLOT_STATUS_ACCESS}
	make

feature {SLOT_STATUS_ACCESS} -- Constructor
	make
		do
			-- Initialize an occupied slot object.
		end

feature -- Output
	out: STRING
			-- String representation of current slot.
		do
			create Result.make_empty
			-- Your task: the current implementation
			result := "."
			-- may not be correct.
		ensure then
			correct_result: result.is_equal (".")
				-- Your task.
		end
end
