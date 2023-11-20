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

## Additional information
TODO: Currently commonly used widgets and properties are implemented
