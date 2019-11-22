function varargout = DOTM(varargin)
% DOTM MATLAB code for DOTM.fig
%      DOTM, by itself, creates a new DOTM or raises the existing
%      singleton*.
%
%      H = DOTM returns the handle to a new DOTM or the handle to
%      the existing singleton*.
%
%      DOTM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DOTM.M with the given input arguments.
%
%      DOTM('Property','Value',...) creates a new DOTM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DOTM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DOTM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DOTM

% Last Modified by GUIDE v2.5 16-Oct-2019 20:40:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DOTM_OpeningFcn, ...
                   'gui_OutputFcn',  @DOTM_OutputFcn, ...
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


% --- Executes just before DOTM is made visible.
function DOTM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DOTM (see VARARGIN)

% Choose default command line output for DOTM
handles.output = hObject;
axes(handles.axes1)
matlabImage = imread('C:\Users\Bhaskar Datta\Desktop\DoTM.jpg');
image(matlabImage)
axis off
axes(handles.axes2)
matlabImage = imread('C:\Users\Bhaskar Datta\Desktop\tension4.png');
image(matlabImage)
axis off
%uicontrol( 'text11', ... 
%              'String', '<u>Underline</u>');% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DOTM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DOTM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
input = get(hObject,'String');
display(input);


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
input = get(hObject,'String');
display(input);


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double



% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in radiobutton2.
%function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2



% --- Executes on button press in radiobutton3.
%function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
%function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in pushbutton1.

function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radio5=get(handles.radiobutton5, 'Value'); % handles.radiobutton2.Value;
% radio6=get(handles.radiobutton6, 'Value'); %handles.radiobutton3.Value;
radio7=get(handles.radiobutton7, 'Value'); %handles.radiobutton4.Value;
radio8=get(handles.radiobutton8, 'Value'); % handles.radiobutton2.Value;
radio12=get(handles.radiobutton12, 'Value'); % handles.radiobutton2.Value;
% radio10=get(handles.radiobutton10, 'Value'); % handles.radiobutton2.Value;
% 
setappdata(0,'radio5value',radio5);
% setappdata(0,'radio6value',radio6);
setappdata(0,'radio7value',radio7);

ten=str2double(get(handles.edit2,'String'));
fy=str2double(get(handles.edit5,'String'));
fu=str2double(get(handles.edit3,'String'));
setappdata(0,'ten',ten);
setappdata(0,'fy',fy);
setappdata(0,'fu',fu);
result_section = 0;

if(radio7==1 && radio8==1)
    name={'ISA 2020','ISA 2020','ISA 2525','ISA 2525','ISA 2525','ISA 3030','ISA 3030','ISA 3030','ISA 3535','ISA 3535','ISA 3535','ISA 3535','ISA 4040','ISA 4040','ISA 4040','ISA 4040','ISA 4545','ISA 4545','ISA 4545','ISA 4545','ISA 5050','ISA 5050','ISA 5050','ISA 5050','ISA 5555','ISA 5555','ISA 5555','ISA 5555','ISA 6060','ISA 6060','ISA 6060','ISA 6060','ISA 6565','ISA 6565','ISA 6565','ISA 6565','ISA 7070','ISA 7070','ISA 7070','ISA 7070','ISA 7575','ISA 7575','ISA 7575','ISA 7575','ISA 8080','ISA 8080','ISA 8080','ISA 8080','ISA 9090','ISA 9090','ISA 9090','ISA 9090','ISA 100100','ISA 100100','ISA 100100','ISA 100100','ISA 110110','ISA 110110','ISA 110110','ISA 110110','ISA 130130','ISA 130130','ISA 130130','ISA 130130','ISA 150150','ISA 150150','ISA 150150','ISA 150150','ISA 200200','ISA 200200','ISA 200200','ISA 200200'};
