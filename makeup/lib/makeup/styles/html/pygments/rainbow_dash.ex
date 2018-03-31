
defmodule Makeup.Styles.HTML.RainbowDashStyle do
  @moduledoc false

  require Makeup.Token.TokenTypes
  alias Makeup.Token.TokenTypes, as: Tok

  @styles %{
    Tok.text => "#4d4d4d",
    Tok.error => "bg:#cc0000 #ffffff",
    Tok.keyword => "bold #2c5dcd",
    Tok.keyword_pseudo => "nobold",
    Tok.keyword_type => "#5918bb",
    Tok.name_attribute => "italic #2c5dcd",
    Tok.name_builtin => "bold #5918bb",
    Tok.name_class => "underline",
    Tok.name_constant => "#318495",
    Tok.name_decorator => "bold #ff8000",
    Tok.name_entity => "bold #5918bb",
    Tok.name_exception => "bold #5918bb",
    Tok.name_function => "bold #ff8000",
    Tok.name_tag => "bold #2c5dcd",
    Tok.string => "#00cc66",
    Tok.string_doc => "italic",
    Tok.string_escape => "bold #c5060b",
    Tok.string_other => "#318495",
    Tok.string_symbol => "bold #c5060b",
    Tok.number => "bold #5918bb",
    Tok.operator => "#2c5dcd",
    Tok.operator_word => "bold",
    Tok.comment => "italic #0080ff",
    Tok.comment_preproc => "noitalic",
    Tok.comment_special => "bold",
    Tok.generic_deleted => "border:#c5060b bg:#ffcccc",
    Tok.generic_emph => "italic",
    Tok.generic_error => "#ff0000",
    Tok.generic_heading => "bold #2c5dcd",
    Tok.generic_inserted => "border:#00cc00 bg:#ccffcc",
    Tok.generic_output => "#aaaaaa",
    Tok.generic_prompt => "bold #2c5dcd",
    Tok.generic_strong => "bold",
    Tok.generic_subheading => "bold #2c5dcd",
    Tok.generic_traceback => "#c5060b"
    
  }
  
  alias Makeup.Styles.HTML.Style
  
  @style_struct Style.make_style(
      short_name: "rainbow_dash",
      long_name: "RainbowDash Style",
      background_color: "#ffffff",
      highlight_color: "#ffffcc",
      styles: @styles)
      
  def style() do
    @style_struct()
  end
end