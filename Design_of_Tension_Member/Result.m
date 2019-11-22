function varargout = Result(varargin)
% RESULT MATLAB code for Result.fig
%      RESULT, by itself, creates a new RESULT or raises the existing
%      singleton*.
%
%      H = RESULT returns the handle to a new RESULT or the handle to
%      the existing singleton*.
%
%      RESULT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULT.M with the given input arguments.
%
%      RESULT('Property','Value',...) creates a new RESULT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Result_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Result_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Result

% Last Modified by GUIDE v2.5 16-Nov-2019 20:01:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Result_OpeningFcn, ...
                   'gui_OutputFcn',  @Result_OutputFcn, ...
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


% --- Executes just before Result is made visible.
function Result_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Result (see VARARGIN)

% Choose default command line output for Result
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Result wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Result_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)M=getappdata(0,'maxbmvalue');
k=getappdata(0,'k');
ISA=getappdata(0,'ISA');
Tdg=getappdata(0,'Tdg');
Tdn=getappdata(0,'Tdn');
ten=getappdata(0,'ten');
Tdb1=getappdata(0,'Tdb1');
Tdb2=getappdata(0,'Tdb2');
TValues=getappdata(0,'TValues');
AreaValues=getappdata(0,'AreaValues');
Vdsb=getappdata(0,'Vdsb');
Vdpb=getappdata(0,'Vdpb');
Vmin=getappdata(0,'Vmin');

set(handles.edit1,'String',ISA);
set(handles.edit2,'String',Tdg);
set(handles.edit3,'String',Tdn);
set(handles.edit13,'String',Tdb1);
set(handles.edit14,'String',Tdb2);
set(handles.edit7,'String',ten);
%set(handles.edit8,'String',ten);
set(handles.edit4,'String',k);
set(handles.edit12,'String',TValues);
set(handles.edit11,'String', AreaValues);
set(handles.edit5,'String',Vdsb);
set(handles.edit6,'String',Vdpb);
set(handles.edit9,'String',Vmin);
radio8=getappdata(0,'r8');
radio7=getappdata(0,'r7');
radio10=getappdata(0,'r10');



    axes(handles.axes1)
    matlabImage = imread('C:\Users\Bhaskar Datta\Desktop\bolted connections1.jpg');
    image(matlabImage)
    axis off
% if radio7 == 1 && radio10 == 1
%     set(handles.text8, 'String', 'Length Of Weld');
%     set(handles.text10, 'String', 'Shear Strength Of Weld');
%     set(handles.edit6, 'enable', 'off');
%      set(handles.edit9, 'enable', 'off');
%     axes(handles.axes1)
%     matlabImage = imread('C:\Users\Bhaskar Datta\Desktop\DOTM.png');
%     image(matlabImage)
%     axis off
% end

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
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



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
print

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ten=getappdata(0,'ten');
fy=getappdata(0,'fy');
fu=getappdata(0,'fu');
I=getappdata(0,'Ivalue');
radio1 = getappdata(0, 'radio1');
radio2 = getappdata(0, 'radio2');
radio3 = getappdata(0, 'radio3');
radio4 = getappdata(0, 'radio4');
radio5 = getappdata(0, 'radio5');
radio6 = getappdata(0, 'radio6');
% Hint: get(hObject,'Value') returns toggle state of togglebutton1
if(radio1==1)
    fub=400;
end
if(radio2==1)
    fub=400;
end
if(radio3==1)
    d=10*(10^-3);
end
if(radio4==1)
    d=20*(10^-3);
end
if(radio5==1)
     d=40*(10^-3);
end
if(radio6==1)
   d=80*(10^-3);
end
 setappdata(0,'fub',fub);
 setappdata(0,'d',d);
ISASeries=getappdata(0,'name');
TValues=getappdata(0,'t');
a=getappdata(0,'a');
b=getappdata(0,'b');
AreaValues=getappdata(0,'Ag');
w=getappdata(0,'w');

