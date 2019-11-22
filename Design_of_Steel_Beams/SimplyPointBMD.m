function varargout = SimplyPointBMD(varargin)
% SIMPLYPOINTBMD MATLAB code for SimplyPointBMD.fig
%      SIMPLYPOINTBMD, by itself, creates a new SIMPLYPOINTBMD or raises the existing
%      singleton*.
%
%      H = SIMPLYPOINTBMD returns the handle to a new SIMPLYPOINTBMD or the handle to
%      the existing singleton*.
%
%      SIMPLYPOINTBMD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLYPOINTBMD.M with the given input arguments.
%
%      SIMPLYPOINTBMD('Property','Value',...) creates a new SIMPLYPOINTBMD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SimplyPointBMD_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SimplyPointBMD_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SimplyPointBMD

% Last Modified by GUIDE v2.5 24-Jul-2019 09:54:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SimplyPointBMD_OpeningFcn, ...
                   'gui_OutputFcn',  @SimplyPointBMD_OutputFcn, ...
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


% --- Executes just before SimplyPointBMD is made visible.
function SimplyPointBMD_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SimplyPointBMD (see VARARGIN)

% Choose default command line output for SimplyPointBMD
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SimplyPointBMD wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SimplyPointBMD_OutputFcn(hObject, eventdata, handles) 
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
r1=p*(len-a)/len;
y1=r1*x1;
hold on;
plot(x1,y1,'g','LineWidth',2);
x2=a:0.1:len;
y2=(r1*x2)-(p*(x2-a));
plot(x2,y2,'g','LineWidth',2);
c=r1*a;
X=[0 a len];
Y=[0 c 0];
fill(X,Y,'g');
x4=[0 len];
y4=[0 0];
line(x4,y4,'Color','k','LineStyle','-','LineWidth',5);
grid on;
title('Bending Moment Diagram');
xlabel('Beam Orientation');
ylabel('Bending Moment');
% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
