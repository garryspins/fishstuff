# Variables
set -U TERMINAL konsole
set -U EDITOR nvim
set    TERMCOL '1E2229'

# Prompt
function fish_prompt
	##echo (set_color $TERMCOL)(set_color -b '#3E4249') 👌😂 (set_color '#3E4249')(set_color -b '#282923') (set_color '#8127C0')O(set_color '#00A2FE')R(set_color '#00BB00')I(set_color '#FEF601')O(set_color '#D00')N(set_color '#282923') (set_color -b '#3E4249')(set_color '#1DB954')(set_color -b '#3E4249') (prompt_pwd) (set_color  -b 'normal')(set_color '#3E4249') (set_color 'normal')
	#echo -e (set_color $TERMCOL)(set_color -b '#3E4249') 👌😂 (set_color '#3E4249')(set_color -b $TERMCOL)(set_color $TERMCOL)(set_color -b '#1ABC9') (set_color '#8127C0')O(set_color '#00A2FE')R(set_color '#00BB00')I(set_color '#FEF601')O(set_color '#D00')N(set_color '#1ABC9') (set_color -b $TERMCOL)(set_color $TERMCOL)(set_color -b "3E4249") (prompt_pwd) (set_color -b 'normal')(set_color "3E4249") (set_color "normal") 
	echo (set_color '#3E4249')'┌['(set_color "normal")(prompt_pwd)(set_color '#3E4249')']'(set_color "normal") '|' (set_color '#3E4249')'['(set_color '#8127C0')O(set_color '#00A2FE')R(set_color '#00BB00')I(set_color '#FEF601')O(set_color '#D00')N(set_color '#282923')(set_color '#3E4249')']'
	echo (set_color '#3E4249')'└]> '(set_color "normal")
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