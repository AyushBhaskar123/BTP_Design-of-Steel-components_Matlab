function varargout = plotbmd(varargin)
% PLOTBMD MATLAB code for plotbmd.fig
%      PLOTBMD, by itself, creates a new PLOTBMD or raises the existing
%      singleton*.
%
%      H = PLOTBMD returns the handle to a new PLOTBMD or the handle to
%      the existing singleton*.
%
%      PLOTBMD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PLOTBMD.M with the given input arguments.
%
%      PLOTBMD('Property','Value',...) creates a new PLOTBMD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before plotbmd_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to plotbmd_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help plotbmd

% Last Modified by GUIDE v2.5 03-Sep-2019 10:28:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @plotbmd_OpeningFcn, ...
                   'gui_OutputFcn',  @plotbmd_OutputFcn, ...
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


% --- Executes just before plotbmd is made visible.
function plotbmd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to plotbmd (see VARARGIN)

% Choose default command line output for plotbmd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes plotbmd wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = plotbmd_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

M=getappdata(0,'M_matrix_value');
x=getappdata(0,'x_matrix_value');
len=getappdata(0,'lenvalue');

plot([0 x len],[0 M 0],'g','LineWidth',2);
hold on;

fill([0 x len],[0 M 0],'g');

    x5=[0 len];
    y5=[0 0];
    plot(x5,y5,'k','LineWidth',5);
    title('Bending Moment Diagram');
    xlabel('Beam Orientation');
    ylabel('Bending Moment');
    grid on;



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
