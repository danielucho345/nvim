local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
  pritn('impatient module not loaded')
  return
end

impatient.enable_profile()
