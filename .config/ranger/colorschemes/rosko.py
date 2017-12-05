# This file is part of ranger, the console file manager.
# License: GNU GPL version 3, see the file "AUTHORS" for details.

from __future__ import (absolute_import, division, print_function)

from ranger.colorschemes.default import Default
# from ranger.gui.color import green, red, blue
from ranger.gui.color import *


class Scheme(Default):
    progress_bar_color = blue

    def use(self, context):
        fg, bg, attr = Default.use(self, context)

        if context.directory and not context.marked and not context.link \
                and not context.inactive_pane:
            attr |= bold
            fg = 111

        if context.in_titlebar:
            if context.hostname:
                fg = red if context.bad else 247
            elif context.tab:
                attr |= bold
                if context.good:
                    bg = 111
                    fg = 7
                else:
                    fg = 235

        return fg, bg, attr
