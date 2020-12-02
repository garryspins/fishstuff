# Variables
set -U TERMINAL tilix
set -U EDITOR nvim
set    TERMCOL '1E2229'

# Prompt
function fish_prompt
echo (set_color '#989898')'┌['(set_color "normal")(prompt_pwd)(set_color '#989898')']'(set_color "normal") '|' (set_color '#989898')'['(set_color '#77eaea')JACOB(set_color '#989898')']'
	echo (set_color '#989898')'└]> '(set_color "normal")
end

# Abbrs
abbr p 'sudo pacman -S'
abbr a 'pacaur -S'
abbr f 'fish'
abbr v $EDITOR
abbr t $TERMINAL

# Path
set PATH $PATH ~/.scripts

# Starting Ascii Art
function ascii_art
	curl https://raw.githubusercontent.com/garryspins/ASCII-Art-Splash-Screen-Fish/master/art/(shuf -i 1-10 | head -1).txt
end

ascii_art
