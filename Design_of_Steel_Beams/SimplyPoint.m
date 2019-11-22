function varargout = PointLoadInput(varargin)
% POINTLOADINPUT MATLAB code for PointLoadInput.fig
%      POINTLOADINPUT, by itself, creates a new POINTLOADINPUT or raises the existing
%      singleton*.
%
%      H = POINTLOADINPUT returns the handle to a new POINTLOADINPUT or the handle to
%      the existing singleton*.
%
%      POINTLOADINPUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POINTLOADINPUT.M with the given input arguments.
%
%      POINTLOADINPUT('Property','Value',...) creates a new POINTLOADINPUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PointLoadInput_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PointLoadInput_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose 'GUI allows only one
%      instance to run (singleton)'.
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PointLoadInput

% Last Modified by GUIDE v2.5 19-Aug-2019 20:57:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PointLoadInput_OpeningFcn, ...
                   'gui_OutputFcn',  @PointLoadInput_OutputFcn, ...
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


% --- Executes just before PointLoadInput is made visible.
function PointLoadInput_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PointLoadInput (see VARARGIN)

% Choose default command line output for PointLoadInput
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PointLoadInput wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PointLoadInput_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

s=sprintf('Click on NEXT after providing input details above to go ahead');
set(handles.pushbutton1,'TooltipString',s);

s1=sprintf('Click on EXIT to exit application');
set(handles.pushbutton2,'TooltipString',s1);

s2=sprintf('Enter the length of the span in metres');
set(handles.edit1,'TooltipString',s2);

s3=sprintf('Enter the intensity of point load acting on the beam in KN');
set(handles.edit2,'TooltipString',s3);

s4=sprintf('Enter the point of action of point load from Left Support in metres');
set(handles.edit3,'TooltipString',s4);

s5=sprintf('Click to get the Shear Force Diagram of the Given Loading Conditions');
set(handles.pushbutton3,'TooltipString',s5);

s6=sprintf('Click to get the Bending Moment Diagram of the Given Loading Conditions');
set(handles.pushbutton4,'TooltipString',s6);




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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radio1=getappdata(0,'radio1value');
radio2=getappdata(0,'radio2value');
radio3=getappdata(0,'radio3value');
radio4=getappdata(0,'radio4value');
radio5=getappdata(0,'radio5value');
radio6=getappdata(0,'radio6value');
radio7=getappdata(0,'radio7value');
radio8=getappdata(0,'radio8value');
radio9=getappdata(0,'radio9value');
radio10=getappdata(0,'radio10value');
len=str2double(get(handles.edit1,'String'));
p=str2double(get(handles.edit2,'String'));
a=str2double(get(handles.edit3,'String'));
x1=0:0.1:a;
r1=p*(len-a)/len;
y1=r1*x1;
y3=p*(len-a)/len;
y4=p*(a)/len;
x2=a:0.1:len;
y2=(r1*x2)-(p*(x2-a));
A=[y1 y2];
B=[y3 y4];
maxsf=max(max(B),-min(B));
maxbm=max(max(A),-min(A));
if (radio7==1)
    ISMBSeries={'ISJB150','ISJB175','ISJB200','ISJB225','ISLB175','ISMB175','ISLB200','ISLB225','ISLB250','ISLB275','ISLB300','ISMB300','ISLB325','ISLB400','ISMB400','ISLB450','ISMB450','ISLB500','ISLB550','ISWB500','ISLB600','ISWB550','ISMB600','ISWB600','ISWB600'};
    w=[7.1 8.1 9.9 12.8 16.7 19.3 19.8 23.5 27.9 33.0 37.7 44.2 43.1 56.9 61.5 65.3 72.4 75.0 86.3 95.2 99.5 112.5 122.6 133.7 145.1];
    HValues=[150 175 200 225 175 175 200 225 250 275 300 300 325 400 400 450 450 500 550 500 600 550 600 600 600]*(10^-3);
    ZeValues=[42.9 54.8 78.1 116.3 125.3 145.4 169.7 222.4 297.4 392.4 488.9 573.6 607.7 965.3 1020.0 1223.8 1350.7 1558.1 1993.2 2091.6 2428.9 2723.9 3060.4 3540.0 3854.2]*(10^-6);
    ZpValues=[49.57 64.22 90.89 134.15 143.30 166.08 184.34 254.72 338.69 443.09 554.32 651.74 687.76 1099.45 1176.18 1401.35 1533.36 1773.67 2228.16 2351.35 2798.56 3066.29 3510.63 3986.66 4341.63]*(10^-6);
    AreaValues=[9.01 10.28 12.64 16.28 21.30 24.62 25.27 29.92 35.53 42.02 48.08 56.26 54.90 72.43 78.40 83.14 92.27 95.50 109.97 121.22 126.07 143.34 156.21 170.38 184.86]*(10^-4);
    TfValues=[4.6 4.6 5.0 5.0 6.9 8.6 7.3 8.6 8.2 8.8 9.4 12.4 9.8 12.5 16.0 13.4 17.4 14.1 15.0 14.7 15.5 17.6 20.8 21.3 23.6]*(10^-3);
    BfValues=[50 50 60 80 90 90 100 100 125 140 150 140 165 165 140 170 150 180 190 250 210 250 210 250 250]*(10^-3);
    TwValues=[3.0 3.0 3.4 3.7 5.1 5.5 5.4 5.8 6.1 6.4 6.7 7.5 7.0 8 8.9 8.6 9.4 9.2 9.9 9.9 10.5 10.5 12 11.2 11.8]*(10^-3);
    RfValues=[5.0 5.0 5.0 6.5 9.5 10.0 9.5 12.0 13.0 14.0 15.0 14.0 16.0 16.0 14.0 16.0 15.0 17.0 18.0 15.0 20 16 20 17.0 18.0]*(10^-3);
    HfValues=(HValues)-(TfValues);
    RyValues=[1.01 0.97 1.17 1.58 1.93 1.86 2.13 1.94 2.33 2.61 2.80 2.84 3.05 3.15 2.84 3.20 3.01 3.34 3.48 4.96 3.79 5.11 4.12 5.25 5.35]*(10^-2);
    IyValues=[9.2 9.7 17.3 40.5 79.6 85.0 115.4 112.7 193.4 287.0 376.2 453.9 510.8 716.4 622.1 853.0 834.0 1063.9 1335.1 2987.8 1821.9 3740.6 2651.0 4702.5 5298.3]*(10^-8);
    
