require 'formula'

class TwoBWm < Formula
  homepage 'https://github.com/venam/2bwm'
  version '2013-3'
  depends_on :x11
  url('https://github.com/venam/2bwm.git',
      :using => :git,
      :revision => '52a097ca644eb571b22a135951c945fcca57a25c')

  def install
    system "make"
    bin.install '2bwm', 'hidden'
    man1.install '2bwm.man' => '2bwm.1', 'hidden.man' => 'hidden.1'
  end

  def patches
    # sets the modkey to 'option', better for apple keyboards
    # sets the terminal to urxvt
    DATA
  end

  def caveats; <<-EOS.undent
    MODKEY is 'option'
    EOS
  end

end

__END__
diff --git a/config.h b/config.h
index 6b3b6db..361d47c 100644
--- a/config.h
+++ b/config.h
@@ -13,13 +13,13 @@ static const float    resize_keep_aspect_ratio= 1.03;
 ///---Offsets---///
 /*0)offsetx          1)offsety
  *2)maxwidth         3)maxheight */
-static const uint8_t offsets[] = {0,0,0,0};
+static const uint8_t offsets[] = {22,0,44,44};
 ///---Colors---///
 /*0)focuscol         1)unfocuscol
  *2)fixedcol         3)unkilcol
  *4)fixedunkilcol    5)outerbordercol
  *6)emptycol         */
-static const char *colors[] = {"#35586c","#333333","#7a8c5c","#ff6666","#cc9933","#0d131a","#000000"};
+static const char *colors[] = {"#ff9500","#333333","#7a8c5c","#ff6666","#cc9933","#0d131a","#000000"};
 /* if this is set to true the inner border and outer borders colors will be swapped */
 static const bool inverted_colors = true;
 ///---Cursor---///
@@ -37,9 +37,9 @@ static const uint8_t borders[] = {3,5,5,4};
 #define LOOK_INTO "WM_NAME"
 static const char *ignore_names[] = {"bar", "xclock"};
 ///--Menus and Programs---///
-static const char *menucmd[]   = { "/usr/bin/my_menu.sh", NULL };
-static const char *gmrun[]     = { "/usr/bin/gmrun",NULL};
-static const char *terminal[]  = { "urxvtc", NULL };
+static const char *menucmd[]   = { "my_menu.sh", NULL };
+static const char *gmrun[]     = { "gmrun",NULL};
+static const char *terminal[]  = { "urxvt", NULL };
 static const char *click1[]    = { "xdotool","click", "1", NULL };
 static const char *click2[]    = { "xdotool","click", "2", NULL };
 static const char *click3[]    = { "xdotool","click", "3", NULL };
@@ -143,15 +143,15 @@ static key keys[] = {
     {  MOD ,              XK_comma,      changescreen,      {.i=1}},
     {  MOD ,              XK_period,     changescreen,      {.i=0}},
     // Raise or lower a window
-    {  MOD ,              XK_r,          raiseorlower,      {.i=0}},
+    //{  MOD ,              XK_r,          raiseorlower,      {.i=0}},
     // Next/Previous workspace
-    {  MOD ,              XK_v,          nextworkspace,     {.i=0}},
-    {  MOD ,              XK_c,          prevworkspace,     {.i=0}},
-    // Move to Next/Previous workspace
-    {  MOD |SHIFT ,       XK_v,          sendtonextworkspace,{.i=0}},
-    {  MOD |SHIFT ,       XK_c,          sendtoprevworkspace,{.i=0}},
+    //{  MOD ,              XK_v,          nextworkspace,     {.i=0}},
+    //{  MOD ,              XK_c,          prevworkspace,     {.i=0}},
+    //// Move to Next/Previous workspace
+    //{  MOD |SHIFT ,       XK_v,          sendtonextworkspace,{.i=0}},
+    //{  MOD |SHIFT ,       XK_c,          sendtoprevworkspace,{.i=0}},
     // Iconify the window
-    {  MOD ,              XK_i,          hide,              {.i=0}},
+    //{  MOD ,              XK_i,          hide,              {.i=0}},
     // Make the window unkillable
     {  MOD ,              XK_a,          unkillable,        {.i=0}},
     // Make the window appear always on top

