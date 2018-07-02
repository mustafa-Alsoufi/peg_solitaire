note
	description: "A game of peg solitaire."
	author: "Mustafa Alsoufi and Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	GAME

inherit
	ANY
		redefine
			out
		end

create
	make_from_board,
	make_easy,
	make_cross,
	make_plus,
	make_pyramid,
	make_arrow,
	make_diamond,
	make_skull

feature -- Constructors
	make_from_board (new_board: BOARD)
			-- Initialize a game with 'new_board'.
		do
			board := new_board
		ensure
			board_set: board.out ~ new_board.out
				-- Your task.
		end

	make_easy
			-- Initialize a game with easy board.
		do
			create board.make_easy
		ensure
			board_set:
				board ~ bta.templates.easy_board
		end

	make_cross
			-- Initialize a game with Cross board.
		do
			-- Your task: the current implementation
				create board.make_cross
			-- may not be correct.
		ensure
				board_set: board.out ~ bta.templates.cross_board.out
				-- Your task.
		end

	make_plus
			-- Initialize a game with Plus board.
		do

					create board.make_plus
			-- Your task: the current implementation
			-- may not be correct.
		ensure
					board_set: board ~ bta.templates.plus_board
				-- Your task.
		end

	make_pyramid
			-- Initialize a game with Pyramid board.
		do

			-- Your task: the current implementation
			create board.make_pyramid
			-- may not be correct.
		ensure
			board_set: board.out ~ bta.templates.pyramid_board.out
				-- Your task.
		end

	make_arrow
			-- Initialize a game with Arrow board.
		do
			-- Your task: the current implementation
			create board.make_arrow
			-- may not be correct.
		ensure
			board_set: board.out ~ bta.templates.arrow_board.out
				-- Your task.
		end

	make_diamond
			-- Initialize a game with Diamond board.
		do

			-- Your task: the current implementation
			create board.make_diamond
			-- may not be correct.
		ensure
			board_set: board.out ~ bta.templates.diamond_board.out
				-- Your task.
		end

	make_skull
			-- Initialize a game with Skull board.
		do
			-- Your task: the current implementation
			create board.make_skull
			-- may not be correct.
		ensure
			board_set: board.out ~ bta.templates.skull_board.out
				-- Your task.
		end

feature -- Commands
	move_left (r, c: INTEGER)
		require
			from_slot_valid_row: board.is_valid_row (r)
				-- Your task.
			from_slot_valid_column: board.is_valid_column (c)
				-- Your task.
			middle_slot_valid_column: board.is_valid_column (c-1)
				-- Your task.
			to_slot_valid_column: board.is_valid_column (c-2)
				-- Your task.
			from_slot_occupied: board.status_of (r, c).is_equal (board.occupied_slot)
				-- Your task.
			middle_slot_occupied: board.status_of (r, c-1).is_equal (board.occupied_slot)
				-- Your task.
			to_slot_unoccupied: board.status_of (r, c-2).is_equal (board.unoccupied_slot)
				-- Your task.
		do
			-- Your task.
			board.set_status (r, c, board.unoccupied_slot)
			board.set_status (r, c - 1, board.unoccupied_slot)
			board.set_status (r, c - 2, board.occupied_slot)
		ensure
			slots_properly_set: board.status_of (r, c) ~ board.unoccupied_slot and
								board.status_of (r, c - 1) ~ board.unoccupied_slot and
								board.status_of (r, c - 2) ~ board.occupied_slot
				-- Your task.
			other_slots_unchanged: board.matches_slots_except ( board, r, r, c, c -2 )
				-- Your task.
				-- Hint: Use 'matches_slots_except' feature from BOARD.
		end

	move_right (r, c: INTEGER)
		require
			from_slot_valid_row: board.is_valid_row (r)
				-- Your task.
			from_slot_valid_column: board.is_valid_column (c)
				-- Your task.
			middle_slot_valid_column: board.is_valid_column (c + 1)
				-- Your task.
			to_slot_valid_column: board.is_valid_column (c + 2)
				-- Your task.
			from_slot_occupied: board.status_of (r, c).is_equal (board.occupied_slot)
				-- Your task.
			middle_slot_occupied: board.status_of (r, c + 1).is_equal (board.occupied_slot)
				-- Your task.
			to_slot_unoccupied:  board.status_of (r, c + 2).is_equal (board.unoccupied_slot)
				-- Your task.
		do
			-- Your task.
			board.set_status (r, c, board.unoccupied_slot)
			board.set_status (r, c + 1, board.unoccupied_slot)
			board.set_status (r, c + 2, board.occupied_slot)
		ensure
			slots_properly_set: board.status_of (r, c) ~ board.unoccupied_slot and
								board.status_of (r, c + 1) ~ board.unoccupied_slot and
								board.status_of (r, c + 2) ~ board.occupied_slot
				-- Your task.
			other_slots_unchanged: board.matches_slots_except ( board, r, r, c, c +2)
				-- Your task.
				-- Hint: Use 'matches_slots_except' from BOARD.
		end

	move_up (r, c: INTEGER)
		require
			from_slot_valid_column: board.is_valid_column (c)
				-- Your task.
			from_slot_valid_row: board.is_valid_row (r)
				-- Your task.
			middle_slot_valid_row: board.is_valid_row (r - 1)
				-- Your task.
			to_slot_valid_row: board.is_valid_row (r - 2)
				-- Your task.
			from_slot_occupied: board.status_of (r, c).is_equal (board.occupied_slot)
				-- Your task.
			middle_slot_occupied: board.status_of (r - 1, c).is_equal (board.occupied_slot)
				-- Your task.
			to_slot_unoccupied: board.status_of (r - 2, c) ~ board.unoccupied_slot
				-- Your task.
		do
			-- Your task.
			board.set_status (r, c, board.unoccupied_slot)
			board.set_status (r - 2, c, board.occupied_slot)
			board.set_status (r - 1, c, board.unoccupied_slot)
		ensure
			slots_properly_set:
							board.status_of (r, c) ~ board.unoccupied_slot and
							board.status_of (r-1, c) ~ board.unoccupied_slot and
						 	board.status_of (r-2, c) ~ board.occupied_slot

				-- Your task.
			other_slots_unchanged: board.matches_slots_except ( board, r-2, r, c, c)
				-- Your task.
				-- Hint: Use 'matches_slots_except' from BOARD.
		end

	move_down (r, c: INTEGER)
		require
			from_slot_valid_column: board.is_valid_column (c)
				-- Your task.
			from_slot_valid_row: board.is_valid_row (r)
				-- Your task.
			middle_slot_valid_row: board.is_valid_row (r + 1)
				-- Your task.
			to_slot_valid_row: board.is_valid_row (r + 2)
				-- Your task.
			from_slot_occupied: board.status_of (r, c) ~ board.occupied_slot
				-- Your task.
			middle_slot_occupied: board.status_of (r + 1, c) ~ board.occupied_slot
				-- Your task.
			to_slot_unoccupied: board.status_of (r + 2, c) ~ board.unoccupied_slot
				-- Your task.
		do
			-- Your task.

			board.set_status (r, c, board.unoccupied_slot)
			board.set_status (r + 1, c, board.unoccupied_slot)
			board.set_status (r + 2, c, board.occupied_slot)

		ensure
			slots_properly_set:
							board.status_of (r, c) ~ board.unoccupied_slot and
							board.status_of (r+1, c) ~ board.unoccupied_slot and
							board.status_of (r+2, c) ~ board.occupied_slot
				-- Your task.
			other_slots_unchanged: board.matches_slots_except ( board, r, r+1, c, c)
				-- Your task.
				-- Hint: Use 'matches_slots_except' from BOARD.
		end