elseif (radio8==1)
    ISMBSeries={'ISLB75','ISLB100','ISLB125','ISLB150','ISLB175','ISLB200','ISLB225','ISLB250','ISLB275','ISLB300','ISLB325','ISLB350','ISLB400','ISLB450','ISLB500','ISLB550','ISLB600'};
    w=[6.1 8.0 11.9 14.2 16.7 19.8 23.5 27.9 33.0 37.7 43.1 49.5 56.9 65.3 75.0 86.3 99.5];
    HValues=[75 100 125 150 175 200 225 250 275 300 325 350 400 450 500 550 600]*(10^-3);
    ZeValues=[19.4 33.6 65.1 91.8 125.3 169.7 222.4 297.4 392.4 488.9 607.7 751.9 965.3 1223.8 1543.2 1933.2 2428.9]*(10^-6);
    ZpValues=[22.35 38.89 73.93 104.50 143.30 184.34 254.72 338.69 443.09 554.32 687.76 851.11 1099.45 1401.35 1773.67 2228.16 2798.56]*(10^-6);
    AreaValues=[7.71 10.21 15.12 18.08 21.30 25.27 29.92 35.53 42.02 48.08 54.90 63.01 72.43 83.14 95.50 109.97 126.69]*(10^-4);
    w=[7.1 8.1 9.9 12.8 16.7 19.3 19.8 23.5 27.9 33.0 37.7 44.2 43.1 56.9 61.5 65.3 72.4 75.0 86.3 95.2 99.5 112.5 122.6 133.7 145.1];
    BfValues=[50 50 75 80 90 100 100 125 140 150 165 165 165 170 180 190 210]*(10^-3);
    TwValues=[3.7 4.0 4.4 4.8 5.1 5.4 5.8 6.1 6.4 6.7 7.0 7.4 8.0 8.6 9.2 9.9 10.5]*(10^-3);
    RfValues=[6.5 7.0 8.0 9.5 9.5 9.5 12.0 13.0 14.0 15.0 16.0 16.0 16.0 16.0 17.0 18.0 20.0]*(10^-3);
    HfValues=(HValues)-(TfValues);
    RyValues=[1.14 1.12 1.69 1.75 1.93 2.13 1.94 2.33 2.61 2.80 3.05 3.17 3.15 3.20 3.34 3.48 3.79]*(10^-2);
    IyValues=[1.0 12.7 43.4 55.2 79.6 115.4 112.7 193.4 287.0 376.2 510.8 631.9 716.4 853.0 1063.9 1335.1 1821.9]*(10^-8);
