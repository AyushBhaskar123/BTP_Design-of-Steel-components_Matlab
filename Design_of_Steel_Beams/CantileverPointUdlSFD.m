function varargout = CantileverPointUdlSFD(varargin)
% CANTILEVERPOINTUDLSFD MATLAB code for CantileverPointUdlSFD.fig
%      CANTILEVERPOINTUDLSFD, by itself, creates a new CANTILEVERPOINTUDLSFD or raises the existing
%      singleton*.
%
%      H = CANTILEVERPOINTUDLSFD returns the handle to a new CANTILEVERPOINTUDLSFD or the handle to
%      the existing singleton*.
%
%      CANTILEVERPOINTUDLSFD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CANTILEVERPOINTUDLSFD.M with the given input arguments.
%
%      CANTILEVERPOINTUDLSFD('Property','Value',...) creates a new CANTILEVERPOINTUDLSFD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CantileverPointUdlSFD_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CantileverPointUdlSFD_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CantileverPointUdlSFD

% Last Modified by GUIDE v2.5 29-Jul-2019 16:14:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CantileverPointUdlSFD_OpeningFcn, ...
                   'gui_OutputFcn',  @CantileverPointUdlSFD_OutputFcn, ...
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


% --- Executes just before CantileverPointUdlSFD is made visible.
function CantileverPointUdlSFD_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CantileverPointUdlSFD (see VARARGIN)

% Choose default command line output for CantileverPointUdlSFD
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CantileverPointUdlSFD wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CantileverPointUdlSFD_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

len=getappdata(0,'lenvalue');
c=getappdata(0,'cvalue');
p=getappdata(0,'pvalue');
a=getappdata(0,'avalue');
b=getappdata(0,'bvalue');
w=getappdata(0,'wvalue');

R1=p+(w*(b-a));
M1=(p*c)+(w*(b-a)*(b+a)/2);

if (c<=a) && (c<=b)
    
    x1=0:0.1:c;
    x2=c:0.1:a;
    x3=a:0.1:b;
    x4=b:0.1:len;
    
    y1=ones(1,((c/0.1)+1));
    y1=y1*R1;
    
    y2=ones(1,(((a-c)/0.1)+1));
    y2=y2*(R1-p);
    
    y3=R1-p-(w*(x3-a));
    
     y4=zeros(1,(((len-b)/0.1)+1));
     
      plot([0 x1 x2 x3 x4 len],[0 y1 y2 y3 y4 0],'r','LineWidth',2);
    hold on;
    
    fill([0 x1 x2 x3 x4 len],[0 y1 y2 y3 y4 0],'r');
    
    x5=[0 len];
    y5=[0 0];
    plot(x5,y5,'k','LineWidth',5);
    title('Shear Force Diagram');
    xlabel('Beam Orientation');
    ylabel('Shear Force');
    grid on;
end
if (c>=a) && (c<=b)
        
    x1=0:0.1:a;
    x2=a:0.1:c;
    x3=c:0.1:b;
    x4=b:0.1:len;
    
    y1=ones(1,((a/0.1)+1));
    y1=y1*(R1);
    
    y2=R1-(w*(x2-a));
    
    y3=R1-p-(w*(x3-a));
    
     y4=zeros(1,(((len-b)/0.1)+1));
      plot([0 x1 x2 x3 x4 len],[0 y1 y2 y3 y4 0],'r','LineWidth',2);
    hold on;
    
    fill([0 x1 x2 x3 x4 len],[0 y1 y2 y3 y4 0],'r');
    
    x5=[0 len];
    y5=[0 0];
    plot(x5,y5,'k','LineWidth',5);
    title('Shear Force Diagram');
    xlabel('Beam Orientation');
    ylabel('Shear Force');
    grid on;
end

if (c>=a) && (c>=b)
    
    x1=0:0.1:a;
    x2=a:0.1:b;
    x3=b:0.1:c;
    x4=c:0.1:len;
    
    y1=ones(1,((a/0.1)+1));
    y1=y1*(R1);
    
    y2=R1-(w*(x2-a));
    
    y3=ones(1,(((c-b)/0.1)+1));
    y3=y3*(R1-w*(b-a));
    
    y4=zeros(1,(((len-c)/0.1)+1));
    plot([0 x1 x2 x3 x4 len],[0 y1 y2 y3 y4 0],'r','LineWidth',2);
    hold on;
    
    fill([0 x1 x2 x3 x4 len],[0 y1 y2 y3 y4 0],'r');
    
    x5=[0 len];
    y5=[0 0];
    plot(x5,y5,'k','LineWidth',5);
    title('Shear Force Diagram');
    xlabel('Beam Orientation');
    ylabel('Shear Force');
    grid on;
    
end



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