feature -- Status Queries
	is_over: BOOLEAN
			-- Is the current game 'over'?
			-- i.e., no further movements are possible.

		do

				-- Your task.
				-- Hint: write two nested across expressions to
				-- iterate through all slots. Each slot is identified
				-- by its row and column numbers. If there is any
				-- slot that is movable, then the result should be true.

				Result := not
				across
					1 |..| board.number_of_rows as rows
				some
					across
						1 |..| board.number_of_columns as columns

						some
							moving_peg (rows.item,columns.item)

					end

				end
				-- Typo? Shouldnt it be "If there is any
				-- slot that is movable, then the result should be true"
				-- i.e: if any slot movable, then !is_over then result = false






		ensure

			correct_result: Result = not
							across
									1 |..| board.number_of_rows as rows
								some
									across
										1 |..| board.number_of_columns as columns

										some
											moving_peg (rows.item,columns.item)
									end
							end


				-- Your task.
				-- Hint: write two nested across expressions to
				-- iterate through all slots. Each slot is identified
				-- by its row and column numbers. If there is any
				-- slot that is movable, then the result should be true.
		end

	is_won: BOOLEAN
			-- Has the current game been won?
			-- i.e., there's only one occupied slot on the board.
		do
			-- Your task.
			result := (board.number_of_occupied_slots = 1) and is_over
		ensure
			game_won_iff_one_occupied_slot_left: Result = (board.number_of_occupied_slots = 1)

				-- Your task.
				-- Hint: Use 'number_of_occupied_slots' from BOARD.
			winning_a_game_means_game_over: result implies is_over

				-- Your task.
		end

feature -- Output
	out: STRING
			-- String representation of current game.
			-- Do not modify this feature!
		do
			create Result.make_empty
			Result.append ("Game is over: " + boolean_to_yes_no (is_over) + "%N")
			Result.append ("Game is won : " + boolean_to_yes_no (is_won) + "%N")
			Result.append ("Board Status:%N")
			Result.append (board.out)
		end

feature -- checking if the peg can move left/right/up/down

	moving_peg (r,c: INTEGER): BOOLEAN
local
	up,down,left,right : BOOLEAN

	do
		-- Checking if the Peg can move UP
		if (board.is_valid_row (r - 2)) then
			up := (board.status_of (r, c) ~ board.occupied_slot and
					board.status_of (r - 2, c) ~ board.unoccupied_slot and
					board.status_of (r - 1, c) ~ board.occupied_slot)
		end
		-- Checking if the Peg can move DOWN
		if (board.is_valid_row (r + 2)) then
			down := ( board.status_of (r, c) ~ board.occupied_slot and
					board.status_of (r + 2, c) ~ board.unoccupied_slot and
					board.status_of (r + 2, c) ~ board.occupied_slot)
		end
		-- Checking if the Peg can move LEFT
		if  (board.is_valid_column (c - 2)) then
			left := (board.status_of (r, c) ~ board.occupied_slot and
					board.status_of (r, c - 2) ~ board.unoccupied_slot and
					board.status_of (r, c - 1) ~ board.occupied_slot)
		end
		-- Checking if the Peg can move RIGHT
		if (board.is_valid_column (c + 2)) then
			right := (board.status_of (r, c) ~ board.occupied_slot and
					board.status_of (r, c + 2) ~ board.unoccupied_slot and
					board.status_of (r, c + 1) ~ board.occupied_slot)
		end
		result := (up or down or left or right)
	end



feature -- Auxiliary Routines
	boolean_to_yes_no (b: BOOLEAN): STRING
			-- 'Yes' or 'No' corresponding to 'b'.
		do
			if b then
				Result := "Yes"
			else
				Result := "No"
			end
		end

feature -- Board
	bta: BOARD_TEMPLATES_ACCESS
	board: BOARD
end
