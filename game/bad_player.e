note
	description: "A bad player who loses many solitaire games."
	author: "Mustafa Alsoufi and Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_PLAYER

inherit
	PLAYER

create
	make

feature -- Commands
	loses_easy_board
			-- Lose a cross board.
		require
			current_game_is_easy: game.board.is_equal (templates.easy_board)
				-- Your task.
		local
			assertion: BOOLEAN
		do
			assertion := game.out ~ "[
			Game is over: No
			Game is won : No
			Board Status:
			***.***
			***O***
			***O***
			***.***
			***O***
			***.***
			*******
			]"
			check assertion end

			game.move_up (3, 4)
			assertion := game.out ~ "[
			Game is over: Yes
			Game is won : No
			Board Status:
			***O***
			***.***
			***.***
			***.***
			***O***
			***.***
			*******
			]"
			check assertion end
		ensure
			finished_and_lost_game:  game.is_over = true and game.is_won = False
				-- Your task.
		end

	loses_pyramid_game
		require
			current_game_is_pyramid:  game.board ~ templates.pyramid_board
				-- Your task.
		local
			assertion: BOOLEAN
		do
			-- Your task.
		assertion := game.out ~ "[
		Game is over: No
		Game is won: No
		Board Status:
		**...**
		**.O.**
		..OOO..
		.OOOOO.
		OOOOOOO
		**...**
		**...**
		]"

		check assertion  end
		game.move_up (3, 4)
		assertion := game.out ~ "[
		Game is over: No
		Game is won: No
		Board Status:
		**.O.**
		**...**
		..O.O..
		.OOOOO.
		OOOOOOO
		**...**
		**...**
		]"
		check assertion  end

		game.move_up (4, 5)
		assertion := game.out ~ "[
		Game is over: No
		Game is won: No
		Board Status:
		**.O.**
		**..O**
		..O....
		.OOO.O.
		OOOOOOO
		**...**
		**...**
		]"

		check assertion  end
		game.move_up (4, 3)
		assertion := game.out ~ "[
		Game is over: No
		Game is won: No
		Board Status:
		**.O.**
		**O.O**
		.......
		.O.O.O.
		OOOOOOO
		**...**
		**...**
		]"

		check assertion  end
		game.move_up (5, 4)
		assertion := game.out ~ "[
		Game is over: No
		Game is won: No
		Board Status:
		**.O.**
		**O.O**
		...O...
		.O...O.
		OOO.OOO
		**...**
		**...**
		]"
		check assertion  end
		game.move_up (5, 2)
		assertion := game.out ~ "[
		Game is over: No
		Game is won: No
		Board Status:
		**.O.**
		**O.O**
		.O.O...
		.....O.
		O.O.OOO
		**...**
		**...**
		]"

		check assertion  end
		game.move_up (5, 6)
		assertion := game.out ~ "[
		Game is over: Yes
		Game is won: No
		Board Status:
		**.O.**
		**O.O**
		.O.O.O.
		.......
		O.O.O.O
		**...**
		**...**
		]"

		check assertion end

		ensure
			finished_and_lost_game: game.is_over = True and game.is_won = False
				-- Your task.
		end

	loses_arrow_game
		require
			current_game_is_arrow: game.board ~ templates.arrow_board			-- Your task


		local
			assertion: BOOLEAN
		do

		-- Your task.

		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**.O.**
									**OOO**
									.OOOOO.
									...O...
									...O...
									**OOO**
									**OOO**
									]"
		check assertion end
		game.move_up (3, 3)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OO.**
									**.OO**
									.O.OOO.
									...O...
										...O...
									**OOO**
									**OOO**
									]"
		check assertion end
		game.move_up (3, 5)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									...O...
									...O...
									**OOO**
									**OOO**
									]"
		check assertion end
		game.move_up (7, 5)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									...O...
									...OO..
									**OO.**
									**OO.**
									]"
		check assertion end
		game.move_up (7, 3)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									...O...
									..OOO..
									**.O.**
									**.O.**
									]"
		check assertion end
		game.move_left (5, 4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									...O...
									.O..O..
									**.O.**
									**.O.**
									]"
		check assertion end
		game.move_down (3, 4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O...O.
									.......
									.O.OO..
									**.O.**
									**.O.**
									]"
		check assertion end
		game.move_right (5, 4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O...O.
									.......
									.O...O.
									**.O.**
									**.O.**
									]"
		check assertion end
		game.move_down (1, 4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**O.O**
									**...**
									.O.O.O.
									.......
									.O...O.
									**.O.**
									**.O.**
									]"
		check assertion end
		game.move_up (7, 4)
		assertion := game.out ~ "[
									Game is over: Yes
									Game is won : No
									Board Status:
									**O.O**
									**...**
									.O.O.O.
									.......
									.O.O.O.
									**...**
									**...**
									]"
		check assertion end

		ensure
			finished_and_lost_game:  game.is_over = True and game.is_won = False
				-- Your task.
		end

	loses_diamond_game
		require
			current_game_is_diamond:
								  game.out ~ "[
												Game is over: No
												Game is won : No
												Board Status:
												**.O.**
												**OOO**
												.OOOOO.
												OOO.OOO
												.OOOOO.
												**OOO**
												**.O.**
												]"
				-- Your task.
		local
			assertion: BOOLEAN
		do
			-- Your task.
						assertion := game.out ~ "[
											Game is over: No
											Game is won : No
											Board Status:
											**.O.**
											**OOO**
											.OOOOO.
											OOO.OOO
											.OOOOO.
											**OOO**
											**.O.**
											]"
		check assertion end
		game.move_up (3, 3)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OO.**
									**.OO**
									.O.OOO.
									OOO.OOO
									.OOOOO.
									**OOO**
									**.O.**
									]"
	check assertion end
		game.move_up (3, 5)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									OOO.OOO
									.OOOOO.
									**OOO**
									**.O.**
									]"
	check assertion end
		game.move_down (5, 3)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									OOO.OOO
									.O.OOO.
									**.OO**
									**OO.**
									]"
	check assertion end
		game.move_down (5, 5)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									OOO.OOO
									.O.O.O.
									**.O.**
									**OOO**
									]"
	check assertion end
		game.move_right (4, 2)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O..OOOO
									.O.O.O.
									**.O.**
									**OOO**
									]"
	check assertion end
		game.move_left (4, 5)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O.O..OO
									.O.O.O.
									**.O.**
									**OOO**
									]"
	check assertion end
		game.move_left (4, 7)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O.O.O..
									.O.O.O.
									**.O.**
									**OOO**
									]"
	check assertion end
		game.move_up (6, 4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O.OOO..
									.O...O.
									**...**
									**OOO**
									]"
	check assertion end
		game.move_right (4, 4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O.O..O.
									.O...O.
									**...**
									**OOO**
									]"
	check assertion end
		game.move_down (2, 4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**...**
									.O...O.
									O.OO.O.
									.O...O.
									**...**
									**OOO**
									]"
	check assertion end
		game.move_right (4, 3)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**...**
									.O...O.
									O...OO.
									.O...O.
									**...**
									**OOO**
									]"
	check assertion end
		game.move_left (4, 6)
		assertion := game.out ~ "[
									Game is over: Yes
									Game is won : No
									Board Status:
									**OOO**
									**...**
									.O...O.
									O..O...
									.O...O.
									**...**
									**OOO**
									]"
		check assertion end
		ensure
			finished_and_lost_game:  game.is_over = True and game.is_won = False
				-- Your task.
		end

	loses_skull_game
		require
			current_game_is_skull:  game.out ~ "[
												Game is over: No
												Game is won : No
												Board Status:
												**OOO**
												**OOO**
												.OOOOO.
												.O.O.O.
												.OOOOO.
												**OOO**
												**OOO**
												]"
				-- Your task.
		local
			assertion: BOOLEAN
		do
			-- Your task.
				assertion := game.out ~ "[
										Game is over: No
										Game is won : No
										Board Status:
										**OOO**
										**OOO**
										.OOOOO.
										.O.O.O.
										.OOOOO.
										**OOO**
										**OOO**
										]"
		check assertion end
		game.move_down (2,3)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.OO**
									.O.OOO.
									.OOO.O.
									.OOOOO.
									**OOO**
									**OOO**
									]"
		check assertion end
		game.move_down (2,5)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									.OOOOO.
									.OOOOO.
									**OOO**
									**OOO**
									]"
		check assertion end
		game.move_right (4,5)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									.OOO..O
									.OOOOO.
									**OOO**
									**OOO**
									]"
		check assertion end
		game.move_left (4,3)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O..O..O
									.OOOOO.
									**OOO**
									**OOO**
									]"
		check assertion end
		game.move_up (6,3)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O.OO..O
									.O.OOO.
									**.OO**
									**OOO**
									]"
		check assertion end
		game.move_up (6,5)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O.OOO.O
									.O.O.O.
									**.O.**
									**OOO**
									]"
		check assertion end
		game.move_right (4,4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O.O..OO
									.O.O.O.
									**.O.**
									**OOO**
									]"
		check assertion end
		game.move_left (4,7)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**.O.**
									.O.O.O.
									O.O.O..
									.O.O.O.
									**.O.**
									**OOO**
									]"
		check assertion end
		game.move_down (2,4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**...**
									.O...O.
									O.OOO..
									.O.O.O.
									**.O.**
									**OOO**
									]"
		check assertion end
		game.move_up (5,4)
		assertion := game.out ~ "[
									Game is over: No
									Game is won : No
									Board Status:
									**OOO**
									**...**
									.O.O.O.
									O.O.O..
									.O...O.
									**.O.**
									**OOO**
									]"
		check assertion end
		game.move_up (7,4)
		assertion := game.out ~ "[
									Game is over: Yes
									Game is won : No
									Board Status:
									**OOO**
									**...**
									.O.O.O.
									O.O.O..
									.O.O.O.
									**...**
									**O.O**
									]"
		check assertion end
		ensure
			finished_and_lost_game:  game.is_over = True and game.is_won = False
				-- Your task.
		end
end