%  TValues=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
%  a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%  b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%  AreaValues=[1.12,1.45,1.41,1.84,2.25,1.73,2.26,2.77,2.03,2.66,3.27,3.86,2.34,3.07,3.78,4.47,2.64,3.47,4.28,5.07,2.95,3.88,4.79,5.68,5.27,6.26,8.18,10.02,5.75,6.84,8.96,11.00,6.25,7.44,9.76,12.00,6.77,8.06,10.58,13.02,7.27,8.66,11.38,14.02,9.29,12.21,15.05,17.81,10.47,13.79,17.03,20.19,11.67,15.39,19.03,22.59,17.02,21.06,25.02,30.81,20.22,25.06,29.82,36.81,29.03,34.59,42.78,50.79,46.61,57.80,68.81,93.80]
%  w=[0.9,1.1,1.1,1.4,1.8,1.4,1.8,2.2,1.6,2.1,2.6,3.0,1.8,2.4,3.0,3.5,2.1,2.7,3.4,4.0,2.3,3.0,3.8,4.5,4.1,4.9,6.4,7.9,4.5,5.4,7.0,8.6,4.9,5.8,7.7,9.4,5.3,6.3,8.3,10.2,5.7,6.8,8.9,11.0,7.3,9.6,11.8,14.0,8.2,10.8,13.4,15.8,9.2,12.1,14.9,17.7,13.4,16.5,19.6,24.2,15.9,19.7,23.4,28.9,22.8,27.2,33.6,39.9,36.6,45.4,54.0,73.6]
%  ISASeries={'ISA 2020','ISA 2020','ISA 2525','ISA 2525','ISA 2525','ISA 3030','ISA 3030','ISA 3030','ISA 3535','ISA 3535','ISA 3535','ISA 3535','ISA 4040','ISA 4040','ISA 4040','ISA 4040','ISA 4545','ISA 4545','ISA 4545','ISA 4545','ISA 5050','ISA 5050','ISA 5050','ISA 5050','ISA 5555','ISA 5555','ISA 5555','ISA 5555','ISA 6060','ISA 6060','ISA 6060','ISA 6060','ISA 6565','ISA 6565','ISA 6565','ISA 6565','ISA 7070','ISA 7070','ISA 7070','ISA 7070','ISA 7575','ISA 7575','ISA 7575','ISA 7575','ISA 8080','ISA 8080','ISA 8080','ISA 8080','ISA 9090','ISA 9090','ISA 9090','ISA 9090','ISA 100100','ISA 100100','ISA 100100','ISA 100100','ISA 110110','ISA 110110','ISA 110110','ISA 110110','ISA 130130','ISA 130130','ISA 130130','ISA 130130','ISA 150150','ISA 150150','ISA 150150','ISA 150150','ISA 200200','ISA 200200','ISA 200200','ISA 200200'};
% %         ISASeries=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
%         a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%         b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%         AreaValues=[1.12,1.45,1.41,1.84,2.25,1.73,2.26,2.77,2.03,2.66,3.27,3.86,2.34,3.07,3.78,4.47,2.64,3.47,4.28,5.07,2.95,3.88,4.79,5.68,5.27,6.26,8.18,10.02,5.75,6.84,8.96,11.00,6.25,7.44,9.76,12.00,6.77,8.06,10.58,13.02,7.27,8.66,11.38,14.02,9.29,12.21,15.05,17.81,10.47,13.79,17.03,20.19,11.67,15.39,19.03,22.59,17.02,21.06,25.02,30.81,20.22,25.06,29.82,36.81,29.03,34.59,42.78,50.79,46.61,57.80,68.81,93.80]
%          TValues=[4.0 4.4 4.8 5.5 5.7 6.5 6.9 7.5 8.1 8.9 9.4 10.2 11.2 12.0];
%         w=[0.9,1.1,1.1,1.4,1.8,1.4,1.8,2.2,1.6,2.1,2.6,3.0,1.8,2.4,3.0,3.5,2.1,2.7,3.4,4.0,2.3,3.0,3.8,4.5,4.1,4.9,6.4,7.9,4.5,5.4,7.0,8.6,4.9,5.8,7.7,9.4,5.3,6.3,8.3,10.2,5.7,6.8,8.9,11.0,7.3,9.6,11.8,14.0,8.2,10.8,13.4,15.8,9.2,12.1,14.9,17.7,13.4,16.5,19.6,24.2,15.9,19.7,23.4,28.9,22.8,27.2,33.6,39.9,36.6,45.4,54.0,73.6]
%     
    [~,length]=size(ISASeries);
    result_section = 0;
    for i=I+1:length
%          bs=(2*w(i))+TValues(i);
        Tdg=(AreaValues(i)*fy)/1.1;
    %     if(ten>Tdg)
    %         b=1.4-(0.076*(w(i)/TValues(i))*(fy/fu)*(bs/lc));
    %         if((b<0.7) || (b>(fu*1.1)/(fy*1.25)))
    %             continue;

    %     Tdn=(0.9*Anc*fu)/1.25+(b*Ago*fy)/1.1;
%         d=20*10^-3;
        Anb=0.78*(3.14/4)*d*d;
        Vnsb=(fu/1.73)*(Anb);
        Vdsb=(Vnsb/1.25)*1000;
