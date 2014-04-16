matlab-button-background-image
==============================

Adding image background to push or toggle button in a Matlab GUI. 

The imported image data is put into the CData property of the uicontrols (limited to toggle and push button only). Note that the function will ensure the buttons' size match that of the image so that no boundary will be shown. However, when the GUI is resized, the image may appear cropped or too small for the button. 

If resize is required, an alternative would to be use the axes as the buttons by providing button up and button down images, and the code to switch the images when appropriate. 
