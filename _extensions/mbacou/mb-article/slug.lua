local path = require("pandoc.path")

function Meta(meta)
  local input = quarto.doc.input_file

  -- directory containing the document
  local dir = path.directory(input)

  -- extract last path component (= parent folder)
  local parent = dir:match("([^/\\]+)$")

  meta.slug = pandoc.MetaString(parent)

  return meta
end

