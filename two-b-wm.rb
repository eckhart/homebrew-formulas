require 'formula'

class TwoBWm < Formula
  homepage 'https://github.com/venam/2bwm'
  version '2013-3'
  depends_on :x11
  url('https://github.com/venam/2bwm.git',
      :using => :git,
      :revision => '10faff5aea10a7838733cefd766a1660c4284100')

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
index 6b3b6db..e6fad72 100644
--- a/config.h
+++ b/config.h
@@ -1,6 +1,6 @@
 ///---User configurable stuff---///
 ///---Modifiers---///
-#define MOD             XCB_MOD_MASK_4       /* Super/Windows key  or check xmodmap(1) with -pm*/
+#define MOD             XCB_MOD_MASK_1       /* Super/Windows key  or check xmodmap(1) with -pm*/
 ///--Speed---///
 /* Move this many pixels when moving or resizing with keyboard unless the window has hints saying otherwise.
  *0)move step slow   1)move step fast
@@ -13,15 +13,15 @@ static const float    resize_keep_aspect_ratio= 1.03;
 ///---Offsets---///
 /*0)offsetx          1)offsety
  *2)maxwidth         3)maxheight */
-static const uint8_t offsets[] = {0,0,0,0};
+static const uint8_t offsets[] = {22,0,44,22};
 ///---Colors---///
 /*0)focuscol         1)unfocuscol
  *2)fixedcol         3)unkilcol
  *4)fixedunkilcol    5)outerbordercol
  *6)emptycol         */
-static const char *colors[] = {"#35586c","#333333","#7a8c5c","#ff6666","#cc9933","#0d131a","#000000"};
+static const char *colors[] = {"#707070","#353535","#0d131c","#c2060f","#c2060f","#0d131c","#0d131c"};
 /* if this is set to true the inner border and outer borders colors will be swapped */
-static const bool inverted_colors = true;
+static const bool inverted_colors = false;
 ///---Cursor---///
 /* default position of the cursor:
  * correct values are:
@@ -32,14 +32,14 @@ static const bool inverted_colors = true;
 /*0) Outer border size. If you put this negative it will be a square.
  *1) Full borderwidth    2) Magnet border size    
  *3) Resize border size  */
-static const uint8_t borders[] = {3,5,5,4};
+static const uint8_t borders[] = {3,7,7,7};
 /* Windows that won't have a border.*/
 #define LOOK_INTO "WM_NAME"
-static const char *ignore_names[] = {"bar", "xclock"};
+static const char *ignore_names[] = {"bar"};
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
@@ -151,7 +151,7 @@ static key keys[] = {
     {  MOD |SHIFT ,       XK_v,          sendtonextworkspace,{.i=0}},
     {  MOD |SHIFT ,       XK_c,          sendtoprevworkspace,{.i=0}},
     // Iconify the window
-    {  MOD ,              XK_i,          hide,              {.i=0}},
+    //{  MOD ,              XK_i,          hide,              {.i=0}},
     // Make the window unkillable
     {  MOD ,              XK_a,          unkillable,        {.i=0}},
     // Make the window appear always on top

