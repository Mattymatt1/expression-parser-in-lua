-- this is the base of the lexer, and the base of the number and operation tokens, the code where the lex and the tokens are coded, and created.

function createlex(Input)
LexStack = {
  input = Input, -- input of expression
  currentline = nil,-- number of current line
  currenttoken = nil,
  lastline = nil, -- number of last line
  currentop = nil, -- current caught operation symbol
  lastOp = nil, -- previous caught operation symbol
  lchar = nil, -- character in input to read for operation symbols in line 14
}
  return LexStack
end


Operations = {"+", "*", "-", "/"}

function createnumber(floatint)
  Oper = {number = floatint}
  
  if type(Oper.number) ~= "number" then
    print("error caught: invalid number")
  end
  return Oper
end

