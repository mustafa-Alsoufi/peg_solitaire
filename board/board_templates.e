note
	description: "A collection of board templates for the peg solitaire game."
	author: "Mustafa Alsoufi and Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	BOARD_TEMPLATES

create {BOARD_TEMPLATES_ACCESS}
	make

feature {BOARD_TEMPLATES_ACCESS} -- Constructor
	make
			-- Initialize an object of board template constants.
			-- Do not modify this feature!
		do
			create default_board.make_default
			create easy_board.make_easy
			create cross_board.make_cross
			create plus_board.make_plus
			create pyramid_board.make_pyramid
			create arrow_board.make_arrow
			create diamond_board.make_diamond
			create skull_board.make_skull

			default_board_out := "[
				*******
				*******
				*******
				*******
				*******
				*******
				*******
				]"

			easy_board_out := "[
				***.***
				***O***
				***O***
				***.***
				***O***
				***.***
				*******
				]"

			cross_board_out := "[
				**...**
				**.O.**
				..OOO..
				...O...
				...O...
				**...**
				**...**
				]"

			plus_board_out := "[
				**...**
				**.O.**
				...O...
				.OOOOO.
				...O...
				**.O.**
				**...**
				]"

			pyramid_board_out := "[
				**...**
				**.O.**
				..OOO..
				.OOOOO.
				OOOOOOO
				**...**
				**...**
				]"

			arrow_board_out := "[
				**.O.**
				**OOO**
				.OOOOO.
				...O...
				...O...
				**OOO**
				**OOO**
				]"

			diamond_board_out := "[
				**.O.**
				**OOO**
				.OOOOO.
				OOO.OOO
				.OOOOO.
				**OOO**
				**.O.**
				]"

			skull_board_out := "[
				**OOO**
				**OOO**
				.OOOOO.
				.O.O.O.
				.OOOOO.
				**OOO**
				**OOO**
				]"
		end

feature -- Templates
	default_board: BOARD
	easy_board: BOARD
	cross_board: BOARD
	plus_board: BOARD
	pyramid_board: BOARD
	arrow_board: BOARD
	diamond_board: BOARD
	skull_board: BOARD

feature -- Constant String Representations of Boards
	default_board_out: STRING
	easy_board_out: STRING
	cross_board_out: STRING
	plus_board_out: STRING
	pyramid_board_out: STRING
	arrow_board_out: STRING
	diamond_board_out: STRING
	skull_board_out: STRING

invariant
	correct_default_board_output: (default_board.out) ~ "[
														*******
														*******
														*******
														*******
														*******
														*******
														*******
														]"
		-- Your task.

	correct_easy_board_output: (easy_board.out) ~ "[
														***.***
														***O***
														***O***
														***.***
														***O***
														***.***
														*******
														]"
		-- Your task.

	correct_cross_board_output: (cross_board.out)~ "[
														**...**
														**.O.**
														..OOO..
														...O...
														...O...
														**...**
														**...**
														]"
		-- Your task.

	correct_plus_board_output: (plus_board.out)  ~ "[
														**...**
														**.O.**
														...O...
														.OOOOO.
														...O...
														**.O.**
														**...**
														]"
		-- Your task.

	correct_pyramid_board_output: (pyramid_board.out) ~ "[
														**...**
														**.O.**
														..OOO..
														.OOOOO.
														OOOOOOO
														**...**
														**...**
														]"
		-- Your task.

	correct_arrow_board_output: (arrow_board.out) ~ "[
														**.O.**
														**OOO**
														.OOOOO.
														...O...
														...O...
														**OOO**
														**OOO**
														]"
		-- Your task.

	correct_diamond_board_output: (diamond_board.out) ~ "[
														**.O.**
														**OOO**
														.OOOOO.
														OOO.OOO
														.OOOOO.
														**OOO**
														**.O.**
														]"
		-- Your task.

	correct_skull_board_output: (skull_board.out) ~ "[
														**OOO**
														**OOO**
														.OOOOO.
														.O.O.O.
														.OOOOO.
														**OOO**
														**OOO**
														]"
		-- Your task.

	consistent_default_board_outputs:
			default_board.out.is_equal (default_board_out)

	consistent_easy_board_outputs:
			easy_board.out.is_equal (easy_board_out)

	consistent_cross_board_outputs:
			cross_board_out.out.is_equal (cross_board_out)

	consistent_plus_board_outputs:
			plus_board_out.out.is_equal (plus_board_out)

	consistent_pyramid_board_outputs:
			pyramid_board_out.out.is_equal (pyramid_board_out)

	consistent_arrow_board_outputs:
			arrow_board_out.out.is_equal (arrow_board_out)
	consistent_diamond_board_outputs:
			diamond_board_out.out.is_equal (diamond_board_out)

	consistent_skull_board_outputs:
			skull_board_out.out.is_equal (skull_board_out)

end
