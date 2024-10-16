local math_activated = false

local function ensure_mitex()
  if not math_activated then
    quarto.doc.include_text('in-header', '#import "@preview/mitex:0.2.4": *')
    math_activated = true
  end
end

-- Inline Math
Math = function(m)
  if not quarto.doc.is_format('typst') then
    return nil
  end
  ensure_mitex()
  if m.mathtype == "InlineMath" then
    return pandoc.RawInline('typst', '#mi("' .. m.text .. '")')
  end
end

-- DisplayMath 
-- We want to replace all Para by a RawBlock
Para = function(p)
  if not quarto.doc.is_format('typst') then
    return nil
  end
  ensure_mitex()
  if p.content[1].t == "Math" and p.content[1].mathtype == "DisplayMath" then
    return pandoc.RawBlock('typst', '#mitex(`' .. p.content[1].text .. '`)')
  end
end

