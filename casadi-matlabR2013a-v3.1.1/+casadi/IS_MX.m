function v = IS_MX()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = casadiMEX(0, 99);
  end
  v = vInitialized;
end
