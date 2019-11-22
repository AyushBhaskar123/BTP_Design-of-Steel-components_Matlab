function varargout = SimplyPointUdlBMD(varargin)
% SIMPLYPOINTUDLBMD MATLAB code for SimplyPointUdlBMD.fig
%      SIMPLYPOINTUDLBMD, by itself, creates a new SIMPLYPOINTUDLBMD or raises the existing
%      singleton*.
%
%      H = SIMPLYPOINTUDLBMD returns the handle to a new SIMPLYPOINTUDLBMD or the handle to
%      the existing singleton*.
%
%      SIMPLYPOINTUDLBMD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPLYPOINTUDLBMD.M with the given input arguments.
%
%      SIMPLYPOINTUDLBMD('Property','Value',...) creates a new SIMPLYPOINTUDLBMD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SimplyPointUdlBMD_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SimplyPointUdlBMD_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SimplyPointUdlBMD

% Last Modified by GUIDE v2.5 28-Jul-2019 22:27:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SimplyPointUdlBMD_OpeningFcn, ...
                   'gui_OutputFcn',  @SimplyPointUdlBMD_OutputFcn, ...
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


% --- Executes just before SimplyPointUdlBMD is made visible.
function SimplyPointUdlBMD_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SimplyPointUdlBMD (see VARARGIN)

% Choose default command line output for SimplyPointUdlBMD
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SimplyPointUdlBMD wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SimplyPointUdlBMD_OutputFcn(hObject, eventdata, handles) 
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
r11=p*(len-c)/len;
r22=(w*(b-a)*(b+a)/len)/2;
r12=(w*(b-a))-r22;
r21=p*c/len;
R1=r11+r12;
R2=r21+r22;
if (c<=a) && (c<=b)

    x1=0:0.1:c;
    x2=c:0.1:a;
    x3=a:0.1:b;
    x4=b:0.1:len;
    
    y1=(R1*x1);
    y2=(R1*x2)-(p*(x2-c));
    y3=(R1*x3)-(p*(x3-c))-(w*((x3-a).^2)/2);
    y4=(R2*(len-x4));
    
    plot([x1 x2 x3 x4],[y1 y2 y3 y4],'r','LineWidth',2);
    hold on;
    
    fill([0 x1 x2 x3 x4 len],[0 y1 y2 y3 y4 0],'r');
    
    x5=[0 len];
    y5=[0 0];
    plot(x5,y5,'k','LineWidth',5);
    title('Bending Moment Diagram');
    xlabel('Beam Orientation');
    ylabel('Bending Moment');
    grid on;
end
if (c>=a) && (c<=b)
    
     x1=0:0.1:a;
    x2=a:0.1:c;
    x3=c:0.1:b;
    x4=b:0.1:len;
    
    y1=R1*x1;
    y2=(R1*x2)-(w*((x2-a).^2)/2);
    y3=(R1*x3)-(w*((x3-a).^2)/2)-(p*(x3-c));
    y4=R2*(len-x4);
    
    plot([x1 x2 x3 x4],[y1 y2 y3 y4],'r','LineWidth',2);
    hold on;
    
    fill([0 x1 x2 x3 x4 len],[0 y1 y2 y3 y4 0],'r');
    
    x5=[0 len];
    y5=[0 0];
    plot(x5,y5,'k','LineWidth',5);
    title('Bending Moment Diagram');
    xlabel('Beam Orientation');
    ylabel('Bending Moment');
    grid on;
end
if (c>=a) && (c>=b)
    
    x1=0:0.1:a;
    x2=a:0.1:b;
    x3=b:0.1:c;
    x4=c:0.1:len;
    
    y1=R1*x1;
    y2=(R1*x2)-(w*((x2-a).^2)/2);
    y3=(R1*x3)-(w*(b-a)*(x3-((a+b)/2)));
    y4=R2*(len-x4);
    
    plot([x1 x2 x3 x4],[y1 y2 y3 y4],'r','LineWidth',2);
    hold on;
    
    fill([0 x1 x2 x3 x4 len],[0 y1 y2 y3 y4 0],'r');
    
    x5=[0 len];
    y5=[0 0];
    plot(x5,y5,'k','LineWidth',5);
    title('Bending Moment Diagram');
    xlabel('Beam Orientation');
    ylabel('Bending Moment');
    grid on;
    
end



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
