draw_self();

draw_set_font(fntSign);
draw_set_color(c_white);
draw_text(120, 80, "Use Parts to Upgrade your Mech.");
draw_text(120, 110, "Parts Remaining: " + string(pc.scrap));


draw_set_font(fntPlain);

//draw_set_color(c_navy);
//draw_rectangle(100, 181, 600, 230, false);
//draw_set_color(c_white);
//draw_text(110, 181, "HP (" + string(pc._mhp) + ") for " + string(upCost("hp")) + " parts");

