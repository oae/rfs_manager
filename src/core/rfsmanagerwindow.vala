using Gtk;
using RfsManagerGlobals;

namespace RfsManagerWindow {
    /**
     *
     */
    public class RfsWindow : Window {

        /**
         *
         */
        public RfsWindow() {

        }

        [CCode (instance_pos = -1)]
        public void on_appmenu_clicked(Button source){
            print("appmenu button\n");
        }

        [CCode (instance_pos = -1)]
        public void on_remove_connection_button_clicked(Button source){
            print("remove button\n");
        }

        [CCode (instance_pos = -1)]
        public void on_add_connection_button_clicked(Button source){
            print("new connection button\n");
        }

    }

}
