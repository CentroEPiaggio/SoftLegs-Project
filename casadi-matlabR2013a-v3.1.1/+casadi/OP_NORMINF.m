function v = OP_NORMINF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = casadiMEX(0, 86);
  end
  v = vInitialized;
end
