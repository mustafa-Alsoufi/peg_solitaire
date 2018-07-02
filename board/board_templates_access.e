note
	description: "Singleton access to board templates."
	author: "Mustafa Alsoufi and Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

expanded class
	BOARD_TEMPLATES_ACCESS

feature -- Access to board templates
	templates: BOARD_TEMPLATES
		once
			-- I changed "DO" To "once" because it's Singleton
			-- Your task: the current implementation
			-- may not be correct.
			create Result.make
		end

invariant
	singleton_templates:
		-- Your task.
		templates = templates

end
