switch (button) {
    case buttons.attack:
        // code here
		show_debug_message("attacking");
        break;
    case buttons.heal:
        // code here
		show_debug_message("healing");
        break;
    case buttons.escape:
        // code here
		show_debug_message("escaping");
        break;
    case buttons.item:
        // code here
		show_debug_message("item menu");
		global.itemMenuActive = true;
        break;
    default:
        // code here
        break;
}