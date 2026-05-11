from search_core import BestFirstSearchEngine


class weighted_astar(BestFirstSearchEngine):
    def __init__(self, handlers, search_name):
        super().__init__(handlers, search_name)
        self.weight = 2.0
        self.h_weight = self.weight
        self.g_weight = 1

    def _gn(self, node):
        return node.depth