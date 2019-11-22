function varargout = plotsfd(varargin)
% PLOTSFD MATLAB code for plotsfd.fig
%      PLOTSFD, by itself, creates a new PLOTSFD or raises the existing
%      singleton*.
%
%      H = PLOTSFD returns the handle to a new PLOTSFD or the handle to
%      the existing singleton*.
%
%      PLOTSFD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLOTSFD.M with the given input arguments.
%
%      PLOTSFD('Property','Value',...) creates a new PLOTSFD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before plotsfd_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to plotsfd_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help plotsfd

% Last Modified by GUIDE v2.5 02-Sep-2019 21:27:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @plotsfd_OpeningFcn, ...
                   'gui_OutputFcn',  @plotsfd_OutputFcn, ...
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


% --- Executes just before plotsfd is made visible.
function plotsfd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to plotsfd (see VARARGIN)

% Choose default command line output for plotsfd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes plotsfd wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = plotsfd_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

V=getappdata(0,'V_matrix_value');
x=getappdata(0,'x_matrix_value');
len=getappdata(0,'lenvalue');

plot([0 x len],[0 V 0],'r','LineWidth',2);
hold on;

fill([0 x len],[0 V 0],'r');

    x5=[0 len];
    y5=[0 0];
    plot(x5,y5,'k','LineWidth',5);
    title('Shear Force Diagram');
    xlabel('Beam Orientation');
    ylabel('Shear Force');
    grid on;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
