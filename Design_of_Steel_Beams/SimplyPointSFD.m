function varargout = SimplyPointSFD(varargin)
% SIMPLYPOINTSFD MATLAB code for SimplyPointSFD.fig
%      SIMPLYPOINTSFD, by itself, creates a new SIMPLYPOINTSFD or raises the existing
%      singleton*.
%
%      H = SIMPLYPOINTSFD returns the handle to a new SIMPLYPOINTSFD or the handle to
%      the existing singleton*.
%
%      SIMPLYPOINTSFD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLYPOINTSFD.M with the given input arguments.
%
%      SIMPLYPOINTSFD('Property','Value',...) creates a new SIMPLYPOINTSFD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SimplyPointSFD_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SimplyPointSFD_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SimplyPointSFD

% Last Modified by GUIDE v2.5 23-Jul-2019 16:11:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SimplyPointSFD_OpeningFcn, ...
                   'gui_OutputFcn',  @SimplyPointSFD_OutputFcn, ...
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


% --- Executes just before SimplyPointSFD is made visible.
function SimplyPointSFD_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SimplyPointSFD (see VARARGIN)

% Choose default command line output for SimplyPointSFD
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SimplyPointSFD wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SimplyPointSFD_OutputFcn(hObject, eventdata, handles) 
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
r2=p*a/len;
y1=ones(1,((a/0.1)+1));
y1=y1*r1;
plot(x1,y1,'r','LineWidth',2);
hold on;

x2=a:0.1:len;
y2=ones(1,((len-a)/0.1)+1);
y2=y2*(-r2);
plot(x2,y2,'r','LineWidth',2);

x3=[a a];
y3=[r1 -r2];
plot(x3,y3,'r','LineWidth',2);

X=[0 0 a a];
Y=[0 r1 r1 0];
fill(X,Y,'r');
M=[a a len len];
N=[0 -r2 -r2 0];
fill(M,N,'r');
x4=[0 len];
y4=[0 0];
plot(x4,y4,'k','LineWidth',5);
title('Shear Force Diagram');
xlabel('Beam Orientation');
ylabel('Shear Force');
grid on;
% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
