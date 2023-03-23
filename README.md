# BatchHashMap

BatchHashMap is a simple library that allows Batch scripts to simulate a HashMap data structure, providing a convenient way to store and retrieve key-value pairs.

## Usage
To use BatchHashMap in your Batch scripts, you must first import the library using the call command:

```batch
call HashMap.bat
```

You can then use the **HashMap_set** and **HashMap_get** functions to set and retrieve values from the HashMap. For example:

```batch
:: Set some values in the HashMap
call HashMap.bat set key1 value1
call HashMap.bat set key2 value2
call HashMap.bat set key3 value3

:: Get a value from the HashMap
call HashMap.bat get key2
```

You can also display usage information for the library by passing the **help** parameter:

```batch
call HashMap.bat help
```
# Contributing

If you find a bug or have a feature request, please submit an issue on the [**GitHub repository.**](https://github.com/RuskyDev/BatchHashMap/issues). Contributions are also welcome; feel free to fork the repository and submit a pull request.