t=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
        a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200];
        b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200];
        Ag=[1.12,1.45,1.41,1.84,2.25,1.73,2.26,2.77,2.03,2.66,3.27,3.86,2.34,3.07,3.78,4.47,2.64,3.47,4.28,5.07,2.95,3.88,4.79,5.68,5.27,6.26,8.18,10.02,5.75,6.84,8.96,11.00,6.25,7.44,9.76,12.00,6.77,8.06,10.58,13.02,7.27,8.66,11.38,14.02,9.29,12.21,15.05,17.81,10.47,13.79,17.03,20.19,11.67,15.39,19.03,22.59,17.02,21.06,25.02,30.81,20.22,25.06,29.82,36.81,29.03,34.59,42.78,50.79,46.61,57.80,68.81,93.80];
        w=[0.9,1.1,1.1,1.4,1.8,1.4,1.8,2.2,1.6,2.1,2.6,3.0,1.8,2.4,3.0,3.5,2.1,2.7,3.4,4.0,2.3,3.0,3.8,4.5,4.1,4.9,6.4,7.9,4.5,5.4,7.0,8.6,4.9,5.8,7.7,9.4,5.3,6.3,8.3,10.2,5.7,6.8,8.9,11.0,7.3,9.6,11.8,14.0,8.2,10.8,13.4,15.8,9.2,12.1,14.9,17.7,13.4,16.5,19.6,24.2,15.9,19.7,23.4,28.9,22.8,27.2,33.6,39.9,36.6,45.4,54.0,73.6];
    setappdata(0,'name',name);
    setappdata(0,'t',t);
    setappdata(0,'a',a);
    setappdata(0,'b',b);
    setappdata(0,'Ag',Ag);
    setappdata(0,'w',w);
        InputDetails
