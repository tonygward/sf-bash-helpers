grep '@isTest' --include="*.cls" --recursive --ignore-case --files-with-matches | xargs -L 1 basename | cut -d '.' -f 1 | sed -z 's/\n/,/g'