elseif(radio9==1)
    ISMBSeries={'ISMB100','ISMB125','ISMB150','ISMB175','ISMB200','ISMB225','ISMB250','ISMB300','ISMB350','ISMB400','ISMB450','ISMB500','ISMB550','ISMB600'};
    w=[11.5 13.0 14.9 19.3 35.4 31.2 37.3 44.2 52.4 61.6 72.4 86.9 103.7 122.6];
    HValues=[100 125 150 175 200 225 250 300 350 400 450 500 550 600]*(10^-3);
    ZeValues=[51.5 71.8 96.9 145.4 223.5 305.9 410.5 573.6 778.9 1022.9 1350.7 1808.7 2359.8 3060.4]*(10^-6);
    ZpValues=[41.68 81.85 110.48 166.08 253.86 348.27 465.71 651.74 889.57 1176.18 1533.36 2074.67 2711.98 3510.63]*(10^-6);
    AreaValues=[14.60 16.60 19.0 24.62 32.33 39.72 47.55 56.26 66.71 78.46 92.27 110.74 132.11 156.21]*(10^-4);
    TfValues=[7.2 7.6 7.6 8.6 10.8 11.8 12.5 12.4 14.2 16.0 17.4 17.2 19.3 20.8]*(10^-3);
    BfValues=[75 75 80 90 100 110 125 140 140 140 150 180 190 210]*(10^-3);
    TwValues=[4.0 4.4 4.8 5.5 5.7 6.5 6.9 7.5 8.1 8.9 9.4 10.2 11.2 12.0]*(10^-3);
    RfValues=[9 9 9 10 11 12 13 14 14 14 15 17 18 20]*(10^-3);
    HfValues=(HValues)-(TfValues);
    RyValues=[1.67 1.62 1.66 1.86 2.15 2.34 2.65 2.84 2.84 2.82 3.01 3.52 3.73 4.12]*(10^-2);
    IyValues=[40.8 43.7 52.6 85.0 150.0 218.3 334.5 453.9 537.7 622.1 834.0 1369.8 1833.8 2651.0]*(10^-8);
    
elseif (radio10==1)
    ISMBSeries={'ISWB150','ISWB175','ISWB200','ISWB225','ISWB250','ISWB300','ISWB350','ISWB400','ISWB450','ISWB500','ISWB550','ISWB600','ISWB600'};
    w=[17.0 22.1 28.8 33.9 40.9 48.1 56.9 66.7 79.4 95.2 112.5 133.7 145.1];
    HValues=[150 175 200 225 250 300 350 400 450 500 550 600 600]*(10^-3);
    ZeValues=[111.9 172.5 262.5 348.5 475.4 654.8 887.0 1171.3 1558.1 2091.6 2723.9 3540.0 3854.2]*(10^-6);
    ZpValues=[126.86 194.20 293.99 389.93 527.57 731.21 995.49 1290.19 1760.59 2351.35 3066.29 3986.66 4341.63]*(10^-6);
    AreaValues=[21.67 28.11 36.71 43.24 52.05 61.33 72.50 85.01 101.15 121.22 143.34 170.38 184.86]*(10^-4);
    TfValues=[7.0 7.4 9.0 9.9 9.0 10.0 11.4 13.0 15.4 14.7 17.6 21.3 23.6]*(10^-3);
    BfValues=[100 125 140 150 200 200 200 200 200 250 250 250 250]*(10^-3);
    TwValues=[5.4 5.8 6.1 6.4 6.7 7.4 8.0 8.6 9.2 9.9 10.5 11.2 11.8]*(10^-3);
    RfValues=[8.0 8.0 9.0 9.0 10.0 11.0 12 13 14 15 16 17 18]*(10^-3);
    HfValues=(HValues)-(TfValues);
    RyValues=[2.09 2.59 2.99 3.22 4.06 4.02 4.03 4.04 4.11 4.96 5.11 5.25 5.35]*(10^-2);
    IyValues=[94.8 188.6 328.8 448.6 857.5 990.1 1175.9 1388.0 1706.7 2987.8 3740.6 4702.5 5298.3]*(10^-8);