%     fub=getappdata(0,'fub');
%     d=getappdata(0,'d');
% %    ISASeries=["ISA 2020","ISA 2020","ISA 2525","ISA 2525","ISA 2525","ISA 3030","ISA 3030","ISA 3030","ISA 3535","ISA 3535","ISA 3535","ISA 3535","ISA 4040","ISA 4040","ISA 4040","ISA 4040","ISA 4545","ISA 4545","ISA 4545","ISA 4545","ISA 5050","ISA 5050","ISA 5050","ISA 5050","ISA 5555","ISA 5555","ISA 5555","ISA 5555","ISA 6060","ISA 6060","ISA 6060","ISA 6060","ISA 6565","ISA 6565","ISA 6565","ISA 6565","ISA 7070","ISA 7070","ISA 7070","ISA 7070","ISA 7575","ISA 7575","ISA 7575","ISA 7575","ISA 8080","ISA 8080","ISA 8080","ISA 8080","ISA 9090","ISA 9090","ISA 9090","ISA 9090","ISA 100100","ISA 100100","ISA 100100","ISA 100100","ISA 110110","ISA 110110","ISA 110110","ISA 110110","ISA 130130","ISA 130130","ISA 130130","ISA 130130","ISA 150150","ISA 150150","ISA 150150","ISA 150150","ISA 200200","ISA 200200","ISA 200200","ISA 200200"]
%         TValues=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
%         a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%         b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%         AreaValues=[1.12,1.45,1.41,1.84,2.25,1.73,2.26,2.77,2.03,2.66,3.27,3.86,2.34,3.07,3.78,4.47,2.64,3.47,4.28,5.07,2.95,3.88,4.79,5.68,5.27,6.26,8.18,10.02,5.75,6.84,8.96,11.00,6.25,7.44,9.76,12.00,6.77,8.06,10.58,13.02,7.27,8.66,11.38,14.02,9.29,12.21,15.05,17.81,10.47,13.79,17.03,20.19,11.67,15.39,19.03,22.59,17.02,21.06,25.02,30.81,20.22,25.06,29.82,36.81,29.03,34.59,42.78,50.79,46.61,57.80,68.81,93.80]
%         w=[0.9,1.1,1.1,1.4,1.8,1.4,1.8,2.2,1.6,2.1,2.6,3.0,1.8,2.4,3.0,3.5,2.1,2.7,3.4,4.0,2.3,3.0,3.8,4.5,4.1,4.9,6.4,7.9,4.5,5.4,7.0,8.6,4.9,5.8,7.7,9.4,5.3,6.3,8.3,10.2,5.7,6.8,8.9,11.0,7.3,9.6,11.8,14.0,8.2,10.8,13.4,15.8,9.2,12.1,14.9,17.7,13.4,16.5,19.6,24.2,15.9,19.7,23.4,28.9,22.8,27.2,33.6,39.9,36.6,45.4,54.0,73.6]
%    ISASeries={'ISA 2020','ISA 2020','ISA 2525','ISA 2525','ISA 2525','ISA 3030','ISA 3030','ISA 3030','ISA 3535','ISA 3535','ISA 3535','ISA 3535','ISA 4040','ISA 4040','ISA 4040','ISA 4040','ISA 4545','ISA 4545','ISA 4545','ISA 4545','ISA 5050','ISA 5050','ISA 5050','ISA 5050','ISA 5555','ISA 5555','ISA 5555','ISA 5555','ISA 6060','ISA 6060','ISA 6060','ISA 6060','ISA 6565','ISA 6565','ISA 6565','ISA 6565','ISA 7070','ISA 7070','ISA 7070','ISA 7070','ISA 7575','ISA 7575','ISA 7575','ISA 7575','ISA 8080','ISA 8080','ISA 8080','ISA 8080','ISA 9090','ISA 9090','ISA 9090','ISA 9090','ISA 100100','ISA 100100','ISA 100100','ISA 100100','ISA 110110','ISA 110110','ISA 110110','ISA 110110','ISA 130130','ISA 130130','ISA 130130','ISA 130130','ISA 150150','ISA 150150','ISA 150150','ISA 150150','ISA 200200','ISA 200200','ISA 200200','ISA 200200'};
% %         ISASeries=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
% %         a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
% %         b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
% %         AreaValues=[1.12,1.45,1.41,1.84,2.25,1.73,2.26,2.77,2.03,2.66,3.27,3.86,2.34,3.07,3.78,4.47,2.64,3.47,4.28,5.07,2.95,3.88,4.79,5.68,5.27,6.26,8.18,10.02,5.75,6.84,8.96,11.00,6.25,7.44,9.76,12.00,6.77,8.06,10.58,13.02,7.27,8.66,11.38,14.02,9.29,12.21,15.05,17.81,10.47,13.79,17.03,20.19,11.67,15.39,19.03,22.59,17.02,21.06,25.02,30.81,20.22,25.06,29.82,36.81,29.03,34.59,42.78,50.79,46.61,57.80,68.81,93.80]
% %          TValues=[4.0 4.4 4.8 5.5 5.7 6.5 6.9 7.5 8.1 8.9 9.4 10.2 11.2 12.0];
% %         w=[0.9,1.1,1.1,1.4,1.8,1.4,1.8,2.2,1.6,2.1,2.6,3.0,1.8,2.4,3.0,3.5,2.1,2.7,3.4,4.0,2.3,3.0,3.8,4.5,4.1,4.9,6.4,7.9,4.5,5.4,7.0,8.6,4.9,5.8,7.7,9.4,5.3,6.3,8.3,10.2,5.7,6.8,8.9,11.0,7.3,9.6,11.8,14.0,8.2,10.8,13.4,15.8,9.2,12.1,14.9,17.7,13.4,16.5,19.6,24.2,15.9,19.7,23.4,28.9,22.8,27.2,33.6,39.9,36.6,45.4,54.0,73.6]
% %     
%     [~,length]=size(ISASeries);
%     for i=1:length
% %          bs=(2*w(i))+TValues(i);
%         Tdg=(AreaValues(i)*fy)/1.1;
%     %     if(ten>Tdg)
%     %         b=1.4-(0.076*(w(i)/TValues(i))*(fy/fu)*(bs/lc));
%     %         if((b<0.7) || (b>(fu*1.1)/(fy*1.25)))
%     %             continue;
% 
%     %     Tdn=(0.9*Anc*fu)/1.25+(b*Ago*fy)/1.1;
% %         d=20*10^-3;
%         Anb=0.78*(3.14/4)*d*d;
%         Vnsb=(fu/1.73)*(Anb);
%         Vdsb=Vnsb/1.25;
% %         fub=440;
%         kb=min([0.566,0.833,fub/fu,1]);
%         Vnpb=2.5*kb*d*TValues(i)*fu;
%         Vdpb=Vnpb/1.25;
%         l=floor(ten/min(Vdsb,Vdpb));
%         k=l+1;
%         if((k==2)|| k ==1)
%             alpha1=0.6;
%         else
%             if(k==3)
%                 alpha1=0.7;
%             else
%                 if(k>=4)
%                     alpha1=0.8;
%                 end
%             end
%         end
% 
%         An=AreaValues(i)-((3.14/4)*d*d);
%         Tdn=(alpha1*An*fu)/1.25;
%         Tdn
%         Tdg
%         ten
%         if(ten>min(Tdg,Tdn))
%             result_section = 0;
%             continue;
%         else
%             result_section = 1;
%             break;
%         end
%     end
% end
%     if result_section == 1
%     setappdata(0,'ISA',ISASeries{i});
%     setappdata(0,'k',k);
%     setappdata(0,'Tdg',Tdg);
%     setappdata(0,'Tdn',Tdn);
%     Result
   end
