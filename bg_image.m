function varargout = bg_image(varargin)
% BG_IMAGE M-file for bg_image.fig
%      BG_IMAGE, by itself, creates a new BG_IMAGE or raises the existing
%      singleton*.
%
%      H = BG_IMAGE returns the handle to a new BG_IMAGE or the handle to
%      the existing singleton*.
%
%      BG_IMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BG_IMAGE.M with the given input arguments.
%
%      BG_IMAGE('Property','Value',...) creates a new BG_IMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bg_image_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bg_image_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bg_image

% Last Modified by GUIDE v2.5 15-Apr-2014 11:14:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bg_image_OpeningFcn, ...
                   'gui_OutputFcn',  @bg_image_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before bg_image is made visible.
function bg_image_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bg_image (see VARARGIN)

% Choose default command line output for bg_image
handles.output = hObject;

% insert background to the push button 
insertBackground(handles.pb_with_bg, 'push.png');

insertBackground(handles.tb_with_bg, 'toggle.png');


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bg_image wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bg_image_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_with_bg.
function pb_with_bg_Callback(hObject, eventdata, handles)
% hObject    handle to pb_with_bg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tb_with_bg.
function tb_with_bg_Callback(hObject, eventdata, handles)
% hObject    handle to tb_with_bg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tb_with_bg
