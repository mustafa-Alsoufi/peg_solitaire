note
	description: "A board for the peg solitaire game."
	author: "Mustafa Alsoufi and Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	BOARD

inherit
	ANY
		redefine
			out, is_equal
		end

create
	make_default,
	make_easy,
	make_cross,
	make_plus,
	make_pyramid,
	make_arrow,
	make_diamond,
	make_skull


feature -- Constructor
	make_default
			-- Initialize a default board with all slots unavailable.
		do
			create imp.make_filled (unavailable_slot, 7, 7)
		ensure
			board_set: Current ~ bta.templates.default_board

			-- Your task.	
		end

	make_easy
			-- Initialize an easy board.
		do
			make_default
			set_status (1, 4, unoccupied_slot)
			set_status (4, 4, unoccupied_slot)
			set_status (6, 4, unoccupied_slot)

			set_statuses (2, 3, 4, 4, occupied_slot)
			set_status (5, 4, occupied_slot)
		ensure
			board_set:	Current ~ bta.templates.easy_board
		end

	make_cross
			-- Initialize a Cross board.
		do
			make_easy
			-- Your task: the current implementation
			create imp.make_filled (unavailable_slot, 7, 7)

			set_statuses (1,2, 3, 3, unoccupied_slot)
			set_statuses (1, 2, 5, 5, unoccupied_slot)
			set_statuses (3, 4, 1, 1, unoccupied_slot)
			set_statuses (3, 4, 2, 2, unoccupied_slot)
			set_statuses (4, 5, 3, 3, unoccupied_slot)
			set_statuses (4, 5, 5, 5, unoccupied_slot)
			set_statuses (3, 4, 6, 6, unoccupied_slot)
			set_statuses (3, 4, 7, 7, unoccupied_slot)
			set_statuses (6, 7, 3, 3, unoccupied_slot)
			set_statuses (6, 7, 4, 4, unoccupied_slot)
			set_statuses (6, 7, 5, 5, unoccupied_slot)
					set_status (1, 4, unoccupied_slot)
					set_status (5, 1, unoccupied_slot)
					set_status (5, 2, unoccupied_slot)
					set_status (5, 6, unoccupied_slot)
					set_status (5, 7, unoccupied_slot)


			set_statuses (2, 3, 4, 4, occupied_slot)
			set_statuses (4, 5, 4, 4, occupied_slot)
					set_status (3, 3, occupied_slot)
					set_status (3, 5, occupied_slot)


			-- may not be correct.
		ensure
			board_set: Current ~ bta.templates.cross_board
		end

	make_plus
			-- Initialize a Plus board.
		do

			-- Your task: the current implementation
			create imp.make_filled (unavailable_slot, 7, 7)

			set_statuses(1, 2, 3, 3, unoccupied_slot)
			set_statuses(1, 2, 5, 5, unoccupied_slot)
			set_statuses(3, 4, 1, 1, unoccupied_slot)
			set_statuses(3, 4, 7, 7, unoccupied_slot)
			set_statuses(5, 5, 1, 2, unoccupied_slot)
			set_statuses(5, 6, 3, 3, unoccupied_slot)
			set_statuses(5, 6, 5, 5, unoccupied_slot)
			set_statuses(5, 5, 6, 7, unoccupied_slot)
			set_statuses(7, 7, 3, 4, unoccupied_slot)
					set_status(1, 4, unoccupied_slot)
					set_status(3, 2, unoccupied_slot)
					set_status(3, 3, unoccupied_slot)
					set_status(3, 5, unoccupied_slot)
					set_status(3, 6, unoccupied_slot)
					set_status(7, 5, unoccupied_slot)

			set_statuses(2, 3, 4, 4, occupied_slot)
			set_statuses(4, 4, 2, 3, occupied_slot)
			set_statuses(4, 4, 4, 5, occupied_slot)
			set_statuses(5, 6, 4, 4, occupied_slot)
					set_status(4, 6, occupied_slot)

			-- may not be correct.
		ensure
			board_set: Current ~ bta.templates.plus_board
				-- Your task.
		end

	make_pyramid
			-- Initialize a Pyramid board.
		do

			create imp.make_filled (unavailable_slot, 7, 7)

			-- Your task: the current implementation

			set_statuses(1, 2, 3, 3, unoccupied_slot)
			set_statuses(1, 2, 5, 5, unoccupied_slot)
			set_statuses(3, 3, 1, 2, unoccupied_slot)
			set_statuses(6, 7, 3, 3, unoccupied_slot)
			set_statuses(6, 7, 4, 4, unoccupied_slot)
			set_statuses(6, 7, 5, 5, unoccupied_slot)
			set_status(1, 4, unoccupied_slot)
			set_status(4, 7, unoccupied_slot)
			set_status(4, 1, unoccupied_slot)
			set_status(3, 7, unoccupied_slot)
			set_status(3, 5, unoccupied_slot)
			set_status(3, 6, unoccupied_slot)

			set_statuses (4, 4, 2, 3, occupied_slot)
			set_statuses (4, 4, 4, 5, occupied_slot)
			set_statuses (4, 5, 6, 6, occupied_slot)
			set_statuses (5, 5, 1, 2, occupied_slot)
			set_statuses (5, 5, 3, 4, occupied_slot)
			set_statuses (2, 3, 4, 4, occupied_slot)
			set_status (3, 3, occupied_slot)
			set_status (3, 5, occupied_slot)
			set_status (5, 5, occupied_slot)
			set_status (5, 7, occupied_slot)



			-- may not be correct.
		ensure
			board_set: Current ~ bta.templates.pyramid_board
				-- Your task.
		end

	make_arrow
			-- Initialize a Arrow board.
		do
			create imp.make_filled (unavailable_slot, 7, 7)

			-- Your task: the current implementation
			set_statuses (4, 5, 1, 1, unoccupied_slot)
			set_statuses (4, 5, 2, 2, unoccupied_slot)
			set_statuses (4, 5, 3, 3, unoccupied_slot)
			set_statuses (4, 5, 5, 5, unoccupied_slot)
			set_statuses (4, 5, 6, 6, unoccupied_slot)
			set_statuses (4, 5, 7, 7, unoccupied_slot)
			set_status (1, 3, unoccupied_slot)
			set_status (1, 5, unoccupied_slot)
			set_status (3, 1, unoccupied_slot)
			set_status (3, 7, unoccupied_slot)

			set_statuses (1, 2, 4, 4, occupied_slot)
			set_statuses (3, 3, 2, 3, occupied_slot)
			set_statuses (3, 3, 5, 6, occupied_slot)
			set_statuses (6, 7, 3, 3, occupied_slot)
			set_statuses (6, 7, 4, 4, occupied_slot)
			set_statuses (6, 7, 5, 5, occupied_slot)
			set_statuses (3, 4, 4, 4, occupied_slot)
			set_status (2, 3, occupied_slot)
			set_status (2, 5, occupied_slot)
			set_status (5, 4, occupied_slot)



			-- may not be correct.
		ensure
			board_set: Current ~ bta.templates.arrow_board
				-- Your task.
		end

	make_diamond
			-- Initialize a Diamond board.
		do
			create imp.make_filled (unavailable_slot, 7, 7)

			-- Your task: the current implementation
			set_status (1, 3, unoccupied_slot)
			set_status (1, 5, unoccupied_slot)
			set_status (3, 1, unoccupied_slot)
			set_status (3, 7, unoccupied_slot)
			set_status (4, 4, unoccupied_slot)
			set_status (5, 1, unoccupied_slot)
			set_status (5, 7, unoccupied_slot)
			set_status (7, 3, unoccupied_slot)
			set_status (7, 5, unoccupied_slot)

			set_statuses (1, 2, 4, 4, occupied_slot)
			set_statuses (3, 3, 2, 3, occupied_slot)
			set_statuses (3, 3, 4, 5, occupied_slot)
			set_statuses (3, 4, 6, 6, occupied_slot)
			set_statuses (4, 5, 2, 2, occupied_slot)
			set_statuses (4, 5, 3, 3, occupied_slot)
			set_statuses (6, 7, 4, 4, occupied_slot)
			set_statuses (4, 5, 5, 5, occupied_slot)
			set_status (2, 3, occupied_slot)
			set_status (2, 5, occupied_slot)
			set_status (4, 1, occupied_slot)
			set_status (4, 7, occupied_slot)
			set_status (5, 4, occupied_slot)
			set_status (5, 6, occupied_slot)
			set_status (6, 3, occupied_slot)
			set_status (6, 5, occupied_slot)

			-- may not be correct.
		ensure
			board_set: Current ~ bta.templates.diamond_board
				-- Your task.
		end

	make_skull
			-- Initialize a Skull board.
		do
			create imp.make_filled (unavailable_slot, 7, 7)

			-- Your task: the current implementation
			set_statuses (4, 5, 1, 1, unoccupied_slot)
			set_statuses (4, 5, 7, 7, unoccupied_slot)
			set_status (4, 3, unoccupied_slot)
			set_status (4, 5, unoccupied_slot)
			set_status (3, 1, unoccupied_slot)
			set_status (3, 7, unoccupied_slot)

			set_statuses (1, 2, 3, 3, occupied_slot)
			set_statuses (1, 2, 4, 4, occupied_slot)
			set_statuses (1, 2, 5, 5, occupied_slot)
			set_statuses (3, 4, 2, 2, occupied_slot)
			set_statuses (3, 4, 4, 4, occupied_slot)
			set_statuses (3, 4, 6, 6, occupied_slot)
			set_statuses (5, 6, 3, 3, occupied_slot)
			set_statuses (5, 6, 4, 4, occupied_slot)
			set_statuses (5, 6, 5, 5, occupied_slot)
			set_status (3, 3, occupied_slot)
			set_status (3, 5, occupied_slot)
			set_status (5, 2, occupied_slot)
			set_status (5, 6, occupied_slot)
			set_status (7, 3, occupied_slot)
			set_status (7, 4, occupied_slot)
			set_status (7, 5, occupied_slot)


			-- may not be correct.
		ensure
			board_set: Current ~ bta.templates.skull_board
				-- Your task.
		end