% result_section = 0;       
% if(radio7==1 && radio10==1)
%     ISASeries={'ISA100','ISA125','ISA150','ISA175','ISA200','ISA225','ISA250','ISA300','ISA350','ISA400','ISA450','ISA500','ISA550','ISA600'};
%     AreaValues=[14.60 16.60 19.0 24.62 32.33 39.72 47.55 56.26 66.71 78.46 92.27 110.74 132.11 156.21]*(10^-4);
%     w=[7.1 8.1 9.9 12.8 16.7 19.3 19.8 23.5 27.9 33.0 37.7 44.2 43.1 56.9 61.5 65.3 72.4 75.0 86.3 95.2 99.5 112.5 122.6 133.7 145.1];
%     TValues=[4.0 4.4 4.8 5.5 5.7 6.5 6.9 7.5 8.1 8.9 9.4 10.2 11.2 12.0];
%     [~,length]=size(ISASeries);
%     for i=1:length
%         fwd=fu/(1.73*1.25);
%         s=10;
%         Twd=0.707*s*TValues(i)*fwd; 
%          if(ten>Twd)
%              result_section = 0;
%              i
%             continue;
%         else
%             result_section = 1;
%             break;
%          end
%     end
% end
if result_section == 1
    setappdata(0,'ISA',ISASeries{k});
    k = [];
    setappdata(0,'k',k);
    Tdg = [];
    setappdata(0,'Tdg',Tdg);
    setappdata(0,'Tdn',Twd);
    Result
end
if(radio7==1 && radio12==1)
    name={'ISA 2020','ISA 2020','ISA 2525','ISA 2525','ISA 2525','ISA 3030','ISA 3030','ISA 3030','ISA 3535','ISA 3535','ISA 3535','ISA 3535','ISA 4040','ISA 4040','ISA 4040','ISA 4040','ISA 4545','ISA 4545','ISA 4545','ISA 4545','ISA 5050','ISA 5050','ISA 5050','ISA 5050','ISA 5555','ISA 5555','ISA 5555','ISA 5555','ISA 6060','ISA 6060','ISA 6060','ISA 6060','ISA 6565','ISA 6565','ISA 6565','ISA 6565','ISA 7070','ISA 7070','ISA 7070','ISA 7070','ISA 7575','ISA 7575','ISA 7575','ISA 7575','ISA 8080','ISA 8080','ISA 8080','ISA 8080','ISA 9090','ISA 9090','ISA 9090','ISA 9090','ISA 100100','ISA 100100','ISA 100100','ISA 100100','ISA 110110','ISA 110110','ISA 110110','ISA 110110','ISA 130130','ISA 130130','ISA 130130','ISA 130130','ISA 150150','ISA 150150','ISA 150150','ISA 150150','ISA 200200','ISA 200200','ISA 200200','ISA 200200'};
t=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
        a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200];
        b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200];
        Ag=[1.12,1.45,1.41,1.84,2.25,1.73,2.26,2.77,2.03,2.66,3.27,3.86,2.34,3.07,3.78,4.47,2.64,3.47,4.28,5.07,2.95,3.88,4.79,5.68,5.27,6.26,8.18,10.02,5.75,6.84,8.96,11.00,6.25,7.44,9.76,12.00,6.77,8.06,10.58,13.02,7.27,8.66,11.38,14.02,9.29,12.21,15.05,17.81,10.47,13.79,17.03,20.19,11.67,15.39,19.03,22.59,17.02,21.06,25.02,30.81,20.22,25.06,29.82,36.81,29.03,34.59,42.78,50.79,46.61,57.80,68.81,93.80];
        w=[0.9,1.1,1.1,1.4,1.8,1.4,1.8,2.2,1.6,2.1,2.6,3.0,1.8,2.4,3.0,3.5,2.1,2.7,3.4,4.0,2.3,3.0,3.8,4.5,4.1,4.9,6.4,7.9,4.5,5.4,7.0,8.6,4.9,5.8,7.7,9.4,5.3,6.3,8.3,10.2,5.7,6.8,8.9,11.0,7.3,9.6,11.8,14.0,8.2,10.8,13.4,15.8,9.2,12.1,14.9,17.7,13.4,16.5,19.6,24.2,15.9,19.7,23.4,28.9,22.8,27.2,33.6,39.9,36.6,45.4,54.0,73.6];
