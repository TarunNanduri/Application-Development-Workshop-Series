# What is CSS ?
CSS stands for Cascading Style Sheets. Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language like HTML.

It describes how HTML elements are to be displayed on screen, paper, or in other media. It can control the layout of multiple web pages all at once.

#### A Simple Example
body {
  background-color: blue;
}
h1 {
  color: red;
  text-align: center;
}
p {
  font-family: verdana;
  font-size: 50px;
}

*Here the back-ground of the web-page is set as blue. The heading has color red and is aligned at the center. The paragraph has font verdana with font size 50px(pixels).*

![example](https://geeksgod.com/wp-content/uploads/2020/04/image-49-1024x576.png)
*The visual representation of the given example*

## Methods to add CSS
There are three ways

- External CSS
- Internal CSS
- Inline CSS
### External CSS
External styles are defined within the <link> element, inside the <head> section of an HTML page:
#### example:
 
 
 
 <hea d><link rel=”stylesheet ” type=”text/css” href=”style. css”></head>

![example](https://geeksgod.com/wp-content/uploads/2020/04/image-57-600x337.png)

An external style sheet can be written in any text editor, and must be saved with a .css extension.The external .css file should not contain any HTML tags.

The style.css file:
<br>
![example](https://geeksgod.com/wp-content/uploads/2020/04/image-58-600x337.png)

### Internal CSS
The internal style is defined inside the <style> element, inside the head section.
#### example:
<hea d><title>Title</title>
<style>    
body {  background-color: blue;}
h1 {  color: red;  text-align: center;}
p {  font-family: verdana;  font-size: 50px;}     
</style></head>
 ![example](https://geeksgod.com/wp-content/uploads/2020/04/image-59-1024x576.png)


### Inline CSS
To use inline styles, add the style attribute to the relevant element. The style attribute can contain any CSS property.
#### example:
*<h 1 style=”color: blanchedalmond;”> I am heading *</h1>*
*<p sty le=”text-align: center;”>I am paragraph</ p>*

  ![example](https://geeksgod.com/wp-content/uploads/2020/04/image-60-1024x576.png)

**NOTE: Multiple ways of style sheet can be used in a single web-page.The execution of style shit will take place according to the highest priority.**

- Inline style (inside an HTML element)
- External and internal style sheets (in the head section)
- Browser default
So, an inline style has the highest priority, and will override external and internal styles and browser defaults.

## Syntax of writing CSS
The CSS syntax consist of selector and declaration block:

![selector and declaration](https://geeksgod.com/wp-content/uploads/2020/04/download.png)

To specify where CSS rule to be applied is given by using **selector**. Whereas, the **declarations** within the block determines how the elements are formatted on a web-page.


The declaration block contains one or more declarations separated by **semicolons.

Each declaration includes a CSS property name and a value, separated by a **colon.

A CSS declaration always ends with a **semicolon**, and declaration blocks are surrounded by **curly braces.

### CSS : Selectors
CSS selectors define the elements to which a set of CSS rules apply. It is used to find or select the HTML elements which you want to style.

There are different types of selectors:
**CSS element Selector**
The element selector selects HTML elements based on the element name.

#### example:
p {
  text-align: center;
  color: red;
}
*here “p” is the element selector.

**CSS id Selector**
Selects an element based on the value of its *id* attribute. There should be only one element with a given ID in a document.

To select an element with a specific id, write a hash (#) character, followed by the id of the element.

#### example:
#para {
  text-align: center;
  color: red;
}
*here “#para” is the selector.

**CSS class Selector**
This selects the HTML element of specific class.

To select elements with a specific class, write a period (.) character, followed by the class name.

#### example:
.table {
  text-align: center;
  color: red;
}
*here “.table” is the selector.

**You can also specify a particular element or elements of a class from HTML.


 
#### example:
h1.table {
  text-align: center;
  color: red;
}
*here “h1” element of class “table” is selected.

**CSS Universal Selector**
The universal selector (*) selects all HTML elements on the page.

#### example:
(*) (space) {
  text-align: center;
  color: blue;
}

**CSS Grouping Selector**
The grouping selector selects all the HTML elements with the same style definitions.

#### example:
p, h1, h2 {
text-align: center;
  color: red;
}
*here “p”, “h1” and “h2” elements got selected and same styling is applied to all.

**NOTE:** 
**These are the basic selectors, there are many other selectors which can be used. Follow up this [link](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors) to know more.**
**To explain the code “comments” are used by adding /*comment*/, so that the code can be explained in the file.**

## CSS Color
### Color Names
In CSS, a color can be specified by using a color name:
#### example:
orange, red, blue

### Background Color
You can set the background color for HTML elements:
#### example:

<h 1 s tyle=”background-color:Tomato;”>Hello!</ h 1>

### Text Color
You can set the color of text:
#### example:
*< p style=”color:DodgerBlue;”>Lorem ipsum… </ p>

### Border Color
You can set the color of borders:
#### example:
*<h 1 style=”border:2px solid DodgerBlue;”>Hello World</ h1>

### RGB-Color
**rgb(red, green, blue)**

Each parameter (red, green, and blue) defines the intensity of the color between 0 and 255.

For example, rgb(255, 0, 0) is displayed as red, because red is set to its highest value (255) and the others are set to 0.

To display black, set all color parameters to 0, like this: rgb(0, 0, 0).

### RGBA Value
**rgba(red, green, blue, alpha)**

It values are an extension of RGB color values with an alpha channel – which specifies the opacity for a color.

#### example:
rgba(255, 99, 71, 0.4)

### HEX-Color
In CSS, a color can be specified using a hexadecimal value in the form:

**#rrggbb**

Where rr (red), gg (green) and bb (blue) are hexadecimal values between 00 and ff (same as decimal 0-255).

### HSL-Color
In CSS, a color can be specified using hue, saturation, and lightness (HSL) in the form:

**hsl(hue, saturation, lightness)**

Hue is a degree on the color wheel from 0 to 360. 0 is red, 120 is green, and 240 is blue.Saturation is a percentage value, 0% means a shade of gray, and 100% is the full color.Lightness is also a percentage, 0% is black, 50% is neither light or dark, 100% is white.

## CSS-Fonts
The font CSS property is a shorthand for font-variant, font-style, font-stretch and many more . Alternatively, it sets an element’s font to a system font.

### CSS Font Families
In CSS, there are two types of font family names:

* generic family – a group of font families with a similar look (like “Serif” or “Monospace”)
* font family – a specific font family (like “Times New Roman” or “Arial”)<br>

| Generic family | Font family	              | Description                                                                        |
| -------------- | -------------------------- | ---------------------------------------------------------------------------------- |
| Serif          | Times New Roman Georgia	  | Serif fonts have small lines at the ends on some characters                        |
| Sans-serif     | Arial Verdana              | “Sans” means without – these fonts do not have the lines at the ends of characters |
| Monospace      | Courier New Lucida Console | All monospace characters have the same width                                       |

#### example:
.sansserif {
  font-family: Arial, Helvetica, sans-serif;
}<br>
**NOTE:More than one font can be inserted/specified using commas.**

### Font Style
This property has three vales:


 
* Normal
* Italic
* Oblique(leaning)
#### example:
p.italic {
  font-style: italic;
}

### Font Weight
These are of two type:

* Normal
* Bold
#### example:
h1.thick {
  font-weight: bold;
}

### Font Variant
It determines the caps of the letter. It gives normal, small-caps and big-caps value.
#### example:
p.small {
  font-variant: small-caps;
}

### Font Size
It sets the size of the font used in the web-page.
We should use proper HTML tags for headings ( from <h 1>-<h 6>) and paragraphs ( < p>).
Font – size can be absolute and relative.

**Absolute size:**
Sets the text to a specified size
Does not allow a user to change the text size in all browsers (bad for accessibility reasons)
Absolute size is useful when the physical size of the output is known
**Relative size:**
Sets the size relative to surrounding elements
Allows a user to change the text size in browsers**
#### example:

body {
  font-size: 100%;
}
*here percentage is used*

h1 {
  font-size: 2.5em;
}
*here “em” is used and 1em is qual to the original size, whereas 2.5em = 2.5*original size.*

p {
  font-size: 20px;
}
*here “px” is used which is pixels.*

**Important questions:**
* What is CSS ?
CSS stands for Cascading Style Sheets. Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language like HTML.

* Types of css files ?
1] Inline css
2] Internal css
3] external css
