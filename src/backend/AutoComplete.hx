package backend;


using StringTools;
class AutoComplete {
    public static final cssProperties:Map<String, Map<String, Array<String>>> = [
        "A" => [
            //colors are annoying.
            "aqua" => ["Color Tag"],
            "aliceblue" => ["Color Tag"],
            "antiquewhite" => ["Color Tag"],
            "aquamarine" => ["Color Tag"],
            "azure" => ["Color Tag"],

            "accent-color" => ["Specifies an accent color for user-interface controls", "css4_pr_accent-color.php"],
            "align-content" => ["Specifies the alignment between the lines inside a flexible container when the items do not use all available space", "css3_pr_align-content.php"],
            "align-items" => ["Specifies the alignment for items inside a flexible container", "css3_pr_align-items.php"],
            "align-self" => ["Specifies the alignment for selected items inside a flexible container", "css3_pr_align-self.php"],
            "all" => ["Resets all properties (except unicode-bidi and direction)", "css3_pr_all.php"],
            "animation" => ["A shorthand property for all the animation-* properties", "css3_pr_animation.php"],
            "animation-delay" => ["Specifies a delay for the start of an animation", "css3_pr_animation-delay.php"],
            "animation-direction" => ["Specifies whether an animation should be played forward, backward or in alternate cycles", "css3_pr_animation-direction.php"],
            "animation-duration" => ["Specifies how long an animation should take to complete one cycle", "css3_pr_animation-duration.php"],
            "animation-fill-mode" => ["Specifies a style for the element when the animation is not playing", "css3_pr_animation-fill-mode.php"],
            "animation-iteration-count" => ["Specifies the number of times an animation should be played", "css3_pr_animation-iteration-count.php"],
            "animation-name" => ["Specifies a name for the @keyframes animation", "css3_pr_animation-name.php"],
            "animation-play-state" => ["Specifies whether the animation is running or paused", "css3_pr_animation-play-state.php"],
            "animation-timing-function" => ["Specifies the speed curve of an animation", "css3_pr_animation-timing-function.php"],
            "aspect-ratio" => ["Specifies preferred aspect ratio of an element", "css_pr_aspect-ratio.php"],
        ],
        "B" => [
            //color tags.
            "black" => ["Color Tag"],
            "blue" => ["Color Tag"],
            "beige" => ["Color Tag"],
            "bisque" => ["Color Tag"],
            "blanchedalmond" => ["Color Tag"],
            "blueviolet" => ["Color Tag"],
            "brown" => ["Color Tag"],
            "burlywood" => ["Color Tag"],
            "backdrop-filter" => ["Defines a graphical effect to the area behind an element", "css3_pr_backdrop-filter.php"],
            "backface-visibility" => ["Defines whether or not the back face of an element should be visible when facing the user", "css3_pr_backface-visibility.php"],
            "background" => ["A shorthand property for all the background-* properties", "css3_pr_background.php"],
            "background-attachment" => ["Sets whether a background image scrolls with the rest of the page, or is fixed", "pr_background-attachment.php"],
            "background-blend-mode" => ["Specifies the blending mode of each background layer", "pr_background-blend-mode.php"],
            "background-clip" => ["Defines how far the background should extend within an element", "css3_pr_background-clip.php"],
            "background-color" => ["Specifies the background color of an element", "pr_background-color.php"],
            "background-image" => ["Specifies one or more background images for an element", "pr_background-image.php"],
            "background-origin" => ["Specifies the origin position of a background image", "css3_pr_background-origin.php"],
            "background-position" => ["Specifies the position of a background image", "pr_background-position.php"],
            "background-position-x" => ["Specifies the position of a background image on x-axis", "css_pr_background-position-x.php"],
            "background-position-y" => ["Specifies the position of a background image on y-axis", "css_pr_background-position-y.php"],
            "background-repeat" => ["Sets if/how a background image will be repeated", "pr_background-repeat.php"],
            "background-size" => ["Specifies the size of the background images", "css3_pr_background-size.php"],
            "block-size" => ["Specifies the size of an element in block direction", "css_pr_block-size.php"],
            "border" => ["A shorthand property for border-width, border-style and border-color", "pr_border.php"],
            "border-bottom" => ["A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color", "pr_border-bottom.php"],
            "border-bottom-color" => ["Sets the color of the bottom border", "pr_border-bottom_color.php"],
            "border-bottom-left-radius" => ["Defines the radius of the border of the bottom-left corner", "css3_pr_border-bottom-left-radius.php"],
            "border-bottom-right-radius" => ["Defines the radius of the border of the bottom-right corner", "css3_pr_border-bottom-right-radius.php"],
            "border-bottom-style" => ["Sets the style of the bottom border", "pr_border-bottom_style.php"],
            "border-bottom-width" => ["Sets the width of the bottom border", "pr_border-bottom_width.php"],
            "border-collapse" => ["Sets whether table borders should collapse into a single border or be separated", "pr_border-collapse.php"],
            "border-color" => ["Sets the color of the four borders", "pr_border-color.php"],
            "border-image" => ["A shorthand property for all the border-image-* properties", "css3_pr_border-image.php"],
            "border-image-outset" => ["Specifies the amount by which the border image area extends beyond the border box", "css3_pr_border-image-outset.php"],
            "border-image-repeat" => ["Specifies whether the border image should be repeated, rounded or stretched", "css3_pr_border-image-repeat.php"],
            "border-image-slice" => ["Specifies how to slice the border image", "css3_pr_border-image-slice.php"],
            "border-image-source" => ["Specifies the path to the image to be used as a border", "css3_pr_border-image-source.php"],
            "border-image-width" => ["Specifies the width of the border image", "css3_pr_border-image-width.php"],
            "border-left" => ["A shorthand property for all the border-left-* properties", "pr_border-left.php"],
            "border-left-color" => ["Sets the color of the left border", "pr_border-left_color.php"],
            "border-left-style" => ["Sets the style of the left border", "pr_border-left_style.php"],
            "border-left-width" => ["Sets the width of the left border", "pr_border-left_width.php"],
            "border-radius" => ["A shorthand property for the four border-*-radius properties", "css3_pr_border-radius.php"],
            "border-right" => ["A shorthand property for all the border-right-* properties", "pr_border-right.php"],
            "border-right-color" => ["Sets the color of the right border", "pr_border-right_color.php"],
            "border-right-style" => ["Sets the style of the right border", "pr_border-right_style.php"],
            "border-right-width" => ["Sets the width of the right border", "pr_border-right_width.php"],
            "border-spacing" => ["Sets the distance between the borders of adjacent cells", "pr_border-spacing.php"],
            "border-style" => ["Sets the style of the four borders", "pr_border-style.php"],
            "border-top" => ["A shorthand property for border-top-width, border-top-style and border-top-color", "pr_border-top.php"],
            "border-top-color" => ["Sets the color of the top border", "pr_border-top_color.php"],
            "border-top-left-radius" => ["Defines the radius of the border of the top-left corner", "css3_pr_border-top-left-radius.php"],
            "border-top-right-radius" => ["Defines the radius of the border of the top-right corner", "css3_pr_border-top-right-radius.php"],
            "border-top-style" => ["Sets the style of the top border", "pr_border-top_style.php"],
            "border-top-width" => ["Sets the width of the top border", "pr_border-top_width.php"],
            "border-width" => ["Sets the width of the four borders", "pr_border-width.php"],
            "bottom" => ["Sets the elements position, from the bottom of its parent element", "pr_pos_bottom.php"],
            "box-shadow" => ["Attaches one or more shadows to an element", "css3_pr_box-shadow.php"],
            "box-sizing" => ["Defines how the width and height of an element are calculated", "css3_pr_box-sizing.php"],
        ],
        "C" => [
            //color tags
            "cadetblue" => ["Color Tag"],
            "chartreuse" => ["Color Tag"],
            "chocolate" => ["Color Tag"],
            "coral" => ["Color Tag"],
            "cornflowerblue" => ["Color Tag"],
            "cornsilk" => ["Color Tag"],
            "crimson" => ["Color Tag"],
            "cyan" => ["Color Tag"],
            "caption-side" => ["Specifies the placement of a table caption", "pr_tab_caption-side.php"],
            "caret-color" => ["Specifies the color of the cursor in inputs or textareas", "css3_pr_caret-color.php"],
            "clear" => ["Specifies what should happen with the element that is next to a floating element", "pr_class_clear.php"],
            "clip-path" => ["Clips an element to a basic shape or to an SVG source", "css3_pr_clip-path.php"],
            "color" => ["Sets the color of text", "pr_text_color.php"],
            "column-count" => ["Specifies the number of columns an element should be divided into", "css3_pr_column-count.php"],
            "column-fill" => ["Specifies how to fill columns, balanced or not", "css3_pr_column-fill.php"],
            "column-gap" => ["Specifies the gap between the columns", "css3_pr_column-gap.php"],
            "column-rule" => ["A shorthand property for all the column-rule-* properties", "css3_pr_column-rule.php"],
            "column-rule-color" => ["Specifies the color of the rule between columns", "css3_pr_column-rule-color.php"],
            "column-rule-style" => ["Specifies the style of the rule between columns", "css3_pr_column-rule-style.php"],
            "column-rule-width" => ["Specifies the width of the rule between columns", "css3_pr_column-rule-width.php"],
            "column-span" => ["Specifies how many columns an element should span across", "css3_pr_column-span.php"],
            "column-width" => ["Specifies the column width", "css3_pr_column-width.php"],
            "columns" => ["A shorthand property for column-width and column-count", "css3_pr_columns.php"],
            "content" => ["Used with the :before and :after pseudo-elements, to insert generated content", "pr_gen_content.php"],
            "cursor" => ["Specifies the mouse cursor to be displayed when pointing over an element", "pr_class_cursor.php"],
        ],
        "D" => [
            //color tags
            "darkblue" => ["Color Tag"],
            "darkcyan" => ["Color Tag"],
            "darkgoldenrod" => ["Color Tag"],
            "darkgray" => ["Color Tag"],
            "darkgreen" => ["Color Tag"],
            "darkgrey" => ["Color Tag"],
            "darkkhaki" => ["Color Tag"],
            "darkmagenta" => ["Color Tag"],
            "darkorange" => ["Color Tag"],
            "darkorchid" => ["Color Tag"],
            "darkred" => ["Color Tag"],
            "darksalmon" => ["Color Tag"],
            "darkseagreen" => ["Color Tag"],
            "darkslateblue" => ["Color Tag"],
            "darkslategray" => ["Color Tag"],
            "darkslategrey" => ["Color Tag"],
            "darkturquoise" => ["Color Tag"],
            "darkviolet" => ["Color Tag"],
            "deeppink" => ["Color Tag"],
            "deepskyblue" => ["Color Tag"],
            "dimgray" => ["Color Tag"],
            "dimgrey" => ["Color Tag"],
            "dodgerblue" => ["Color Tag"],
            "direction" => ["Specifies the text direction/writing direction", "pr_text_direction.php"],
            "display" => ["Specifies how a certain HTML element should be displayed", "pr_class_display.php"],
        ],
        "E" => [
            "empty-cells" => ["Specifies whether or not to display borders and background on empty cells in a table", "pr_tab_empty-cells.php"],
        ],
        "F" => [
            //color tags
            "fuchsia" => ["Color Tag"],
            "firebrick" => ["Color Tag"],
            "floralwhite" => ["Color Tag"],
            "forestgreen" => ["Color Tag"],
            "filter" => ["Defines effects on an element before the element is displayed", "css3_pr_filter.php"],
            "flex" => ["A shorthand property for the flex-grow, flex-shrink, and the flex-basis properties", "css3_pr_flex.php"],
            "flex-basis" => ["Specifies the initial length of a flexible item", "css3_pr_flex-basis.php"],
            "flex-direction" => ["Specifies the direction of the flexible items", "css3_pr_flex-direction.php"],
            "flex-flow" => ["A shorthand property for the flex-direction and the flex-wrap properties", "css3_pr_flex-flow.php"],
            "flex-grow" => ["Specifies how much the item will grow relative to the rest", "css3_pr_flex-grow.php"],
            "flex-shrink" => ["Specifies how the item will shrink relative to the rest", "css3_pr_flex-shrink.php"],
            "flex-wrap" => ["Specifies whether the flexible items should wrap or not", "css3_pr_flex-wrap.php"],
            "float" => ["Specifies whether an element should float to the left, right, or not at all", "pr_class_float.php"],
            "font" => ["A shorthand property for font-style, font-variant, font-weight, font-size/line-height, and font-family", "pr_font_font.php"],
            "font-family" => ["Specifies the font family for text", "pr_font_font-family.php"],
            "font-size" => ["Specifies the font size of text", "pr_font_font-size.php"],
            "font-size-adjust" => ["Preserves the readability and size of text when fallback font occurs", "css3_pr_font-size-adjust.php"],
            "font-stretch" => ["Selects a normal, condensed, or expanded face from a font family", "css3_pr_font-stretch.php"],
            "font-style" => ["Specifies the font style for text", "pr_font_font-style.php"],
            "font-variant" => ["Specifies whether or not a text should be displayed in a small-caps font", "pr_font_font-variant.php"],
            "font-weight" => ["Specifies the weight of a font", "pr_font_weight.php"],
        ],
        "G" => [
            //color tags
            "gray" => ["Color Tag"],
            "grey" => ["Color Tag"],
            "gainsboro" => ["Color Tag"],
            "ghostwhite" => ["Color Tag"],
            "gold" => ["Color Tag"],
            "goldenrod" => ["Color Tag"],
            "green" => ["Color Tag"],
            "greenyellow" => ["Color Tag"],
            "gap" => ["A shorthand property for the row-gap and the column-gap properties", "css3_pr_gap.php"],
            "grid" => ["A shorthand property for grid template and auto properties", "pr_grid.php"],
            "grid-area" => ["Specifies a name for the grid item or is a shorthand for grid placement properties", "pr_grid-area.php"],
            "grid-auto-columns" => ["Specifies a default column size", "pr_grid-auto-columns.php"],
            "grid-auto-flow" => ["Specifies how auto-placed items are inserted in the grid", "pr_grid-auto-flow.php"],
            "grid-auto-rows" => ["Specifies a default row size", "pr_grid-auto-rows.php"],
            "grid-column" => ["A shorthand property for grid-column-start and grid-column-end", "pr_grid-column.php"],
            "grid-column-end" => ["Specifies where to end the grid item", "pr_grid-column-end.php"],
            "grid-column-start" => ["Specifies where to start the grid item", "pr_grid-column-start.php"],
            "grid-row" => ["A shorthand property for grid-row-start and grid-row-end", "pr_grid-row.php"],
            "grid-row-end" => ["Specifies where to end the grid item", "pr_grid-row-end.php"],
            "grid-row-start" => ["Specifies where to start the grid item", "pr_grid-row-start.php"],
            "grid-template" => ["A shorthand property for grid-template-rows, grid-template-columns and grid-areas", "pr_grid-template.php"],
            "grid-template-areas" => ["Specifies how to display columns and rows, using named grid items", "pr_grid-template-areas.php"],
            "grid-template-columns" => ["Specifies the size of the columns, and how many columns in a grid layout", "pr_grid-template-columns.php"],
            "grid-template-rows" => ["Specifies the size of the rows in a grid layout", "pr_grid-template-rows.php"],
        ],
        "H" => [
            //color tags
            "honeydew" => ["Color Tag"],
            "hotpink" => ["Color Tag"],
            "height" => ["Sets the height of an element", "pr_dim_height.php"],
            "hyphens" => ["Sets how to split words to improve the layout of text", "css3_pr_hyphens.php"],
        ],
        "I" => [
            //color tags
            "indianred" => ["Color Tag"],
            "indigo" => ["Color Tag"],
            "ivory" => ["Color Tag"],
            "image-rendering" => ["Specifies the type of algorithm to use for image scaling", "css3_pr_image-rendering.php"],
            "isolation" => ["Defines whether an element must create a new stacking content", "css3_pr_isolation.php"],
        ],
        "J" => [
            "justify-content" => ["Specifies the alignment between the items inside a flexible container when the items do not use all available space", "css3_pr_justify-content.php"],
            "justify-items" => ["Specifies the alignment of grid items in the inline direction", "css_pr_justify-items.php"],
            "justify-self" => ["Specifies the alignment of the grid item in the inline direction", "css_pr_justify-self.php"],
        ],
        "K" => [
            "khaki" => ["Color Tag"]
        ],
        "L" => [
            //color tags
            "lavender" => ["Color Tag"],
            "lavenderblush" => ["Color Tag"],
            "lawngreen" => ["Color Tag"],
            "lemonchiffon" => ["Color Tag"],
            "lightblue" => ["Color Tag"],
            "lightcoral" => ["Color Tag"],
            "lightcyan" => ["Color Tag"],
            "lightgoldenrodyellow" => ["Color Tag"],
            "lightgray" => ["Color Tag"],
            "lightgreen" => ["Color Tag"],
            "lightgrey" => ["Color Tag"],
            "lightpink" => ["Color Tag"],
            "lightsalmon" => ["Color Tag"],
            "lightseagreen" => ["Color Tag"],
            "lightskyblue" => ["Color Tag"],
            "lightslategray" => ["Color Tag"],
            "lightslategrey" => ["Color Tag"],
            "lightsteelblue" => ["Color Tag"],
            "lightyellow" => ["Color Tag"],
            "lime" => ["Color Tag"],
            "limegreen" => ["Color Tag"],
            "linen" => ["Color Tag"],
            "left" => ["Specifies the left position of a positioned element", "pr_pos_left.php"],
            "letter-spacing" => ["Increases or decreases the space between characters in a text", "pr_text_letter-spacing.php"],
            "line-height" => ["Sets the line height", "pr_dim_line-height.php"],
            "list-style" => ["Sets all the properties for a list in one declaration", "pr_list-style.php"],
            "list-style-image" => ["Specifies an image as the list-item marker", "pr_list-style-image.php"],
            "list-style-position" => ["Specifies the position of the list-item markers", "pr_list-style-position.php"],
            "list-style-type" => ["Specifies the type of list-item marker", "pr_list-style-type.php"],
        ],
        "M" => [
            //color tags
            "maroon" => ["Color Tag"],
            "magenta" => ["Color Tag"],
            "mediumaquamarine" => ["Color Tag"],
            "mediumblue" => ["Color Tag"],
            "mediumorchid" => ["Color Tag"],
            "mediumpurple" => ["Color Tag"],
            "mediumseagreen" => ["Color Tag"],
            "mediumslateblue" => ["Color Tag"],
            "mediumspringgreen" => ["Color Tag"],
            "mediumturquoise" => ["Color Tag"],
            "mediumvioletred" => ["Color Tag"],
            "midnightblue" => ["Color Tag"],
            "mintcream" => ["Color Tag"],
            "mistyrose" => ["Color Tag"],
            "moccasin" => ["Color Tag"],
            "margin" => ["Sets all the margin properties in one declaration", "pr_margin.php"],
            "margin-bottom" => ["Sets the bottom margin of an element", "pr_margin-bottom.php"],
            "margin-left" => ["Sets the left margin of an element", "pr_margin-left.php"],
            "margin-right" => ["Sets the right margin of an element", "pr_margin-right.php"],
            "margin-top" => ["Sets the top margin of an element", "pr_margin-top.php"],
            "max-height" => ["Sets the maximum height of an element", "pr_dim_max-height.php"],
            "max-width" => ["Sets the maximum width of an element", "pr_dim_max-width.php"],
            "min-height" => ["Sets the minimum height of an element", "pr_dim_min-height.php"],
            "min-width" => ["Sets the minimum width of an element", "pr_dim_min-width.php"],
            "mix-blend-mode" => ["Specifies how an element's content should blend with its direct parent background", "pr_mix-blend-mode.php"],
        ],
        "N" => [
            "navy" => ["Color Tag"],
            "navajowhite" => ["Color Tag"],
        ],
        "O" => [
            //color tags
            "olive" => ["Color Tag"],
            "oldlace" => ["Color Tag"],
            "olivedrab" => ["Color Tag"],
            "orange" => ["Color Tag"],
            "orangered" => ["Color Tag"],
            "orchid" => ["Color Tag"],
            "object-fit" => ["Specifies how the contents of a replaced element should be fitted to the box established by its used height and width", "css3_pr_object-fit.php"],
            "object-position" => ["Specifies the alignment of the replaced element inside its box", "css3_pr_object-position.php"],
            "opacity" => ["Sets the opacity level for an element", "css3_pr_opacity.php"],
            "order" => ["Sets the order of the flexible item, relative to the rest", "css3_pr_order.php"],
            "outline" => ["A shorthand property for outline-width, outline-style, and outline-color", "pr_outline.php"],
            "outline-color" => ["Sets the color of an outline", "pr_outline-color.php"],
            "outline-offset" => ["Offsets an outline, and draws it beyond the border edge", "css3_pr_outline-offset.php"],
            "outline-style" => ["Sets the style of an outline", "pr_outline-style.php"],
            "outline-width" => ["Sets the width of an outline", "pr_outline-width.php"],
            "overflow" => ["Specifies what happens if content overflows an element's box", "pr_pos_overflow.php"],
            "overflow-wrap" => ["Specifies whether or not the browser can break lines with long words", "css3_pr_overflow-wrap.php"],
            "overflow-x" => ["Specifies whether or not to clip the left/right edges of the content", "css3_pr_overflow-x.php"],
            "overflow-y" => ["Specifies whether or not to clip the top/bottom edges of the content", "css3_pr_overflow-y.php"],
        ],
        "P" => [
            //color tags
            "purple" => ["Color Tag"],
            "palegoldenrod" => ["Color Tag"],
            "palegreen" => ["Color Tag"],
            "paleturquoise" => ["Color Tag"],
            "palevioletred" => ["Color Tag"],
            "papayawhip" => ["Color Tag"],
            "peachpuff" => ["Color Tag"],
            "peru" => ["Color Tag"],
            "pink" => ["Color Tag"],
            "plum" => ["Color Tag"],
            "powderblue" => ["Color Tag"],
            "padding" => ["A shorthand property for all the padding-* properties", "pr_padding.php"],
            "padding-bottom" => ["Sets the bottom padding of an element", "pr_padding-bottom.php"],
            "padding-left" => ["Sets the left padding of an element", "pr_padding-left.php"],
            "padding-right" => ["Sets the right padding of an element", "pr_padding-right.php"],
            "padding-top" => ["Sets the top padding of an element", "pr_padding-top.php"],
            "perspective" => ["Gives a 3D-positioned element some perspective", "css3_pr_perspective.php"],
            "perspective-origin" => ["Defines at which position the user is looking at the 3D-positioned element", "css3_pr_perspective-origin.php"],
            "pointer-events" => ["Defines whether or not an element reacts to pointer events", "css3_pr_pointer-events.php"],
            "position" => ["Specifies the type of positioning method used for an element", "pr_class_position.php"],
        ],
        "Q" => [
            "quotes" => ["Sets the type of quotation marks for embedded quotations", "pr_gen_quotes.php"],
        ],
        "R" => [
            //color tags
            "red" => ["Color Tag"],
            "rosybrown" => ["Color Tag"],
            "royalblue" => ["Color Tag"],
            "resize" => ["Defines if and how an element is resizable by the user", "css3_pr_resize.php"],
            "right" => ["Specifies the right position of a positioned element", "pr_pos_right.php"],
            "row-gap" => ["Specifies the gap between the grid rows", "css3_pr_row-gap.php"],
        ],
        "S" => [
            //color tags
            "silver" => ["Color Tag"],
            "saddlebrown" => ["Color Tag"],
            "salmon" => ["Color Tag"],
            "sandybrown" => ["Color Tag"],
            "seagreen" => ["Color Tag"],
            "seashell" => ["Color Tag"],
            "sienna" => ["Color Tag"],
            "skyblue" => ["Color Tag"],
            "slateblue" => ["Color Tag"],
            "slategray" => ["Color Tag"],
            "slategrey" => ["Color Tag"],
            "snow" => ["Color Tag"],
            "springgreen" => ["Color Tag"],
            "steelblue" => ["Color Tag"],
            "scroll-behavior" => ["Specifies whether to smoothly animate the scroll position in a scrollable box", "pr_scroll-behavior.php"],
            "scroll-snap-align" => ["Specifies where to position elements when the user stops scrolling", "css_pr_scroll-snap-align.php"],
            "scroll-snap-type" => ["Specifies how snap behaviour should be when scrolling", "css_pr_scroll-snap-type.php"],
        ],
        "T" => [
            //color tags
            "teal" => ["Color Tag"],
            "tan" => ["Color Tag"],
            "thistle" => ["Color Tag"],
            "tomato" => ["Color Tag"],
            "turquoise" => ["Color Tag"],
            "tab-size" => ["Specifies the width of a tab character", "css3_pr_tab-size.php"],
            "table-layout" => ["Defines the algorithm used to lay out table cells, rows, and columns", "pr_tab_table-layout.php"],
            "text-align" => ["Specifies the horizontal alignment of text", "pr_text_text-align.php"],
            "text-align-last" => ["Describes how the last line of a block is aligned when text-align is justify", "css3_pr_text-align-last.php"],
            "text-decoration" => ["Specifies the decoration added to text", "pr_text_text-decoration.php"],
            "text-decoration-color" => ["Specifies the color of the text-decoration", "css3_pr_text-decoration-color.php"],
            "text-decoration-line" => ["Specifies the type of line in a text-decoration", "css3_pr_text-decoration-line.php"],
            "text-decoration-style" => ["Specifies the style of the line in a text decoration", "css3_pr_text-decoration-style.php"],
            "text-indent" => ["Specifies the indentation of the first line in a text-block", "pr_text_text-indent.php"],
            "text-overflow" => ["Specifies what should happen when text overflows the containing element", "css3_pr_text-overflow.php"],
            "text-shadow" => ["Adds shadow to text", "css3_pr_text-shadow.php"],
            "text-transform" => ["Controls the capitalization of text", "pr_text_text-transform.php"],
            "top" => ["Specifies the top position of a positioned element", "pr_pos_top.php"],
            "transform" => ["Applies a 2D or 3D transformation to an element", "css3_pr_transform.php"],
            "transform-origin" => ["Allows you to change the position on transformed elements", "css3_pr_transform-origin.php"],
            "transform-style" => ["Specifies how nested elements are rendered in 3D space", "css3_pr_transform-style.php"],
            "transition" => ["A shorthand property for all the transition-* properties", "css3_pr_transition.php"],
            "transition-delay" => ["Specifies when the transition effect will start", "css3_pr_transition-delay.php"],
            "transition-duration" => ["Specifies how many seconds or milliseconds a transition effect takes to complete", "css3_pr_transition-duration.php"],
            "transition-property" => ["Specifies the name of the CSS property the transition effect is for", "css3_pr_transition-property.php"],
            "transition-timing-function" => ["Specifies the speed curve of the transition effect", "css3_pr_transition-timing-function.php"],
        ],
        "U" => [
            "unicode-bidi" => ["Used together with the direction property to set or return whether the text should be overridden", "pr_text_unicode-bidi.php"],
            "user-select" => ["Specifies whether the text of an element can be selected", "css3_pr_user-select.php"],
        ],
        "V" => [
            //color tags
            "violet" => ["Color Tag"],
            "vertical-align" => ["Sets the vertical alignment of an element", "pr_pos_vertical-align.php"],
            "visibility" => ["Specifies whether or not an element is visible", "pr_class_visibility.php"],
        ],
        "W" => [
            //color tags
            "wheat" => ["Color Tag"],
            "white" => ["Color Tag"],
            "whitesmoke" => ["Color Tag"],
            "white-space" => ["Specifies how white-space inside an element is handled", "pr_text_white-space.php"],
            "width" => ["Sets the width of an element", "pr_dim_width.php"],
            "word-break" => ["Specifies how words should break when reaching the end of a line", "css3_pr_word-break.php"],
            "word-spacing" => ["Increases or decreases the space between words in a text", "pr_text_word-spacing.php"],
            "writing-mode" => ["Specifies whether lines of text are laid out horizontally or vertically", "css3_pr_writing-mode.php"],
        ],
        "Y" => [
            "yellow" => ["Color Tag"],
            "yellowgreen" => ["Color Tag"]
        ],
        "Z" => [
            "z-index" => ["Sets the stack order of a positioned element", "pr_pos_z-index.php"],
        ],
    ];
    static var probability:Map<String, Int>=[];
    public static function findCompletableCSS(curInput:String, caretIndex:Int, startChar:String, popup:ui.CodeArea.AutoCompleteToolTip):Map<String, Array<String>> {
        probability = [];
        if (cssProperties.get(startChar.toUpperCase()) != null) {
            var propsWeNeed = cssProperties.get(startChar.toUpperCase());

            var curCheck:Array<String> = [];
            var i = caretIndex - 1;
            while (i >= 0) {
                var c = curInput.charAt(i);
                if (c == '\t' || c == '\n' || c == '\r' || c == ' ') break;
                curCheck.push(c);
                i--;
            }
            curCheck.reverse(); // fix reverse order

            var typed = curCheck.join("");
            trace('typed so far: $typed');

            for (name => properties in propsWeNeed) {
                if (!probability.exists(name)) probability.set(name, 0);

                if (name.startsWith(typed)) {
                    probability.set(name, 100);
                } else {
                    for (c in 0...curCheck.length) {
                        if (c < name.length && curCheck[c] == name.charAt(c))
                            probability.set(name, probability.get(name) + 1);
                        else
                            probability.set(name, probability.get(name) - 1);
                    }
                }
            }

            for (propName => score in probability) {
                if (score == 100) {
                    if(popup!=null) {
                        popup.title = propName;
                        popup.desc = propsWeNeed.get(propName)[0];
                        popup.link = propsWeNeed.get(propName)[1];
                        popup.shouldShow=true;
                    }
                    return propsWeNeed;
                }
            }
        }
        return null;
    }
}