%     t=[4.6 4.6 5.0 5.0 6.9 8.6 7.3 8.6 8.2 8.8 9.4 12.4 9.8 12.5 16.0 13.4 17.4 14.1 15.0 14.7 15.5 17.6 20.8 21.3 23.6]*(10^-3);
        setappdata(0,'name',name);
    setappdata(0,'t',t);
    setappdata(0,'a',a);
    setappdata(0,'b',b);
    setappdata(0,'Ag',Ag);
    setappdata(0,'w',w);
        InputDetails
    
%     ISASeries={'ISA100','ISA125','ISA150','ISA175','ISA200','ISA225','ISA250','ISA300','ISA350','ISA400','ISA450','ISA500','ISA550','ISA600'};
%     AreaValues=[14.60 16.60 19.0 24.62 32.33 39.72 47.55 56.26 66.71 78.46 92.27 110.74 132.11 156.21];
%     w=[7.1 8.1 9.9 12.8 16.7 19.3 19.8 23.5 27.9 33.0 37.7 44.2 43.1 56.9 61.5 65.3 72.4 75.0 86.3 95.2 99.5 112.5 122.6 133.7 145.1];
%     TValues=[4.0 4.4 4.8 5.5 5.7 6.5 6.9 7.5 8.1 8.9 9.4 10.2 11.2 12.0];
%     [~,length]=size(ISASeries);
%     for k=1:length
%         Tdg=(AreaValues(k)*fy)/1.1;
%          fub=440;
%           d=20*10^-3;
%         Anb=0.78*(3.14/4)*d*d;
%         Vnsf=0.55*1*1*0.7*fub*Anb;
%         Vdsf=Vnsf/1.25;
%         if(ten>Vdsf)
%             continue;
%         end
%     end
end
if(radio5==1 && radio12==1)
    name={'ISJB150','ISJB175','ISJB200','ISJB225','ISLB175','ISMB175','ISLB200','ISLB225','ISLB250','ISLB275','ISLB300','ISMB300','ISLB325','ISLB400','ISMB400','ISLB450','ISMB450','ISLB500','ISLB550','ISWB500','ISLB600','ISWB550','ISMB600','ISWB600','ISWB600'};
    w=[7.1 8.1 9.9 12.8 16.7 19.3 19.8 23.5 27.9 33.0 37.7 44.2 43.1 56.9 61.5 65.3 72.4 75.0 86.3 95.2 99.5 112.5 122.6 133.7 145.1];
    Ag=[9.01 10.28 12.64 16.28 21.30 24.62 25.27 29.92 35.53 42.02 48.08 56.26 54.90 72.43 78.40 83.14 92.27 95.50 109.97 121.22 126.07 143.34 156.21 170.38 184.86];
    a=[150 175 200 225 175 175 200 225 250 275 300 300 325 400 400 450 450 500 550 500 600 550 600 600 600];
    b=[50 50 60 80 90 90 100 100 125 140 150 140 165 165 140 170 150 180 190 250 210 250 210 250 250];
     t=[4.6 4.6 5.0 5.0 6.9 8.6 7.3 8.6 8.2 8.8 9.4 12.4 9.8 12.5 16.0 13.4 17.4 14.1 15.0 14.7 15.5 17.6 20.8 21.3 23.6];
    setappdata(0,'name',name);
    setappdata(0,'t',t);
    setappdata(0,'a',a);
    setappdata(0,'b',b);
    setappdata(0,'Ag',Ag);
    setappdata(0,'w',w);
    InputDetails
