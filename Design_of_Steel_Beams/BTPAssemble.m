function varargout = BTPAssemble(varargin)
% BTPASSEMBLE MATLAB code for BTPAssemble.fig
%      BTPASSEMBLE, by itself, creates a new BTPASSEMBLE or raises the existing
%      singleton*.
%
%      H = BTPASSEMBLE returns the handle to a new BTPASSEMBLE or the handle to
%      the existing singleton*.
%
%      BTPASSEMBLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BTPASSEMBLE.M with the given input arguments.
%
%      BTPASSEMBLE('Property','Value',...) creates a new BTPASSEMBLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BTPAssemble_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BTPAssemble_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose 'GUI allows only one
%      instance to run (sin
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BTPAssemble

% Last Modified by GUIDE v2.5 08-Sep-2019 18:02:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BTPAssemble_OpeningFcn, ...
                   'gui_OutputFcn',  @BTPAssemble_OutputFcn, ...
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


% --- Executes just before BTPAssemble is made visible.
function BTPAssemble_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BTPAssemble (see VARARGIN)

% Choose default command line output for BTPAssemble
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BTPAssemble wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BTPAssemble_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
axes(handles.axes1)
    matlabImage = imread('C:\Users\Bhaskar Datta\Desktop\New folder (2)\figures btp\images\images 1\SteelBeam1\Steel beam image.jpg');
    image(matlabImage)
    axis off
varargout{1} = handles.output;

s=sprintf('Click on NEXT after selecting appropriate options above to go ahead');
set(handles.pushbutton1,'TooltipString',s);

s1=sprintf('Click on EXIT to exit from application');
set(handles.pushbutton2,'TooltipString',s1);

s2=sprintf('Click to select Simply Supported Beam');
set(handles.radiobutton1,'TooltipString',s2);

s3=sprintf('Click to select Cantilever Beam');
set(handles.radiobutton2,'TooltipString',s3);

s4=sprintf('Click to select Point Load');
set(handles.radiobutton3,'TooltipString',s4);

s5=sprintf('Click to select Uniformly Distributed Load');
set(handles.radiobutton4,'TooltipString',s5);

s6=sprintf('Click to select Laterally Supported Beam Condition');
set(handles.radiobutton5,'TooltipString',s6);

s7=sprintf('Click to select Laterally Unsupported Beam Condition');
set(handles.radiobutton6,'TooltipString',s7);

s8=sprintf('Click to select from Economical Sections');
set(handles.radiobutton7,'TooltipString',s8);

s9=sprintf('Click to select from Indian Standard Light Beam(ISLB) Sections');
set(handles.radiobutton8,'TooltipString',s9);

s10=sprintf('Click to select from Indian Standard Medium Weight Beam(ISMB) Sections');
set(handles.radiobutton9,'TooltipString',s10);

s11=sprintf('Click to select from Indian Standard Wide Flange Beam(ISWB) Sections');
set(handles.radiobutton10,'TooltipString',s11);

s12=sprintf('Click to know the procedure of this application');
set(handles.pushbutton3,'TooltipString',s12);

s13=sprintf('Click to select a combination of Point Load and Uniformly Distributed Load');
set(handles.radiobutton11,'TooltipString',s13);



% --- Executes on key press with focus on figure1 or any of its controls.
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radio1=get(handles.radiobutton1, 'Value'); %handles.radiobutton1.Value;
radio2=get(handles.radiobutton2, 'Value'); % handles.radiobutton2.Value;
radio3=get(handles.radiobutton3, 'Value'); %handles.radiobutton3.Value;
radio4=get(handles.radiobutton4, 'Value'); %handles.radiobutton4.Value;
radio5=get(handles.radiobutton5, 'Value'); %handles.radiobutton5.Value;
radio6=get(handles.radiobutton6, 'Value'); %handles.radiobutton6.Value;
radio7=get(handles.radiobutton7, 'Value'); %handles.radiobutton1.Value;
radio8=get(handles.radiobutton8, 'Value'); % handles.radiobutton2.Value;
radio9=get(handles.radiobutton9, 'Value'); %handles.radiobutton3.Value;
radio10=get(handles.radiobutton10, 'Value'); %handles.radiobutton4.Value;
radio11=get(handles.radiobutton11, 'Value'); %handles.radiobutton5.Value;

setappdata(0,'radio1value',radio1);
setappdata(0,'radio2value',radio2);
setappdata(0,'radio3value',radio3);
setappdata(0,'radio4value',radio4);
setappdata(0,'radio5value',radio5);
setappdata(0,'radio6value',radio6);
setappdata(0,'radio7value',radio7);
setappdata(0,'radio8value',radio8);
setappdata(0,'radio9value',radio9);
setappdata(0,'radio10value',radio10);
setappdata(0,'radio11value',radio11);
if (radio1==1 && radio3==1)
    SimplyPoint
elseif (radio1==1 && radio4==1)
    SimplyUDL
elseif (radio2==1 && radio3==1)
    CantileverPoint
elseif (radio2==1 && radio4==1)
    CantileverUDL
elseif (radio1==1 && radio11==1)
    SimplyPointUdl
elseif (radio2==1 && radio11==1)
    CantileverPointUdl
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Help


% --- Executes on button press in radiobutton11.
function radiobutton11_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton11


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

radio1=get(handles.radiobutton1, 'Value'); %handles.radiobutton1.Value;
radio2=get(handles.radiobutton2, 'Value'); % handles.radiobutton2.Value;
radio3=get(handles.radiobutton3, 'Value'); %handles.radiobutton3.Value;
radio4=get(handles.radiobutton4, 'Value'); %handles.radiobutton4.Value;
radio5=get(handles.radiobutton5, 'Value'); %handles.radiobutton5.Value;
radio6=get(handles.radiobutton6, 'Value'); %handles.radiobutton6.Value;
radio7=get(handles.radiobutton7, 'Value'); %handles.radiobutton1.Value;
radio8=get(handles.radiobutton8, 'Value'); % handles.radiobutton2.Value;
radio9=get(handles.radiobutton9, 'Value'); %handles.radiobutton3.Value;
radio10=get(handles.radiobutton10, 'Value'); %handles.radiobutton4.Value;
radio11=get(handles.radiobutton11, 'Value'); %handles.radiobutton5.Value;

setappdata(0,'radio1value',radio1);
setappdata(0,'radio2value',radio2);
setappdata(0,'radio3value',radio3);
setappdata(0,'radio4value',radio4);
setappdata(0,'radio5value',radio5);
setappdata(0,'radio6value',radio6);
setappdata(0,'radio7value',radio7);
setappdata(0,'radio8value',radio8);
setappdata(0,'radio9value',radio9);
setappdata(0,'radio10value',radio10);
setappdata(0,'radio11value',radio11);
Trying
