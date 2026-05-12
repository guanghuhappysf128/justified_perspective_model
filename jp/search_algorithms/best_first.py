from search_core import NoveltyGuidedSearchEngine


class best_first(NoveltyGuidedSearchEngine):
    def __init__(self, handlers, search_name):
        super().__init__(handlers, search_name)
        self.h_weight = 1
        self.g_weight = 1