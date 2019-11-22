function varargout = CantileverPointBMD(varargin)
% CANTILEVERPOINTBMD MATLAB code for CantileverPointBMD.fig
%      CANTILEVERPOINTBMD, by itself, creates a new CANTILEVERPOINTBMD or raises the existing
%      singleton*.
%
%      H = CANTILEVERPOINTBMD returns the handle to a new CANTILEVERPOINTBMD or the handle to
%      the existing singleton*.
%
%      CANTILEVERPOINTBMD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CANTILEVERPOINTBMD.M with the given input arguments.
%
%      CANTILEVERPOINTBMD('Property','Value',...) creates a new CANTILEVERPOINTBMD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CantileverPointBMD_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CantileverPointBMD_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CantileverPointBMD

% Last Modified by GUIDE v2.5 29-Jul-2019 10:36:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CantileverPointBMD_OpeningFcn, ...
                   'gui_OutputFcn',  @CantileverPointBMD_OutputFcn, ...
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


% --- Executes just before CantileverPointBMD is made visible.
function CantileverPointBMD_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CantileverPointBMD (see VARARGIN)

% Choose default command line output for CantileverPointBMD
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CantileverPointBMD wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CantileverPointBMD_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

len=getappdata(0,'lenvalue');
p=getappdata(0,'pvalue');
a=getappdata(0,'avalue');

x1=0:0.1:a;
x2=a:0.1:len;

R1=p;
M1=p*a;

y1=(R1*x1)-(M1);
y2=zeros(1,(((len-a)/0.1)+1));

plot([0 x1 x2 len],[0 y1 y2 0],'r','LineWidth',2);
hold on;

fill([0 x1 x2 len],[0 y1 y2 0],'r');

x3=[0 len];
y3=[0 0];
plot(x3,y3,'k','LineWidth',5);
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