end
if(radio5==1 && radio8==1)
    name={'ISJB150','ISJB175','ISJB200','ISJB225','ISLB175','ISMB175','ISLB200','ISLB225','ISLB250','ISLB275','ISLB300','ISMB300','ISLB325','ISLB400','ISMB400','ISLB450','ISMB450','ISLB500','ISLB550','ISWB500','ISLB600','ISWB550','ISMB600','ISWB600','ISWB600'};
    w=[7.1 8.1 9.9 12.8 16.7 19.3 19.8 23.5 27.9 33.0 37.7 44.2 43.1 56.9 61.5 65.3 72.4 75.0 86.3 95.2 99.5 112.5 122.6 133.7 145.1];
    Ag=[9.01 10.28 12.64 16.28 21.30 24.62 25.27 29.92 35.53 42.02 48.08 56.26 54.90 72.43 78.40 83.14 92.27 95.50 109.97 121.22 126.07 143.34 156.21 170.38 184.86];
    a=[150 175 200 225 175 175 200 225 250 275 300 300 325 400 400 450 450 500 550 500 600 550 600 600 600];
    b=[50 50 60 80 90 90 100 100 125 140 150 140 165 165 140 170 150 180 190 250 210 250 210 250 250];
     t=[4.6 4.6 5.0 5.0 6.9 8.6 7.3 8.6 8.2 8.8 9.4 12.4 9.8 12.5 16.0 13.4 17.4 14.1 15.0 14.7 15.5 17.6 20.8 21.3 23.6];
    setappdata(0,'name',name);
    setappdata(0,'t',t);
    setappdata(0,'a',a);
    setappdata(0,'b',b);
    setappdata(0,'Ag',Ag);
    setappdata(0,'w',w);
    InputDetails
  
    
    %Avg=
    %Atn=
    %Avn=
    %Atg=
    %Tdb1=(Avg*fy)/(1.732*1.25)+(0.9*Atn*fu)/1.25;
    %Tdb2=(0.9*Avn*fu)/(1.732*1.25)+(Atg*fy)/1.1;
    %Tdb=min(Tdb1,Tdb2);//
end
setappdata(0,'r8',radio8);
setappdata(0,'r7', radio7);
% setappdata(0,'r10', radio10);  
    
    
    
% GrossYielding


