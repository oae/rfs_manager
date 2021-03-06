using Gtk;
using RfsManagerWindow;
using RfsManagerGlobals;


public static int main(string [] argv) {

    Gtk.init (ref argv);

    try {

        Window window = new RfsWindow();

        var builder = new Builder();
        builder.add_from_file(MAINWINDOWUI);
        builder.connect_signals(window);

        window = builder.get_object("mainwindow") as Window;
        Toolbar toolbar = builder.get_object("toolbar") as Toolbar;
        var context = toolbar.get_style_context();
        context.add_class(STYLE_CLASS_PRIMARY_TOOLBAR);

        window.show_all ();
        Gtk.main ();
    } catch (Error e) {
        stderr.printf ("Could not load UI: %s\n", e.message);
        return -1;
    }

    return 0;
}