%         fub=440;
        kb=min([0.566,0.833,fub/fu,1]);
        Vnpb=2.5*kb*d*TValues(i)*fu;
        Vdpb=Vnpb/1.25;
        Vmin=min(Vdsb,Vdpb);
        l=floor((ten*10^-3)/min(Vdsb,Vdpb));
        k=l+1;
        if((k==2)|| k ==1)
            alpha1=0.6;
        else
            if(k==3)
                alpha1=0.7;
            else
                if(k>=4)
                    alpha1=0.8;
                end
            end
        end

        An=AreaValues(i)-((3.14/4)*d*d);
        Tdn=(alpha1*An*fu)/1.25;
        Tdn
        Tdg
        ten
        if(ten>min(Tdg,Tdn))
            result_section = 0;
            continue;
        else
            result_section = 1;
            break;
        end
    end

    if result_section == 1
    setappdata(0,'ISA',ISASeries{i});
    setappdata(0,'TValues',TValues(i));
    setappdata(0,'AreaValues', AreaValues(i));
    setappdata(0,'k',k);
    setappdata(0,'Tdg',Tdg);
    setappdata(0,'Tdn',Tdn);
    setappdata(0,'ten',ten);
    setappdata(0,'Vdsb',Vdsb);
    setappdata(0,'Vdpb',Vdpb);
    setappdata(0,'Vmin',Vmin);
    setappdata(0,'Ivalue',i);
    Result
    else
        Warning
    end
result_section = 0;       



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ten=getappdata(0,'ten');
fy=getappdata(0,'fy');
fu=getappdata(0,'fu');
I=getappdata(0,'Ivalue');
radio1 = getappdata(0, 'radio1');
radio2 = getappdata(0, 'radio2');
radio3 = getappdata(0, 'radio3');
radio4 = getappdata(0, 'radio4');
radio5 = getappdata(0, 'radio5');
radio6 = getappdata(0, 'radio6');
% Hint: get(hObject,'Value') returns toggle state of togglebutton1
if(radio1==1)
    fub=400;
end
if(radio2==1)
    fub=400;
end
if(radio3==1)
    d=10*(10^-3);
end
if(radio4==1)
    d=20*(10^-3);
end
if(radio5==1)
     d=40*(10^-3);
end
if(radio6==1)
   d=80*(10^-3);
end
 setappdata(0,'fub',fub);
 setappdata(0,'d',d);