% --- Executes on button press in togglebutton2.
% if(radio6==1 && radio8==1)
%     name=['ISA 2020','ISA 2020','ISA 2525','ISA 2525','ISA 2525','ISA 3030','ISA 3030','ISA 3030','ISA 3535','ISA 3535','ISA 3535','ISA 3535','ISA 4040','ISA 4040','ISA 4040','ISA 4040','ISA 4545','ISA 4545','ISA 4545','ISA 4545','ISA 5050','ISA 5050','ISA 5050','ISA 5050','ISA 5555','ISA 5555','ISA 5555','ISA 5555','ISA 6060','ISA 6060','ISA 6060','ISA 6060','ISA 6565','ISA 6565','ISA 6565','ISA 6565','ISA 7070','ISA 7070','ISA 7070','ISA 7070','ISA 7575','ISA 7575','ISA 7575','ISA 7575','ISA 8080','ISA 8080','ISA 8080','ISA 8080','ISA 9090','ISA 9090','ISA 9090','ISA 9090','ISA 100100','ISA 100100','ISA 100100','ISA 100100','ISA 110110','ISA 110110','ISA 110110','ISA 110110','ISA 130130','ISA 130130','ISA 130130','ISA 130130','ISA 150150','ISA 150150','ISA 150150','ISA 150150','ISA 200200','ISA 200200','ISA 200200','ISA 200200'];        t=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
%         a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200];
%         b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200];
%         Ag=[1.12,1.45,1.41,1.84,2.25,1.73,2.26,2.77,2.03,2.66,3.27,3.86,2.34,3.07,3.78,4.47,2.64,3.47,4.28,5.07,2.95,3.88,4.79,5.68,5.27,6.26,8.18,10.02,5.75,6.84,8.96,11.00,6.25,7.44,9.76,12.00,6.77,8.06,10.58,13.02,7.27,8.66,11.38,14.02,9.29,12.21,15.05,17.81,10.47,13.79,17.03,20.19,11.67,15.39,19.03,22.59,17.02,21.06,25.02,30.81,20.22,25.06,29.82,36.81,29.03,34.59,42.78,50.79,46.61,57.80,68.81,93.80];
%         w=[0.9,1.1,1.1,1.4,1.8,1.4,1.8,2.2,1.6,2.1,2.6,3.0,1.8,2.4,3.0,3.5,2.1,2.7,3.4,4.0,2.3,3.0,3.8,4.5,4.1,4.9,6.4,7.9,4.5,5.4,7.0,8.6,4.9,5.8,7.7,9.4,5.3,6.3,8.3,10.2,5.7,6.8,8.9,11.0,7.3,9.6,11.8,14.0,8.2,10.8,13.4,15.8,9.2,12.1,14.9,17.7,13.4,16.5,19.6,24.2,15.9,19.7,23.4,28.9,22.8,27.2,33.6,39.9,36.6,45.4,54.0,73.6];
%     [~,length]=size(name);
%     for i=1:length
%         Vdsb=(Fub/1000)*(1*0.78*(math.pi)*(d**2)/4)/(math.sqrt(3)*1.25);
%             A=[(1.7/3.0),((2.5*d/(3*d0))-0.25),(Fub/Fu),1.0];
%             kb=min(A);
%            
%                 Vdpb=(2.5*kb*d*t(i)*Fu/GammaMb)/1000;
%             
%             BoltF=min(Vdsb,Vdpb);
%             nbolt=floor(ten/BoltF);
%             
%             Tdg=(Ag(i)*100*Fy/Gamma)/1000;
%             
% 
%             
%                 Beta0=(1.4)-(0.076*(Fy/Fu)*(a(i)/t(i))*(((a(i)+(0.5*b[i]))-t(i))/((nbolt-1)*(2.5*d))))
%            
%             Beta1=float(0.7);
%             Beta2=(Fu*Gamma/(Fy*GammaMb));
%             Beta=float(0);
%             if(Beta0<=Beta1 && Beta0<=Beta2)
%                 Beta=float(0.7);
%             end
%             if(Beta0>=Beta1 && Beta0<=Beta2)
%                 Beta=Beta0;
%             end
%             if(Beta0>=Beta2)
%                 Beta=Beta2;
%             end
%           
%                 Anc=(a(i)-(t(i)/2)-d0)*t(i);
%                 Ago=(a(i)-(t(i)/2))*t(i);
%                   
%            
% 
%             Tdn=((0.9*Anc*Fu/GammaMb)+(Beta*Ago*Fy/Gamma))/1000;
% %         Tdg=(AreaValues(i)*fy)/1.1;
% %         d=20*10^-3;
% %         Anb=0.78*(3.14/4)*d*d;
% %         Vnsb=(fu/1.73)*(Anb);
% %         Vdsb=(Vnsb/1.25)*1000;
% %         fub=440;
% %         kb=min([0.566,0.833,fub/fu,1]);
% %         Vnpb=2.5*kb*d*TValues(i)*fu;
% %         Vdpb=Vnpb/1.25;
% %         l=floor(ten/min(Vdsb,Vdpb));
% %         n=l+1;
% %         An=AreaValues(i)-n*d;
% %         Tdn=(0.9*An*fu)/1.25;
% %         Anc=(a(i)-(t(i)/2)-d0)*t(i)
% %                 Ago=(a(i)-(t(i)/2))*t(i)
% %             if(x==3):
% %                 Anc=(h[i]-tf[i]-d0)*tw[i]
% %                 Ago=Ag[i]-(h[i]-tf[i]-d0)*tw[i]
% 
%  
% 
%             
%               Avg=t(i)*(((nbolt-1)*(2.5*d))+(1.7*d0));
%                 Avn=t(i)*(((nbolt-1)*(2.5*d))+(1.7*d0)-((nbolt-0.5)*d0));
% 
%                 Atg=t(i)*((a(i)-(t(i)/2))/2);
%                 Atn=t(i)*(((a(i)-(t(i)/2))/2)-(0.5*d0));
%            
% 
%          t3=((Avg*Fy/(math.sqrt(3)*Gamma))+(0.9*Atn*Fu/1.25))/1000;
%             t4=((0.9*Avn*Fu/(math.sqrt(3)*GammaMb))+(Atg*Fy/1.25))/1000;
%         if(ten>min(Tdg,Tdn,t3,t4))
%             continue;
%         else
%             setappdata(0,'ISA',ISASeries{i});
%             setappdata(0,'k',n);
%             setappdata(0,'Tdg',Tdg);
%              setappdata(0,'Tdn',Tdn);
%              Result
            % break;
% end
           


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Help;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
