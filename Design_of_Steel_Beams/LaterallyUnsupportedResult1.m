function varargout = LaterallyUnsupportedResult1(varargin)
% LATERALLYUNSUPPORTEDRESULT1 MATLAB code for LaterallyUnsupportedResult1.fig
%      LATERALLYUNSUPPORTEDRESULT1, by itself, creates a new LATERALLYUNSUPPORTEDRESULT1 or raises the existing
%      singleton*.
%
%      H = LATERALLYUNSUPPORTEDRESULT1 returns the handle to a new LATERALLYUNSUPPORTEDRESULT1 or the handle to
%      the existing singleton*.
%
%      LATERALLYUNSUPPORTEDRESULT1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LATERALLYUNSUPPORTEDRESULT1.M with the given input arguments.
%
%      LATERALLYUNSUPPORTEDRESULT1('Property','Value',...) creates a new LATERALLYUNSUPPORTEDRESULT1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LaterallyUnsupportedResult1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LaterallyUnsupportedResult1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LaterallyUnsupportedResult1

% Last Modified by GUIDE v2.5 04-Aug-2019 23:02:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LaterallyUnsupportedResult1_OpeningFcn, ...
                   'gui_OutputFcn',  @LaterallyUnsupportedResult1_OutputFcn, ...
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


% --- Executes just before LaterallyUnsupportedResult1 is made visible.
function LaterallyUnsupportedResult1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LaterallyUnsupportedResult1 (see VARARGIN)

% Choose default command line output for LaterallyUnsupportedResult1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LaterallyUnsupportedResult1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LaterallyUnsupportedResult1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
