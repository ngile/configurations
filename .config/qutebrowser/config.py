c.editor.command = ["gvim", "-f", "{}"]
c.new_instance_open_target = "tab-bg"
c.prompt.filebrowser = False
c.completion.height = "30%"
c.completion.web_history.max_items = 1000
c.input.partial_timeout = 2000
c.tabs.background = True
c.tabs.favicons.show = 'always'
c.tabs.title.format = "{title}"
c.downloads.location.directory = '/home/georgi/Downloads'
c.content.cache.size = 52428800
c.content.webgl = False
c.content.host_blocking.enabled = False
c.hints.border = "1px solid #CCCCCC"
# c.hints.mode = "number"
# c.hints.chars = "123456789"
c.hints.min_chars = 1

# searches
c.url.searchengines['DEFAULT'] = 'https://google.com/search?hl=en&q={}'
c.url.searchengines['y'] = 'https://www.youtube.com/results?search_query={}'
c.url.searchengines['w'] = 'https://secure.wikimedia.org/wikipedia/en/w/index.php?title=Special%%3ASearch&search={}'
c.url.searchengines['gh'] = 'https://github.com/search?q=org%3Asoftwaregroup-bg+{}'


c.url.start_pages = ['about:blank']
c.colors.prompts.border = '2px solid gray'
c.content.plugins = True
c.url.default_page = 'about:blank'
# c.colors.webpage.bg = 'black'

c.fonts.completion.category = "bold 10pt Terminus"
c.fonts.completion.entry = "10pt Terminus"
c.fonts.debug_console = "10pt Terminus"
c.fonts.downloads = "10pt Terminus"
c.fonts.hints = "bold 10pt Terminus"
c.fonts.keyhint = "12pt Terminus"
c.fonts.messages.error = "8pt Terminus"
c.fonts.messages.info = "10pt Terminus"
c.fonts.messages.warning = "10pt Terminus"
c.fonts.statusbar = "8pt bold Terminus"
c.fonts.tabs = "8pt bold Terminus"



config.bind(' j', 'open jenkins.softwaregroup-bg.com')
config.bind(' r', 'open gerrit.softwaregroup.com')
config.bind(' g', 'open git.softwaregroup-bg.com')
config.bind(' n', 'open nexus.softwaregroup-bg.com')
config.bind(' N', 'open nexus-dev.softwaregroup-bg.com')
config.bind(' f', 'open www.facebook.com')
config.bind(' s', 'open www.sportal.bg')
config.bind(' z', 'open www.zamunda.net')
config.bind(' Z', 'open www.zelka.org')


