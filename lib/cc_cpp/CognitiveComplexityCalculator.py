import clang.cindex

class CognitiveComplexityCalculator:
    def __init__(self):
        self.complexity = 0
        self.depth = 0

    def calculate(self, cpp_code):
        index = clang.cindex.Index.create()
        tu = index.parse('temp.cpp', args=['-std=c++11'], unsaved_files=[('temp.cpp', cpp_code)])
        self.visit_node(tu.cursor)
        return self.complexity

    def visit_node(self, node, depth=0):
        # Cognitive Complexity Rule 1: Add 1 point for each decision point
        if node.kind in [clang.cindex.CursorKind.IF_STMT, 
                         clang.cindex.CursorKind.FOR_STMT, 
                         clang.cindex.CursorKind.WHILE_STMT, 
                         clang.cindex.CursorKind.CASE_STMT, 
                         clang.cindex.CursorKind.SWITCH_STMT,
                         clang.cindex.CursorKind.DO_STMT]:
            self.complexity += 1
            if depth > 0:
                self.complexity += depth  # Additional complexity for nesting

            depth += 1

        # Cognitive Complexity Rule 2: Breaking flow control structures
        if node.kind in [clang.cindex.CursorKind.BREAK_STMT,
                         clang.cindex.CursorKind.CONTINUE_STMT,
                         clang.cindex.CursorKind.RETURN_STMT]:
            self.complexity += 1

        # Visit children nodes
        for child in node.get_children():
            self.visit_node(child, depth)