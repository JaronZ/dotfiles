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

function git-prune-local-branches --description 'prune all local git branches without remote tracking branch'
	git fetch --all --prune || return 1
	git remote set-head origin --auto || return 1

	for branch in (git for-each-ref refs/heads --format="%(refname:short)")
		if git config --get "branch.$branch.remote" > /dev/null
			if set upstream (git rev-parse --abbrev-ref "$branch@{upstream}" 2>/dev/null)
				git fetch --update-head-ok . "$upstream:$branch"
				set -e upstream
			else
				if [ "$branch" = (git branch --show-current) ]
					echo "The current branch will be deleted because it has already been merged."
					echo "You are now in detached head mode."
					git switch --detach origin/HEAD
				end
				git branch -D "$branch"
			end
		end
	end
end