ISASeries=getappdata(0,'name');
TValues=getappdata(0,'t');
a=getappdata(0,'a');
b=getappdata(0,'b');
AreaValues=getappdata(0,'Ag');
w=getappdata(0,'w');
%  TValues=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
%  a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%  b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%  AreaValues=[1.12,1.45,1.41,1.84,2.25,1.73,2.26,2.77,2.03,2.66,3.27,3.86,2.34,3.07,3.78,4.47,2.64,3.47,4.28,5.07,2.95,3.88,4.79,5.68,5.27,6.26,8.18,10.02,5.75,6.84,8.96,11.00,6.25,7.44,9.76,12.00,6.77,8.06,10.58,13.02,7.27,8.66,11.38,14.02,9.29,12.21,15.05,17.81,10.47,13.79,17.03,20.19,11.67,15.39,19.03,22.59,17.02,21.06,25.02,30.81,20.22,25.06,29.82,36.81,29.03,34.59,42.78,50.79,46.61,57.80,68.81,93.80]
%  w=[0.9,1.1,1.1,1.4,1.8,1.4,1.8,2.2,1.6,2.1,2.6,3.0,1.8,2.4,3.0,3.5,2.1,2.7,3.4,4.0,2.3,3.0,3.8,4.5,4.1,4.9,6.4,7.9,4.5,5.4,7.0,8.6,4.9,5.8,7.7,9.4,5.3,6.3,8.3,10.2,5.7,6.8,8.9,11.0,7.3,9.6,11.8,14.0,8.2,10.8,13.4,15.8,9.2,12.1,14.9,17.7,13.4,16.5,19.6,24.2,15.9,19.7,23.4,28.9,22.8,27.2,33.6,39.9,36.6,45.4,54.0,73.6]
%  ISASeries={'ISA 2020','ISA 2020','ISA 2525','ISA 2525','ISA 2525','ISA 3030','ISA 3030','ISA 3030','ISA 3535','ISA 3535','ISA 3535','ISA 3535','ISA 4040','ISA 4040','ISA 4040','ISA 4040','ISA 4545','ISA 4545','ISA 4545','ISA 4545','ISA 5050','ISA 5050','ISA 5050','ISA 5050','ISA 5555','ISA 5555','ISA 5555','ISA 5555','ISA 6060','ISA 6060','ISA 6060','ISA 6060','ISA 6565','ISA 6565','ISA 6565','ISA 6565','ISA 7070','ISA 7070','ISA 7070','ISA 7070','ISA 7575','ISA 7575','ISA 7575','ISA 7575','ISA 8080','ISA 8080','ISA 8080','ISA 8080','ISA 9090','ISA 9090','ISA 9090','ISA 9090','ISA 100100','ISA 100100','ISA 100100','ISA 100100','ISA 110110','ISA 110110','ISA 110110','ISA 110110','ISA 130130','ISA 130130','ISA 130130','ISA 130130','ISA 150150','ISA 150150','ISA 150150','ISA 150150','ISA 200200','ISA 200200','ISA 200200','ISA 200200'};
%         ISASeries=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
%         a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%         b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%         AreaValues=[1.12,1.45,1.41,1.84,2.25,1.73,2.26,2.77,2.03,2.66,3.27,3.86,2.34,3.07,3.78,4.47,2.64,3.47,4.28,5.07,2.95,3.88,4.79,5.68,5.27,6.26,8.18,10.02,5.75,6.84,8.96,11.00,6.25,7.44,9.76,12.00,6.77,8.06,10.58,13.02,7.27,8.66,11.38,14.02,9.29,12.21,15.05,17.81,10.47,13.79,17.03,20.19,11.67,15.39,19.03,22.59,17.02,21.06,25.02,30.81,20.22,25.06,29.82,36.81,29.03,34.59,42.78,50.79,46.61,57.80,68.81,93.80]
%          TValues=[4.0 4.4 4.8 5.5 5.7 6.5 6.9 7.5 8.1 8.9 9.4 10.2 11.2 12.0];
%         w=[0.9,1.1,1.1,1.4,1.8,1.4,1.8,2.2,1.6,2.1,2.6,3.0,1.8,2.4,3.0,3.5,2.1,2.7,3.4,4.0,2.3,3.0,3.8,4.5,4.1,4.9,6.4,7.9,4.5,5.4,7.0,8.6,4.9,5.8,7.7,9.4,5.3,6.3,8.3,10.2,5.7,6.8,8.9,11.0,7.3,9.6,11.8,14.0,8.2,10.8,13.4,15.8,9.2,12.1,14.9,17.7,13.4,16.5,19.6,24.2,15.9,19.7,23.4,28.9,22.8,27.2,33.6,39.9,36.6,45.4,54.0,73.6]
%     
    result_section = 0;
    [~,length]=size(ISASeries);
    if I-1 > 0
        for i=I-1:length
    %          bs=(2*w(i))+TValues(i);
            Tdg=(AreaValues(i)*fy)/1.1;
        %     if(ten>Tdg)
        %         b=1.4-(0.076*(w(i)/TValues(i))*(fy/fu)*(bs/lc));
        %         if((b<0.7) || (b>(fu*1.1)/(fy*1.25)))
        %             continue;

        %     Tdn=(0.9*Anc*fu)/1.25+(b*Ago*fy)/1.1;
    %         d=20*10^-3;
            Anb=0.78*(3.14/4)*d*d;
            Vnsb=(fu/1.73)*(Anb);
            Vdsb=(Vnsb/1.25)*1000;
    %         fub=440;
            kb=min([0.566,0.833,fub/fu,1]);
            Vnpb=2.5*kb*d*TValues(i)*fu;
            Vdpb=Vnpb/1.25;
            Vmin=min(Vdsb,Vdpb);
            l=floor((ten*10^-3)/min(Vdsb,Vdpb));
            k=l+1;
            if((k==2)|| k ==1)
                alpha1=0.6;
            else
                if(k==3)
                    alpha1=0.7;
                else
                    if(k>=4)
                        alpha1=0.8;
                    end
                end
            end

            An=AreaValues(i)-((3.14/4)*d*d);
            Tdn=(alpha1*An*fu)/1.25;
            Tdn
            Tdg
            ten
            if(ten>min(Tdg,Tdn))
                result_section = 0;
                continue;
            else
                result_section = 1;
                break;
            end
        end

        if result_section == 1
        setappdata(0,'ISA',ISASeries{i});
        setappdata(0,'TValues',TValues(i));
        setappdata(0,'AreaValues', AreaValues(i));
        setappdata(0,'k',k);
        setappdata(0,'Tdg',Tdg);
        setappdata(0,'Tdn',Tdn);
        setappdata(0,'ten',ten);
        setappdata(0,'Vdsb',Vdsb);
        setappdata(0,'Vdpb',Vdpb);
        setappdata(0,'Vmin',Vmin);
        setappdata(0,'Ivalue',i);
        Result
        else
            Warning
        end
    result_section = 0;
    else
        Warning
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
