
def sum_list(l):
  sum_ = 0
  i = 0
  for e in l:
    if e != 0:
      if i == 0:
        sum_ = e
      else:
        sum_ += e
      i += 1
    #
  return sum_

class Expr:
  def __init__(self, (r, c)):
    # r: row, c: column
    self.r = r
    self.c = c
    #
    self.m = [[0 for col in range(self.c)] for row in range(self.r)]
    
  def is_none(self, (r,c)):
    #return self.m[r][c] is None
    return self.m[r][c] == 0

  def get(self, (r,c)):
    return self.m[r][c]
  
  def set_(self, (r,c), expr):
    self.m[r][c] = expr
    
  def add_to(self, (r,c), expr):
    try:
      self.m[r][c] += expr
    except Exception, e:
      logging.error('Expr__add_to:: \ne.__doc__=%s\n e.message=%s', e.__doc__, e.message)
      sys.exit(2)
  
  def get_row(self, r):
    return self.m[r]

  def get_column(self, c):
    column = []
    for i in range(self.r):
      column.append(self.m[i][c])
    return column
  
  def agg_to_column(self):
    cexpr = Expr((self.r, 1))
    for i in range(self.r):
      cexpr.set_((i,0), sum_list(self.get_row(i)) )
    return cexpr
  
  def agg_to_row(self):
    rexpr = Expr((1, self.c))
    for j in range(self.c):
      rexpr.set_((0,j), sum_list(self.get_column(j)) )
    return rexpr
  
  def __str__(self):
    matrix_str = ''
    #special representations
    if self.r == 1 and self.c != 1: #to print row vector in column
      matrix_str += '1x%s in column;\n' % self.c
      for j in range(self.c):
        matrix_str += '[ ' + self.m[0][j].__str__() + ' ]\n'
      return matrix_str
    #
    for i in range(self.r):
      row_str = '[ '
      for j in range(self.c):
        row_str += self.m[i][j].__str__() + ' '
      row_str += ']\n'
      #
      matrix_str += row_str
    return matrix_str

if __name__ == '__main__':
  expr = Expr((3,3))
  # expr.set_((0,0), 1)
  print 'expr=%s' % expr
  print 'expr.is_none((0,0))=%s' % expr.is_none((0,0))
  