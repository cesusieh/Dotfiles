from fabric import Application
from fabric.widgets.datetime import DateTime
from fabric.widgets.centerbox import CenterBox
from fabric.widgets.wayland import WaylandWindow as Window
from fabric.hyprland.widgets import Workspaces


class StatusBar(Window):
    def __init__(self):
        super().__init__(layer="top", anchor="top left bottom", exclusivity="auto")

        self.workArea = Workspaces()
        self.date_time = DateTime(formatters=["%H\n%M"])
        self.children = CenterBox(
            orientation="vertical",
            center_children=self.workArea,
            end_children=self.date_time,
        )


if __name__ == "__main__":
    app = Application("bar-example", StatusBar())
    app.run()
