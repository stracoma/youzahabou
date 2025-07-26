#include "my_application.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>

struct _MyApplication {
  GtkApplication parent_instance;
};

G_DEFINE_TYPE(MyApplication, my_application, GTK_TYPE_APPLICATION)

static void my_application_activate(GApplication* application) {
  GtkWindow* window = GTK_WINDOW(gtk_application_window_new(GTK_APPLICATION(application)));

  gtk_window_set_title(window, "youzahabou");
  gtk_window_set_default_size(window, 500, 680);

  // Créer le projet Flutter
  FlDartProject* project = fl_dart_project_new();
  fl_dart_project_set_dart_entrypoint_arguments(project, NULL);

  // Créer la vue Flutter
  FlView* view = fl_view_new(project);
  gtk_widget_show(GTK_WIDGET(view));
  gtk_container_add(GTK_CONTAINER(window), GTK_WIDGET(view));

  gtk_widget_show(GTK_WIDGET(window));
}

static void my_application_class_init(MyApplicationClass* klass) {
  G_APPLICATION_CLASS(klass)->activate = my_application_activate;
}

static void my_application_init(MyApplication* self) {}

MyApplication* my_application_new() {
  return MY_APPLICATION(g_object_new(my_application_get_type(),
                                     "application-id",
                                     "com.example.youzahabou",
                                     NULL));
}