feature -- Auxiliary Commands
set_status (r, c: INTEGER; status: SLOT_STATUS)
			-- Set the status of slot at row 'r' and column 'c' to 'status'.
		require
			valid_row: is_valid_row (r)
				-- Your task.
			valid_column: is_valid_column (c)
				-- Your task.
		do
			imp.item (r, c) := status
			-- Your task.
		ensure
			slot_set: imp.item (r, c)  ~ status
				-- Your task.
			slots_not_in_range_unchanged: matches_slots_except(current, r, r, c, c)
				-- Your task.
				-- Hint: Use query 'matches_slots_except'.
		end

	set_statuses (r1, r2, c1, c2: INTEGER; status: SLOT_STATUS)
			-- Set the range of slots to 'status':
			-- intersection of rows 'r1' to 'r2' and
			-- columns 'c1' to 'c2'.
		require
			valid_rows: is_valid_row (r1) and is_valid_row (r2)
				-- Your task.
			valid_columns: is_valid_column (c1) and is_valid_column (c2)
				-- Your task.
			valid_row_range: r1 <= r2
				-- Your task.
			valid_column_range: c1 <= c2
				-- Your task.
		do
			across
				r1 |..| r2 as row
			loop
				across
					c1 |..| c2 as column
				loop
					if
						(row.item >= r1 and row.item <= r2) and
						(column.item >= c1 and column.item <= c2)
					then
						imp.put (status,row.item, column.item)
				end

			end

		end
			-- Your task.
		ensure
			slots_in_range_set:
			across
				r1 |..| r1 as row
			all
				across
					c1 |..| c1 as column
				all
						(row.item >= r1 and row.item <= r2 and
							column.item >= c2 and column.item <= c2

						implies status_of(row.item, column.item) ~ status)
				end

			end
				-- Your task.
			slots_not_in_range_unchanged: matches_slots_except (current, r1, r2, c1, c2)
				-- Your task.
				-- Hint: Use query 'matches_slots_except'.
		end

