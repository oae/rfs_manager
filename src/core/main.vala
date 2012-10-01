using Gtk;

public static void button_clicked(Button button) {
	button.label = "Thanks!";
}

public static int main(string [] argv) {
	Gtk.init (ref argv);

	try {
		var builder = new Builder();
		builder.add_from_file("../ui/MainWindow.ui");
		builder.connect_signals(null);
		var window = builder.get_object ("mainwindow") as Window;
        window.show_all ();
        Gtk.main ();
	} catch (Error e) {
        stderr.printf ("Could not load UI: %s\n", e.message);
        return -1;
	}

	return 0;
}
