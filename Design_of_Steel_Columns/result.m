function varargout = result(varargin)
% result MATLAB code for result.fig
%      result, by itself, creates a new result or raises the existing
%      singleton*.
%
%      H = result returns the handle to a new result or the handle to
%      the existing singleton*.
%
%      result('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in result.M with the given input arguments.
%
%      result('Property','Value',...) creates a new result or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before result_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to result_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help result

% Last Modified by GUIDE v2.5 26-Aug-2019 19:41:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @result_OpeningFcn, ...
                   'gui_OutputFcn',  @result_OutputFcn, ...
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


% --- Executes just before result is made visible.
function result_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to result (see VARARGIN)

% Choose default command line output for result
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes result wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = result_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

ISMB=getappdata(0,'ISMBvalue');
w=getappdata(0,'wvalue');
H=getappdata(0,'Hvalue');
Bf=getappdata(0,'Bfvalue');
Tf=getappdata(0,'Tfvalue');
Rf=getappdata(0,'Rfvalue');
Tw=getappdata(0,'Twvalue');
Ae=getappdata(0,'Aevalue');
Ry=getappdata(0,'Ryvalue');
Rz=getappdata(0,'Rzvalue');
I=getappdata(0,'Ivalue');
P=getappdata(0,'Pvalue');
Ly=getappdata(0,'Lyvalue');
Lz=getappdata(0,'Lzvalue');
Fy=getappdata(0,'Fyvalue');
Ky=getappdata(0,'Kyvalue');
Kz=getappdata(0,'Kzvalue');
Fcdy=getappdata(0,'Fcdyvalue');
Fcdz=getappdata(0,'Fcdzvalue');
F1=getappdata(0,'F1value');
F2=getappdata(0,'F2value');
Classy=getappdata(0,'Classyvalue');
Classz=getappdata(0,'Classzvalue');
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
radio11=getappdata(0,'radio11value');
d=(H)-(2*(Tf+Rf));

set(handles.edit1,'String',ISMB);
set(handles.edit2,'String',w);
set(handles.edit3,'String',Ae);
set(handles.edit4,'String',H);
set(handles.edit5,'String',Ry);
set(handles.edit6,'String',Rz);
set(handles.edit7,'String',Bf);
set(handles.edit8,'String',Tf);
set(handles.edit9,'String',Rf);
set(handles.edit10,'String',Tw);
set(handles.edit11,'String',d);
set(handles.edit12,'String',Classy);
set(handles.edit23,'String',Classz);
set(handles.edit13,'String',(Ky*Ly*1000));
set(handles.edit14,'String',(Ky*Ly*100/Ry));
set(handles.edit15,'String',Fcdy);
set(handles.edit16,'String',F1);

set(handles.edit17,'String',(Kz*Lz*1000));
set(handles.edit18,'String',(Kz*Lz*100/Rz));
set(handles.edit19,'String',Fcdz);
set(handles.edit20,'String',F2);

Pd=min(F1,F2);
set(handles.edit21,'String',Pd);
set(handles.edit22,'String',P);



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ISMB=getappdata(0,'ISMBvalue');
w=getappdata(0,'wvalue');
H=getappdata(0,'Hvalue');
Bf=getappdata(0,'Bfvalue');
Tf=getappdata(0,'Tfvalue');
Rf=getappdata(0,'Rfvalue');
Tw=getappdata(0,'Twvalue');
Ae=getappdata(0,'Aevalue');
Ry=getappdata(0,'Ryvalue');
Rz=getappdata(0,'Rzvalue');
I=getappdata(0,'Ivalue');
P=getappdata(0,'Pvalue');
Ly=getappdata(0,'Lyvalue');
Lz=getappdata(0,'Lzvalue');
Fy=getappdata(0,'Fyvalue');
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
radio11=getappdata(0,'radio11value');
if (radio1==1)
    Ky=1;
elseif (radio2==1)
    Ky=2;
elseif (radio3==1)
    Ky=0.8;
elseif (radio4==1)
    Ky=0.65;
end

if (radio5==1)
    Kz=1;
elseif (radio6==1)
    Kz=2;
elseif (radio7==1)
    Kz=0.8;
elseif (radio8==1)
    Kz=0.65;
end

if (radio9==1)
    ISMB={'ISLB75', 'ISLB100', 'ISLB125' ,'ISLB150' ,'ISLB175' 'ISLB200','ISLB225','ISLB250','ISLB275','ISLB300','ISLB325','ISLB350','ISLB400','ISLB450','ISLB500','ISLB550','ISLB600'};
    w=[6.1 8.0 11.9 14.2 16.7 19.8 23.5 27.9 33.0 37.7 43.1 49.5 56.9 65.3 75.0 86.3 99.5];
    H=[75 100 125 150 175 200 225 250 275 300 325 350 400 450 500 550 600]*(10^-3);
    Ze=[19.4 33.6 65.1 91.8 125.3 169.7 222.4 297.4 392.4 488.9 607.7 751.9 965.3 1223.8 1543.2 1933.2 2428.9]*(10^-6);
    Zp=[22.35 38.89 73.93 104.50 143.30 184.34 254.72 338.69 443.09 554.32 687.76 851.11 1099.45 1401.35 1773.67 2228.16 2798.56]*(10^-6);
    Ae=[7.71 10.21 15.12 18.08 21.30 25.27 29.92 35.53 42.02 48.08 54.90 63.01 72.43 83.14 95.50 109.97 126.69]*(10^-4);
    Tf=[5.0 6.4 6.5 6.8 6.9 7.3 8.6 8.2 8.8 9.4 9.8 11.4 12.5 13.4 14.1 15.0 15.5]*(10^-3);
    Bf=[50 50 75 80 90 100 100 125 140 150 165 165 165 170 180 190 210]*(10^-3);
    Tw=[3.7 4.0 4.4 4.8 5.1 5.4 5.8 6.1 6.4 6.7 7.0 7.4 8.0 8.6 9.2 9.9 10.5]*(10^-3);
    Rf=[6.5 7.0 8.0 9.5 9.5 9.5 12.0 13.0 14.0 15.0 16.0 16.0 16.0 16.0 17.0 18.0 20.0]*(10^-3);
    Ry=[1.14 1.12 1.69 1.75 1.93 2.13 1.94 2.33 2.61 2.80 3.05 3.17 3.15 3.20 3.34 3.48 3.79]*(10^-2);
    Rz=[3.07 4.06 5.19 6.17 7.17 8.19 9.15 10.23 11.31 12.35 13.41 14.45 16.33 18.20 20.10 21.99 23.98]*(10^-2);
    Iy=[1.0 12.7 43.4 55.2 79.6 115.4 112.7 193.4 287.0 376.2 510.8 631.9 716.4 853.0 1063.9 1335.1 1821.9]*(10^-8);
end
if (radio10==1)
    ISMB={'ISMB100','ISMB125','ISMB150','ISMB175','ISMB200','ISMB225','ISMB250','ISMB300','ISMB350','ISMB400','ISMB450','ISMB500','ISMB550','ISMB600'};
    w=[11.5 13.0 14.9 19.3 35.4 31.2 37.3 44.2 52.4 61.6 72.4 86.9 103.7 122.6];
    H=[100 125 150 175 200 225 250 300 350 400 450 500 550 600]*(10^-3);
    Ze=[51.5 71.8 96.9 145.4 223.5 305.9 410.5 573.6 778.9 1022.9 1350.7 1808.7 2359.8 3060.4]*(10^-6);
    Zp=[41.68 81.85 110.48 166.08 253.86 348.27 465.71 651.74 889.57 1176.18 1533.36 2074.67 2711.98 3510.63]*(10^-6);
    Ae=[14.60 16.60 19.0 24.62 32.33 39.72 47.55 56.26 66.71 78.46 92.27 110.74 132.11 156.21]*(10^-4);
    Tf=[7.2 7.6 7.6 8.6 10.8 11.8 12.5 12.4 14.2 16.0 17.4 17.2 19.3 20.8]*(10^-3);
    Bf=[75 75 80 90 100 110 125 140 140 140 150 180 190 210]*(10^-3);
    Tw=[4.0 4.4 4.8 5.5 5.7 6.5 6.9 7.5 8.1 8.9 9.4 10.2 11.2 12.0]*(10^-3);
    Rf=[9 9 9 10 11 12 13 14 14 14 15 17 18 20]*(10^-3);
    Ry=[1.67 1.62 1.66 1.86 2.15 2.34 2.65 2.84 2.84 2.82 3.01 3.52 3.73 4.12]*(10^-2);
    Rz=[4.20 5.20 6.18 7.19 8.32 9.31 10.39 12.37 14.29 16.15 18.15 20.21 22.16 24.24]*(10^-2);
    Iy=[40.8 43.7 52.6 85.0 150.0 218.3 334.5 453.9 537.7 622.1 834.0 1369.8 1833.8 2651.0]*(10^-8);
end
if (radio11==1)
    ISMB={'ISWB150','ISWB175','ISWB200','ISWB225','ISWB250','ISWB300','ISWB350','ISWB400','ISWB450','ISWB500','ISWB550','ISWB600','ISWB600'};
    w=[17.0 22.1 28.8 33.9 40.9 48.1 56.9 66.7 79.4 95.2 112.5 133.7 145.1];
    H=[150 175 200 225 250 300 350 400 450 500 550 600 600]*(10^-3);
    Ze=[111.9 172.5 262.5 348.5 475.4 654.8 887.0 1171.3 1558.1 2091.6 2723.9 3540.0 3854.2]*(10^-6);
    Zp=[126.86 194.20 293.99 389.93 527.57 731.21 995.49 1290.19 1760.59 2351.35 3066.29 3986.66 4341.63]*(10^-6);
    Ae=[21.67 28.11 36.71 43.24 52.05 61.33 72.50 85.01 101.15 121.22 143.34 170.38 184.86]*(10^-4);
    Tf=[7.0 7.4 9.0 9.9 9.0 10.0 11.4 13.0 15.4 14.7 17.6 21.3 23.6]*(10^-3);
    Bf=[100 125 140 150 200 200 200 200 200 250 250 250 250]*(10^-3);
    Tw=[5.4 5.8 6.1 6.4 6.7 7.4 8.0 8.6 9.2 9.9 10.5 11.2 11.8]*(10^-3);
    Rf=[8.0 8.0 9.0 9.0 10.0 11.0 12 13 14 15 16 17 18]*(10^-3);
    %HfValues=(HValues)-(TfValues);
    Ry=[2.09 2.59 2.99 3.22 4.06 4.02 4.03 4.04 4.11 4.96 5.11 5.25 5.35]*(10^-2);
    Rz=[4.20 5.20 6.18 7.19 8.32 9.31 10.39 12.37 14.29 16.15 18.15 20.21 22.16 24.24]*(10^-2);
    Iy=[94.8 188.6 328.8 448.6 857.5 990.1 1175.9 1388.0 1706.7 2987.8 3740.6 4702.5 5298.3]*(10^-8);
end

[~,length]=size(ISMB);
E=2*(10^8);
Gamma=1.1;
results=0;
Classy='';
Classz='';
for i=(I+1):length
    if (radio9==1 || radio10==1 || radio11 == 1)
        if((H(i)/Bf(i))>1.2)
            if((Tf(i)*10^3)<=40)
                Alphaz=0.21;
                Classz='A';
                Alphay=0.34;
                Classy='B';
            elseif (((Tf(i)*10^3)>=40) && ((Tf(i)*10^3)<=100))
                Alphaz=0.34;
                Classz='B';
                Alphay=0.49;
                Classy='C';
            end
        elseif((H(i)/Bf(i))<=1.2)
            if((Tf(i)*10^3)<=100)
            Alphaz=0.34;
            Classz='B';
            Alphay=0.49;
            Classy='C';
       elseif ((Tf(i)*10^3)>100)
            Alphaz=0.76;
            Classz='D';
            Alphay=0.76;
            Classy='D';       
            end  
        end
    end
    
    Fccy=((pi^2)*E)/((Ky*Ly/Ry(i))^2);
    Lambday=sqrt(Fy/Fccy);
    Phiy=0.5*(1+(Alphay*((Lambday)-0.2))+((Lambday)^2));
    Fcdy=(Fy/Gamma)/(Phiy+(((Phiy^2)-(Lambday^2))^0.5));
    F1=Fcdy*Ae(i);
    
    Fccz=((pi^2)*E)/((Kz*Lz/Rz(i))^2);
    Lambdaz=sqrt(Fy/Fccz);
    Phiz=0.5*(1+(Alphaz*(Lambdaz-0.2))+(Lambdaz^2));
    Fcdz=(Fy/Gamma)/(Phiz+(((Phiz^2)-(Lambdaz^2))^0.5));
    F2=Fcdz*Ae(i);
    
    Pd=min(F1,F2);
    
    if (P<=Pd)
        if((Ky*Ly/Ry(i))<=180)
            if((Kz*Lz/Rz(i))<=180)
        results=1;
        break;
            end
        end
    end 
    
end
if (results==1)
setappdata(0,'ISMBvalue',ISMB{i});
setappdata(0,'wvalue',w(i));
setappdata(0,'Hvalue',H(i)*10^3);
setappdata(0,'Bfvalue',Bf(i)*10^3);
setappdata(0,'Tfvalue',Tf(i)*10^3);
setappdata(0,'Rfvalue',Rf(i)*10^3);
setappdata(0,'Twvalue',Tw(i)*10^3);
setappdata(0,'Aevalue',Ae(i)*10^4);
setappdata(0,'Ryvalue',Ry(i)*10^2);
setappdata(0,'Rzvalue',Rz(i)*10^2);
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
setappdata(0,'radio11value',radio11);
setappdata(0,'Pvalue',P);
setappdata(0,'Lyvalue',Ly);
setappdata(0,'Lzvalue',Lz);
setappdata(0,'Fyvalue',Fy);
setappdata(0,'Kyvalue',Ky);
setappdata(0,'Kzvalue',Kz);
setappdata(0,'Fcdyvalue',(Fcdy*10^-3));
setappdata(0,'Fcdzvalue',(Fcdz*10^-3));
setappdata(0,'F1value',F1);
setappdata(0,'F2value',F2);
setappdata(0,'Classyvalue',Classy);
setappdata(0,'Classzvalue',Classz);
result
else
    Warning;
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ISMB=getappdata(0,'ISMBvalue');
w=getappdata(0,'wvalue');
H=getappdata(0,'Hvalue');
Bf=getappdata(0,'Bfvalue');
Tf=getappdata(0,'Tfvalue');
Rf=getappdata(0,'Rfvalue');
Tw=getappdata(0,'Twvalue');
Ae=getappdata(0,'Aevalue');
Ry=getappdata(0,'Ryvalue');
Rz=getappdata(0,'Rzvalue');
I=getappdata(0,'Ivalue');
P=getappdata(0,'Pvalue');
Ly=getappdata(0,'Lyvalue');
Lz=getappdata(0,'Lzvalue');
Fy=getappdata(0,'Fyvalue');
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
radio11=getappdata(0,'radio11value');
if (radio1==1)
    Ky=1;
elseif (radio2==1)
    Ky=2;
elseif (radio3==1)
    Ky=0.8;
elseif (radio4==1)
    Ky=0.65;
end

if (radio5==1)
    Kz=1;
elseif (radio6==1)
    Kz=2;
elseif (radio7==1)
    Kz=0.8;
elseif (radio8==1)
    Kz=0.65;
end

if (radio9==1)
    ISMB={'ISLB75','ISLB100','ISLB125','ISLB150','ISLB175','ISLB200','ISLB225','ISLB250','ISLB275','ISLB300','ISLB325','ISLB350','ISLB400','ISLB450','ISLB500','ISLB550','ISLB600'};
    w=[6.1 8.0 11.9 14.2 16.7 19.8 23.5 27.9 33.0 37.7 43.1 49.5 56.9 65.3 75.0 86.3 99.5];
    H=[75 100 125 150 175 200 225 250 275 300 325 350 400 450 500 550 600]*(10^-3);
    Ze=[19.4 33.6 65.1 91.8 125.3 169.7 222.4 297.4 392.4 488.9 607.7 751.9 965.3 1223.8 1543.2 1933.2 2428.9]*(10^-6);
    Zp=[22.35 38.89 73.93 104.50 143.30 184.34 254.72 338.69 443.09 554.32 687.76 851.11 1099.45 1401.35 1773.67 2228.16 2798.56]*(10^-6);
    Ae=[7.71 10.21 15.12 18.08 21.30 25.27 29.92 35.53 42.02 48.08 54.90 63.01 72.43 83.14 95.50 109.97 126.69]*(10^-4);
    Tf=[5.0 6.4 6.5 6.8 6.9 7.3 8.6 8.2 8.8 9.4 9.8 11.4 12.5 13.4 14.1 15.0 15.5]*(10^-3);
    Bf=[50 50 75 80 90 100 100 125 140 150 165 165 165 170 180 190 210]*(10^-3);
    Tw=[3.7 4.0 4.4 4.8 5.1 5.4 5.8 6.1 6.4 6.7 7.0 7.4 8.0 8.6 9.2 9.9 10.5]*(10^-3);
    Rf=[6.5 7.0 8.0 9.5 9.5 9.5 12.0 13.0 14.0 15.0 16.0 16.0 16.0 16.0 17.0 18.0 20.0]*(10^-3);
    Ry=[1.14 1.12 1.69 1.75 1.93 2.13 1.94 2.33 2.61 2.80 3.05 3.17 3.15 3.20 3.34 3.48 3.79]*(10^-2);
    Rz=[3.07 4.06 5.19 6.17 7.17 8.19 9.15 10.23 11.31 12.35 13.41 14.45 16.33 18.20 20.10 21.99 23.98]*(10^-2);
    Iy=[1.0 12.7 43.4 55.2 79.6 115.4 112.7 193.4 287.0 376.2 510.8 631.9 716.4 853.0 1063.9 1335.1 1821.9]*(10^-8);
end
if (radio10==1)
    ISMB={'ISMB100','ISMB125','ISMB150','ISMB175','ISMB200','ISMB225','ISMB250','ISMB300','ISMB350','ISMB400','ISMB450','ISMB500','ISMB550','ISMB600'};
    w=[11.5 13.0 14.9 19.3 35.4 31.2 37.3 44.2 52.4 61.6 72.4 86.9 103.7 122.6];
    H=[100 125 150 175 200 225 250 300 350 400 450 500 550 600]*(10^-3);
    Ze=[51.5 71.8 96.9 145.4 223.5 305.9 410.5 573.6 778.9 1022.9 1350.7 1808.7 2359.8 3060.4]*(10^-6);
    Zp=[41.68 81.85 110.48 166.08 253.86 348.27 465.71 651.74 889.57 1176.18 1533.36 2074.67 2711.98 3510.63]*(10^-6);
    Ae=[14.60 16.60 19.0 24.62 32.33 39.72 47.55 56.26 66.71 78.46 92.27 110.74 132.11 156.21]*(10^-4);
    Tf=[7.2 7.6 7.6 8.6 10.8 11.8 12.5 12.4 14.2 16.0 17.4 17.2 19.3 20.8]*(10^-3);
    Bf=[75 75 80 90 100 110 125 140 140 140 150 180 190 210]*(10^-3);
    Tw=[4.0 4.4 4.8 5.5 5.7 6.5 6.9 7.5 8.1 8.9 9.4 10.2 11.2 12.0]*(10^-3);
    Rf=[9 9 9 10 11 12 13 14 14 14 15 17 18 20]*(10^-3);
    Ry=[1.67 1.62 1.66 1.86 2.15 2.34 2.65 2.84 2.84 2.82 3.01 3.52 3.73 4.12]*(10^-2);
    Rz=[4.20 5.20 6.18 7.19 8.32 9.31 10.39 12.37 14.29 16.15 18.15 20.21 22.16 24.24]*(10^-2);
    Iy=[40.8 43.7 52.6 85.0 150.0 218.3 334.5 453.9 537.7 622.1 834.0 1369.8 1833.8 2651.0]*(10^-8);
end
if(radio11==1)
 ISMB={'ISWB150','ISWB175','ISWB200','ISWB225','ISWB250','ISWB300','ISWB350','ISWB400','ISWB450','ISWB500','ISWB550','ISWB600','ISWB600'};
    w=[17.0 22.1 28.8 33.9 40.9 48.1 56.9 66.7 79.4 95.2 112.5 133.7 145.1];
    H=[150 175 200 225 250 300 350 400 450 500 550 600 600]*(10^-3);
    Ze=[111.9 172.5 262.5 348.5 475.4 654.8 887.0 1171.3 1558.1 2091.6 2723.9 3540.0 3854.2]*(10^-6);
    Zp=[126.86 194.20 293.99 389.93 527.57 731.21 995.49 1290.19 1760.59 2351.35 3066.29 3986.66 4341.63]*(10^-6);
    Ae=[21.67 28.11 36.71 43.24 52.05 61.33 72.50 85.01 101.15 121.22 143.34 170.38 184.86]*(10^-4);
    Tf=[7.0 7.4 9.0 9.9 9.0 10.0 11.4 13.0 15.4 14.7 17.6 21.3 23.6]*(10^-3);
    Bf=[100 125 140 150 200 200 200 200 200 250 250 250 250]*(10^-3);
    Tw=[5.4 5.8 6.1 6.4 6.7 7.4 8.0 8.6 9.2 9.9 10.5 11.2 11.8]*(10^-3);
    Rf=[8.0 8.0 9.0 9.0 10.0 11.0 12 13 14 15 16 17 18]*(10^-3);
    %HfValues=(HValues)-(TfValues);
    Ry=[2.09 2.59 2.99 3.22 4.06 4.02 4.03 4.04 4.11 4.96 5.11 5.25 5.35]*(10^-2);
    Rz=[4.20 5.20 6.18 7.19 8.32 9.31 10.39 12.37 14.29 16.15 18.15 20.21 22.16 24.24]*(10^-2);
    Iy=[94.8 188.6 328.8 448.6 857.5 990.1 1175.9 1388.0 1706.7 2987.8 3740.6 4702.5 5298.3]*(10^-8);
end
    [~,length]=size(ISMB);
E=2*(10^8);
Gamma=1.1;
results=0;
Classy='';
Classz='';
for i=(I-1):length
    if (radio9==1 || radio10==1 || radio11==1)
        if((H(i)/Bf(i))>1.2)
            if((Tf(i)*10^3)<=40)
            Alphaz=0.21;
            Classz='A';
            Alphay=0.34;
            Classy='B';
            elseif (((Tf(i)*10^3)>=40) && ((Tf(i)*10^3)<=100))
            Alphaz=0.34;
            Classz='B';
            Alphay=0.49;
            Classy='C';
            end
        elseif((H(i)/Bf(i))<=1.2)
            if((Tf(i)*10^3)<=100)
            Alphaz=0.34;
            Classz='B';
            Alphay=0.49;
            Classy='C';
            elseif ((Tf(i)*10^3)>100)
            Alphaz=0.76;
            Classz='D';
            Alphay=0.76;
            Classy='D';
            end
        end
    end
    
    Fccy=((pi^2)*E)/((Ky*Ly/Ry(i))^2);
    Lambday=sqrt(Fy/Fccy);
    Phiy=0.5*(1+(Alphay*((Lambday)-0.2))+((Lambday)^2));
    Fcdy=(Fy/Gamma)/(Phiy+(((Phiy^2)-(Lambday^2))^0.5));
    F1=Fcdy*Ae(i);
    
    Fccz=((pi^2)*E)/((Kz*Lz/Rz(i))^2);
    Lambdaz=sqrt(Fy/Fccz);
    Phiz=0.5*(1+(Alphaz*(Lambdaz-0.2))+(Lambdaz^2));
    Fcdz=(Fy/Gamma)/(Phiz+(((Phiz^2)-(Lambdaz^2))^0.5));
    F2=Fcdz*Ae(i);
    
    Pd=min(F1,F2);
    
    if (P<=Pd)
        if((Ky*Ly/Ry(i))<=180)
            if((Kz*Lz/Rz(i))<=180)
        results=1;
        break;
            end
        end
    end 
    
end
if (results==1)
setappdata(0,'ISMBvalue',ISMB{i});
setappdata(0,'wvalue',w(i));
setappdata(0,'Hvalue',H(i)*10^3);
setappdata(0,'Bfvalue',Bf(i)*10^3);
setappdata(0,'Tfvalue',Tf(i)*10^3);
setappdata(0,'Rfvalue',Rf(i)*10^3);
setappdata(0,'Twvalue',Tw(i)*10^3);
setappdata(0,'Aevalue',Ae(i)*10^4);
setappdata(0,'Ryvalue',Ry(i)*10^2);
setappdata(0,'Rzvalue',Rz(i)*10^2);
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
setappdata(0,'radio11value',radio11);
setappdata(0,'Pvalue',P);
setappdata(0,'Lyvalue',Ly);
setappdata(0,'Lzvalue',Lz);
setappdata(0,'Fyvalue',Fy);
setappdata(0,'Kyvalue',Ky);
setappdata(0,'Kzvalue',Kz);
setappdata(0,'Fcdyvalue',(Fcdy*10^-3));
setappdata(0,'Fcdzvalue',(Fcdz*10^-3));
setappdata(0,'F1value',F1);
setappdata(0,'F2value',F2);
setappdata(0,'Classyvalue',Classy);
setappdata(0,'Classzvalue',Classz);
result
else
    Warning;
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
print;

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


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



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
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



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
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



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
