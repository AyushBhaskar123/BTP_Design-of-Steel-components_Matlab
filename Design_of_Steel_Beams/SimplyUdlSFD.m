function varargout = SimplyUdlSFD(varargin)
% SIMPLYUDLSFD MATLAB code for SimplyUdlSFD.fig
%      SIMPLYUDLSFD, by itself, creates a new SIMPLYUDLSFD or raises the existing
%      singleton*.
%
%      H = SIMPLYUDLSFD returns the handle to a new SIMPLYUDLSFD or the handle to
%      the existing singleton*.
%
%      SIMPLYUDLSFD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLYUDLSFD.M with the given input arguments.
%
%      SIMPLYUDLSFD('Property','Value',...) creates a new SIMPLYUDLSFD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SimplyUdlSFD_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SimplyUdlSFD_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SimplyUdlSFD

% Last Modified by GUIDE v2.5 28-Jul-2019 14:30:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SimplyUdlSFD_OpeningFcn, ...
                   'gui_OutputFcn',  @SimplyUdlSFD_OutputFcn, ...
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


% --- Executes just before SimplyUdlSFD is made visible.
function SimplyUdlSFD_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SimplyUdlSFD (see VARARGIN)

% Choose default command line output for SimplyUdlSFD
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SimplyUdlSFD wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SimplyUdlSFD_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

len=getappdata(0,'lenvalue');
a=getappdata(0,'avalue');
b=getappdata(0,'bvalue');
w=getappdata(0,'wvalue');
R2=(w*(b-a)*(b+a)/len)/2;
R1=(w*(b-a))-R2;
x1=0:0.1:a;
x2=a:0.1:b;
x3=b:0.1:len;
y1=R1;
y2=R1-(w*(x2-a));
y3=-R2;
plot([0 0 a],[0 y1 y1],'r','LineWidth',2);
hold on;
plot(x2,y2,'r','LineWidth',2);
plot([b len len],[y3 y3 0],'r','LineWidth',2);
fill([0 0 a a],[0 y1 y1 0],'r');
fill([b b len len],[0 y3 y3 0],'r');
fill([a a b b],[0 y1 y3 0],'r');
x4=[0 len];
y4=[0 0];
plot(x4,y4,'k','LineWidth',5);

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
