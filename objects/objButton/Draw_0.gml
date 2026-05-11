draw_self();

switch (button) {
    case buttons.attack:
        // code here
		text = "Attack"
        break;
    case buttons.heal:
        // code here
		text = "Heal";
        break;
    case buttons.escape:
        // code here
		text = "Escape";
        break;
    case buttons.restart:
        // code here
		text = "Restart";
        break;
    default:
        // code here
        break;
}

writeToGui(x+self.sprite_width/2,y+self.sprite_height/4,text, c_black, false);