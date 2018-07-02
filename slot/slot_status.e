note
	description: "Summary description for {SLOT_STATUS}."
	author: "Mustafa Alsoufi and Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	SLOT_STATUS

inherit
	ANY
		redefine
			is_equal
		end

feature -- Equality
	is_equal(other: like Current): BOOLEAN
			-- Is the current slot status equal to 'other'?
		do
			Result:= current.out ~ other.out


			-- Your task.
		ensure then
			correct_result: current.out ~ other.out
				-- Your task
		end
end
