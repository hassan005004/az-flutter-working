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
.widthFull()
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


## Additional information
TODO: Currently commonly used widgets and properties are implemented