end
[~,length]=size(ISMBSeries);
Fy=2.5*(10^5);
E=2*(10^8);
Fw=0;
Gamma=1.1;
Mew=0.3;
G=E/(2*(1+Mew));
Result=0;
if (radio5==1)
for i=1:length
    DValues=(HValues(i))-(2*(TfValues(i)+RfValues(i)));
    X1=BfValues(i)/(2*TfValues(i));
    X2=DValues/TwValues(i);
    if (X1<=10.5) && (X2<=105)
        Betab=1;
    else
        Betab=ZeValues(i)/ZpValues(i);
    end
    Vd=(Fy*TwValues(i)*HValues(i)/Gamma)/(sqrt(3));
    X3=0.6*Vd;
    if (maxsf<=Vd)
        if (maxsf<=X3)
            Md=(Betab*ZpValues(i)*Fy)/Gamma;
            Md1=(1.2*ZeValues(i)*Fy)/Gamma;
            if (maxbm<=Md && Md<=Md1)
                Mdfinal=Md;
                b=0.1;
                I=(b*(TwValues(i))^3)/12;
                Area=(b+(HValues(i)/2))*TwValues(i);
                r=(TwValues(i)/sqrt(12));
                Fcc=((pi^2)*(2*(10^8)))/((0.7*DValues/r)^2);
                Lambda=sqrt(Fy/Fcc);
                Phi=0.5*(1+(0.49*(Lambda-0.2))+(Lambda^2));
                Fcd=(Fy/Gamma)/(Phi+(((Phi^2)-(Lambda^2))^0.5));
                F=Fcd*Area;
                if (maxsf<=F)
                    n2=2.5*(RfValues(i)+TfValues(i));
                    Fw=(b+n2)*(TwValues(i))*(Fy/Gamma);
                    if (maxsf<=Fw)
                    Result=1;
            break
                    end
               end
            end
        else
            if (Betab==1)
           Md=(Betab*ZpValues(i)*Fy)/Gamma;
           Beta=((2*(maxsf/Vd))-1)^2;
           Mfd=(HValues(i)*HValues(i)*TwValues(i)/4)*Fy;
           Mdv=Md-(Beta*(Md-Mfd));
           if (maxbm<=Mdv)
               Mdfinal=Mdv;
                b=0.1;
                I=(b*(TwValues(i))^3)/12;
                Area=(b+(HValues(i)/2))*TwValues(i);
                r=(TwValues(i)/sqrt(12));
                Fcc=((pi^2)*(2*(10^8)))/((0.7*DValues/r)^2);
                Lambda=sqrt(Fy/Fcc);
                Phi=0.5*(1+(0.49*(Lambda-0.2))+(Lambda^2));
                Fcd=(Fy/Gamma)/(Phi+(((Phi^2)-(Lambda^2))^0.5));
                F=Fcd*Area;
                if (maxsf<=F)
                    n2=2.5*(RfValues(i)+TfValues(i));
                    Fw=(b+n2)*(TwValues(i))*(Fy/Gamma);
                    if (maxsf<=Fw)
                Result=1;
            break
                    end
                end
           end
            else
                Mdv=ZeValues(i)*Fy/Gamma;
                if (maxbm<=Mdv)
                Mdfinal=Mdv;
                b=0.1;
                I=(b*(TwValues(i))^3)/12;
                Area=(b+(HValues(i)/2))*TwValues(i);
                r=(TwValues(i)/sqrt(12));
                Fcc=((pi^2)*(2*(10^8)))/((0.7*DValues/r)^2);
                Lambda=sqrt(Fy/Fcc);
                Phi=0.5*(1+(0.49*(Lambda-0.2))+(Lambda^2));
                Fcd=(Fy/Gamma)/(Phi+(((Phi^2)-(Lambda^2))^0.5));
                F=Fcd*Area;
                if (maxsf<=F)
                    n2=2.5*(RfValues(i)+TfValues(i));
                    Fw=(b+n2)*(TwValues(i))*(Fy/Gamma);
                    if (maxsf<=Fw)
                    Result=1;
            break
                    end
                end
            end
            end
        end
        
    end
end
    
    
    if Result~=1
        LaterallySupportedResult1
        
    else
        
    setappdata(0,'maxsfvalue',maxsf);
    setappdata(0,'maxbmvalue',maxbm);
    setappdata(0,'ISMBSeriesvalue',ISMBSeries{i});
    setappdata(0,'wvalue',w(i));
    setappdata(0,'HValuesvalue',HValues(i)*10^3);
    setappdata(0,'BfValuesvalue',BfValues(i)*10^3);
    setappdata(0,'TfValuesvalue',TfValues(i)*10^3);
    setappdata(0,'RfValuesvalue',RfValues(i)*10^3);
    setappdata(0,'TwValuesvalue',TwValues(i)*10^3);
    setappdata(0,'X1value',X1);
    setappdata(0,'X2value',X2);
    setappdata(0,'X3value',X3);
    setappdata(0,'Mdvalue',Mdfinal);
    setappdata(0,'Vdvalue',Vd);
    setappdata(0,'Fvalue',F);
    setappdata(0,'Fwvalue',Fw);
    setappdata(0,'Ivalue',i);
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
    setappdata(0,'Z_matrix_value',ZeValues(i));
    setappdata(0,'maxZavalue', ZpValues(i));
    LaterallySupportedResult
    end
