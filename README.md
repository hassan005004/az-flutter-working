## Features

This package is develop to speed up the process of UI development

## Get Started
You can start by changing your some widget to Az widgets like this
### Way one: Widget
Directly call our widgets
```
Text() to AzText()
Button() to AzButton()
and so on
```
### Way Two: Extension 
Use extension method on exiting project
```
Text().azText()
Button().azButton()
and so on
```

### AzContainer
Calling as extension on AzText() to show border
```
AzText('Text')
.container()
.borderColor(Colors.pink)
.primaryBorder()
.borderWidth(1)
.borderFromLTRB(bool left, bool top, bool right, bool bottom), // it will build border, so border properties change befire call this
```

### AzButton
Simple example of calling AzButton
```
AzButton('Text')
.wFull()
.primaryOutline()
.onPressed(() {
    print('On Pressed call this');
}),
```

### Color Groups
These are the color groups implemented on specific widgets
```
primary, secondary, success, info, warning, danger, dark, light

calling as
primaryColor,
primaryBorder,
primaryCard,
primaryBg
```

## Additional Information
TODO: Currently commonly used widgets and properties are implemented


## Additional
### Use Hex Color Code
Now you can use fromHex() extension on string to see output of hex color code
```
'#E1E1E1'.fromHex()

with hex code example
AzText("Color").color('#000000'.fromHex())
without hex code example
AzText("Color").color(Colors.black)
```

### Responsive Screen
You can make your screen responsive screen by following methods.
<br />
It will convert your widget to Sizedbox
<br />
The responsive word col is derived from bootstrap css package
```
Example 1
AzText('Text').toResponsive().sm1(context).md1(context).lg2(context).xl1(context)

Example 2 with single method
AzText('Text').toResponsive().col('col-sm-1 col-md-1 col-lg-2 col-xl-1')
```

### Navigate to Screen
You can navigate between screen like this
```
Goto new screen
AzNavigate(context).to(
    screen: HomeScreen(),
    direction:'up'
);

Go back to previous screen
AzNavigate(context).back()
```

