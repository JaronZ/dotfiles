abbr -a -- g git

function __fish_git_aliases
	for alias_line in (git config --null --get-regexp '^alias\.' | string split0)
        	test -z "$alias_line"; and continue

		set -l parsed (string split \n $alias_line)

		if test (count $parsed) -lt 2
			continue
		end

        	set -l alias_name (string split -m1 '.' $parsed[1])[2]
        	set -l git_command $parsed[2..-1]
		
		if test -z "$alias_name" -o -z "$git_command"
			continue
		end
		
		set -l abbr_prefix "g"

		if type -q "$abbr_prefix$alias_name"
			set abbr_prefix "gg"
		end

		abbr -a -- "$abbr_prefix$alias_name" "git $git_command"
	end
end

__fish_git_aliases
functions -e __fish_git_aliases 
