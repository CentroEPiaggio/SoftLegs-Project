function v = OUTPUT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = casadiMEX(0, 109);
  end
  v = vInitialized;
end