feature -- Auxiliary Queries
	matches_slots_except (
		other: BOARD; r1, r2, c1, c2: INTEGER)
	: BOOLEAN
			-- Do slots outside the intersection of
			-- rows 'r1' to 'r2' and columns 'c1' and 'c2'
			-- match in Current and 'other'.
		require
			consistent_row_numbers: other.number_of_rows = current.number_of_rows
				-- Your task.
			consistent_column_numbers: other.number_of_columns = current.number_of_columns
				-- Your task.
			valid_rows: is_valid_row (r1) and is_valid_row (r2)

				-- Your task.
			valid_columns: is_valid_column (c1) and is_valid_column (c2)

				-- Your task.
			valid_row_range: r1 <= r2
				-- Your task.
			valid_column_range: c1 <= c2

			-- Your task.
		local
				i: INTEGER
				j: INTEGER
		do
			-- Your task.

			from
				i := 1
			until
				i > 7
			loop
				from
				j := 1
				until
					j > 7
				loop
					if
						i >= r1 and i <= r2
					then
						if j >= c1 and j <= c2
							then
							j := c2 + 1
						end
					end
					result:= current.status_of (i, j) ~ (other.status_of (i, j))
					j := j+1
				end
				i := i + 1
			end

		ensure
			correct_result:
				-- Your task.
				-- Hint: write two nested across expressions to
				-- iterate through all slots. Each slot is identified
				-- by its row and column numbers. If the slot location
				-- is not witin 'r1', 'r2', 'c1', and 'c2', then
				-- its value in 'Current' is equal to that in 'other'.
				result ~ across
					1 |..| 7  as m
				all
					across
						1 |..| 7  as n
					all
					 	(m.item < r1 and m.item > r2) or
						(n.item < c1 and n.item > c2)
						implies
						 other.status_of (m.item, n.item).is_equal (current.status_of (m.item, n.item))

					end

				end

		end

	unavailable_slot: UNAVAILABLE_SLOT
			-- A slot not available for movement.
		do
			Result := ssa.unavailable_slot
		ensure
			Result = ssa.unavailable_slot
		end

	occupied_slot: OCCUPIED_SLOT
			-- A slot available for moment but currently occupied.
		do
			Result := ssa.occupied_slot
		ensure
			Result = ssa.occupied_slot
		end

	unoccupied_slot: UNOCCUPIED_SLOT
			-- A slot available for moment and currently unoccupied.
		do
			Result := ssa.unoccupied_slot
		ensure
			Result = ssa.unoccupied_slot
		end