end
if (radio6==1)
    for i=1:length
    DValues=(HValues(i))-(2*(TfValues(i)+RfValues(i)));
    X1=BfValues(i)/(2*TfValues(i));
    X2=DValues/TwValues(i);
    if (X1<=10.5) && (X2<=105)
        Betab=1;
    else
        Betab=ZeValues(i)/ZpValues(i);
    end
    t1=2*BfValues(i)*(TfValues(i)^3)/3;
    t2=HfValues(i)*(TwValues(i)^3)/3;
    It=t1+t2;
    Betaf=0.5;
    Iw=(1-Betaf)*Betaf*IyValues(i)*(HfValues(i)^2);
    z1=(pi^2)*E*IyValues(i)/(len^2);
    z2=G*It;
    z3=(pi^2)*E*Iw/(len^2);
    Mcr=sqrt(z1*(z2+z3));
    LambdaLT=sqrt(Betab*ZpValues(i)*Fy/Mcr);
    AlphaLT=0.21;
    PhiLT=(0.5)*(1+(AlphaLT*(LambdaLT-0.2))+((LambdaLT)^2));
    XLT=1/(PhiLT+(((PhiLT^2)-(LambdaLT^2))^0.5));
    Fbd=XLT*(Fy)/Gamma;
    Md=Betab*ZpValues(i)*Fbd;
    if (maxbm<=Md)
        Vd=(Fy*TwValues(i)*HValues(i)/Gamma)/(sqrt(3));
        if (maxsf<=Vd)
            b=0.1;
                I=(b*(TwValues(i))^3)/12;
                Area=(b+(HValues(i)/2))*TwValues(i);
                r=(TwValues(i)/sqrt(12));
                Fcc=((pi^2)*(2*(10^8)))/((0.7*DValues/r)^2);
                Lambda=sqrt(Fy/Fcc);
                Phi=0.5*(1+(0.49*(Lambda-0.2))+(Lambda^2));
                Fcd=(Fy/Gamma)/(Phi+(((Phi^2)-(Lambda^2))^0.5));
                Fwb=Fcd*Area;
                if (maxsf<=Fwb)
                    n2=2.5*(RfValues(i)+TfValues(i));
                   Fwc=(b+n2)*(TwValues(i))*(Fy/Gamma);
                   if (maxsf<=Fwc)
                       Result=1;
                       break
                   end
                end
        end
        
    end
    end

if Result==1
    setappdata(0,'maxsfvalue',maxsf);
    setappdata(0,'lenvalue',len);
    setappdata(0,'maxbmvalue',maxbm);
    setappdata(0,'ISMBSeriesvalue',ISMBSeries{i});
    setappdata(0,'wvalue',w(i));
    setappdata(0,'HValuesvalue',HValues(i)*10^3);
    setappdata(0,'BfValuesvalue',BfValues(i)*10^3);
    setappdata(0,'TfValuesvalue',TfValues(i)*10^3);
    setappdata(0,'RfValuesvalue',RfValues(i)*10^3);
    setappdata(0,'TwValuesvalue',TwValues(i)*10^3);
    setappdata(0,'X1value',X1);
    setappdata(0,'X2value',X2);
    setappdata(0,'Mdvalue',Md);
    setappdata(0,'Vdvalue',Vd);
    setappdata(0,'Fvalue',Fwb);
    setappdata(0,'Fwvalue',Fwc);
    setappdata(0,'Ivalue',i);
    setappdata(0,'Mcrvalue',Mcr);
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
    setappdata(0,'Z_matrix_value',ZeValues(i));
    setappdata(0,'maxZavalue', ZpValues(i));
    LaterallyUnsupportedResult
else
    LaterallyUnsupportedResult1
end
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(BTPAssemble,'HandleVisibility','off');
close
set(BTPAssemble,'HandleVisibility','on');


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
len=str2double(get(handles.edit1,'String'));
p=str2double(get(handles.edit2,'String'));
a=str2double(get(handles.edit3,'String'));
setappdata(0,'lenvalue',len);
setappdata(0,'pvalue',p);
setappdata(0,'avalue',a);
SimplyPointSFD


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
len=str2double(get(handles.edit1,'String'));
p=str2double(get(handles.edit2,'String'));
a=str2double(get(handles.edit3,'String'));
setappdata(0,'lenvalue',len);
setappdata(0,'pvalue',p);
setappdata(0,'avalue',a);
SimplyPointBMD