feature -- Queries
	number_of_rows: INTEGER
			-- Number of rows in the board of game.
		do
			-- Your task.
			Result:= imp.height
		ensure
			correct_result: Result = imp.height
				-- Your task.
		end

	number_of_columns: INTEGER
			-- Number of columns in the board of game.
		do
			-- Your task.
			result := imp.width
		ensure
			correct_result: result = (imp.width)
				-- Your task.
		end

	is_valid_row (r: INTEGER): BOOLEAN
			-- Is 'r' a valid row number?
		do
			-- Your task.
			result := r > 0 and r <= number_of_rows
		ensure
			correct_result: result = (r > 0 and r <= number_of_rows)
				-- Your task.
		end

	is_valid_column (c: INTEGER): BOOLEAN
			-- Is 'x' a valid column number?
		do
			-- Your task.
			result := c > 0 and c <= number_of_columns
		ensure
			correct_result:	result = (c > 0 and c <= number_of_columns)
				-- Your task.
		end

	status_of (r, c: INTEGER): SLOT_STATUS
			-- Is the slot at row 'r' and column 'c'
			-- unavailable, occupied, or unoccupied?
		require
			valid_row: is_valid_row (r)
				-- Your task.
			valid_column: is_valid_column (c)
				-- Your task.
		do
			Result := imp.item (r, c)
			-- Your task: the current implementation
			-- may not be correct.
		ensure
			correct_result: Result = imp.item (r, c)

				-- Your task.
		end

	number_of_occupied_slots: INTEGER
			-- Number of slots occupied by pegs on current board.
		do
			-- Your task.
			result := 0
			across
				1 |..| number_of_rows as i
			loop
				across
					1 |..| number_of_columns as j
				loop
					if imp.item (i.item,j.item) ~ (ssa.occupied_slot)
					 then
						result := result +1
					end

				end

			end

			-- No postcondition is needed for this auxiliary query.
		end

feature -- Equality
	is_equal (other: like Current): BOOLEAN
			-- Is current board equal to 'other'?
		do
			-- Your task.
			result:= (current.out ~ other.out)
		ensure then
			correct_result: result = (current.out ~ other.out)
				-- Your task.
		end

feature -- Output
	out: STRING
			-- String representation of current board.
local
			i, j: INTEGER
		do
			create Result.make_empty
			from
				i := 1
			until
				i > 7
			loop
				from
					j := 1
				until
					j > 7
				loop
					if imp.item (i, j) ~ occupied_slot then
						Result.append ("O")
					elseif imp.item (i, j) ~ unavailable_slot then
						Result.append ("*")
					else
						Result.append (".")
					end
					if i < number_of_rows and j = number_of_columns then
						Result.append ("%N")
					end
					j := j + 1
				end
				i := i + 1
			end
end


			-- No postcondition is needed for this query.



feature {NONE} -- Implementation

	ssa:SLOT_STATUS_ACCESS
	bta: BOARD_TEMPLATES_ACCESS

	-- Note: ARRAY2 takes row (y) and then column (x)
	imp: ARRAY2[SLOT_STATUS]
end
