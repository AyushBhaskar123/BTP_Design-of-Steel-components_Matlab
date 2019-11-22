function varargout = InputDetails(varargin)
% INPUTDETAILS MATLAB code for InputDetails.fig
%      INPUTDETAILS, by itself, creates a new INPUTDETAILS or raises the existing
%      singleton*.
%
%      H = INPUTDETAILS returns the handle to a new INPUTDETAILS or the handle to
%      the existing singleton*.
%
%      INPUTDETAILS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INPUTDETAILS.M with the given input arguments.
%
%      INPUTDETAILS('Property','Value',...) creates a new INPUTDETAILS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InputDetails_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InputDetails_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InputDetails

% Last Modified by GUIDE v2.5 13-Oct-2019 15:45:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InputDetails_OpeningFcn, ...
                   'gui_OutputFcn',  @InputDetails_OutputFcn, ...
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


% --- Executes just before InputDetails is made visible.
function InputDetails_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InputDetails (see VARARGIN)

% Choose default command line output for InputDetails
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes InputDetails wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InputDetails_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radio1=get(handles.radiobutton1, 'Value');
radio2=get(handles.radiobutton2, 'Value');
radio3=get(handles.radiobutton3, 'Value');
radio4=get(handles.radiobutton4, 'Value');
radio5=get(handles.radiobutton5, 'Value');
radio6=get(handles.radiobutton6, 'Value');
ten=getappdata(0,'ten');
fy=getappdata(0,'fy');
fu=getappdata(0,'fu');
name=getappdata(0,'name');
t=getappdata(0,'t');
a=getappdata(0,'a');
b=getappdata(0,'b');
Ag=getappdata(0,'Ag');
w=getappdata(0,'w');
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
%    TValues=[3,4,3,4,5,3,4,5,3,4,5,6,3,4,5,6,3,4,5,6,3,4,5,6,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,5,6,8,10,6,8,10,12,6,8,10,12,6,8,10,12,8,10,12,15,8,10,12,15,10,12,15,18,12,15,18,25]
%     a=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
%     b=[20,20,25,25,25,30,30,30,35,35,35,35,40,40,40,40,45,45,45,45,50,50,50,50,55,55,55,55,60,60,60,60,65,65,65,65,70,70,70,70,75,75,75,75,80,80,80,80,90,90,90,90,100,100,100,100,110,110,110,110,130,130,130,130,150,150,150,150,200,200,200,200]
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
%         Vdsb=(Vnsb/1.25)*1000;
% %         fub=440;
%         kb=min([0.566,0.833,fub/fu,1]);
%         Vnpb=2.5*kb*d*TValues(i)*fu;
%         Vdpb=Vnpb/1.25;
%         Vmin=min(Vdsb,Vdpb);
%         l=floor((ten*10^-3)/min(Vdsb,Vdpb));
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

    [~,length]=size(name);
    for i=1:length
        Vdsb=(fub)*((1*0.78*3.14*(d*d)/4)/1.732*1.25);
%             A=[(1.7/3.0),((2.5*d/(3*(d+2)))-0.25),(fub/fu),1.0];
%             kb=min(A);
%            
%                 Vdpb=(2.5*kb*d*t(i)*fu/1.25)/1000;
            kb=min([0.566,0.833,fub/fu,1]);
            Vnpb=2.5*kb*d*t(i)*fu;
             Vdpb=Vnpb/1.25;
                Vmin=min(Vdsb,Vdpb);
            
            BoltF=min(Vdsb,Vdpb);
            nbolt=floor(ten/10*(BoltF));
            
            Tdg=(Ag(i)*10*fy/1.25)/1000;
            

            
           Beta0=(1.4)-(0.076*(fy/fu)*(a(i)/t(i))*(((a(i)+(0.5*b(i)))-t(i))/((nbolt-1)*(2.5*d))));
           
            Beta1 = 0.7;
            Beta2=(fu*1.5/(fy*1.5));
            Beta=0.0;
            if(Beta0<=Beta1 && Beta0<=Beta2)
                Beta=0.7;
            end
            if(Beta0>=Beta1 && Beta0<=Beta2)
                Beta=Beta0;
            end
            if(Beta0>=Beta2)
                Beta=Beta2;
            end
          
                Anc=(a(i)-(t(i)/2)-(d+2))*t(i);
                Ago=(a(i)-(t(i)/2))*t(i);
                  
           

            Tdn=(((0.9*Anc*fu/1.25)+(Beta*Ago*fy/1.25))/1000)/10;
%         Tdg=(AreaValues(i)*fy)/1.1;
%         d=20*10^-3;
%         Anb=0.78*(3.14/4)*d*d;
%         Vnsb=(fu/1.73)*(Anb);
%         Vdsb=(Vnsb/1.25)*1000;
%         fub=440;
%         kb=min([0.566,0.833,fub/fu,1]);
%         Vnpb=2.5*kb*d*TValues(i)*fu;
%         Vdpb=Vnpb/1.25;
%         l=floor(ten/min(Vdsb,Vdpb));
%         n=l+1;
%         An=AreaValues(i)-n*d;
%         Tdn=(0.9*An*fu)/1.25;
%         Anc=(a(i)-(t(i)/2)-d0)*t(i)
%                 Ago=(a(i)-(t(i)/2))*t(i)
%             if(x==3):
%                 Anc=(h[i]-tf[i]-d0)*tw[i]
%                 Ago=Ag[i]-(h[i]-tf[i]-d0)*tw[i]

 

            
              Avg=t(i)*(((nbolt-1)*(2.5*d))+(1.7*(d+0.002)));
                Avn=t(i)*(((nbolt-1)*(2.5*d))+(1.7*(d+0.002))-((nbolt-0.5)*(d+0.002)));

                Atg=t(i)*((a(i)-(t(i)/2))/2);
                Atn=t(i)*(((a(i)-(t(i)/2))/2)-(0.5*(d+0.002)));
           

         t3=((Avg*fy/(1.732*1.25))+(0.9*Atn*fu/1.25))/1000;
            t4=((0.9*Avn*fu/(1.732*1.25))+(Atg*fy/1.25))/1000;
        if(ten>min([Tdg,Tdn,t3,t4]))
            result_section = 0;
            continue;
        else
            result_section = 1;
            break;
        end
    end

    if result_section == 1
    setappdata(0,'ISA',name{i});
    setappdata(0,'name',name);
    setappdata(0,'t',t);
    setappdata(0,'a',a);
    setappdata(0,'b',b);
    setappdata(0,'Ag',Ag);
    setappdata(0,'w',w);
    setappdata(0,'TValues',t(i));
    setappdata(0,'AreaValues', Ag(i));
    setappdata(0,'k',nbolt);
    setappdata(0,'Tdg',Tdg);
    setappdata(0,'Tdn',Tdn);
    setappdata(0,'ten',ten);
    setappdata(0,'Tdb1',t3);
    setappdata(0,'Tdb2',t4);
    setappdata(0,'Vdsb',Vdsb);
    setappdata(0,'Vdpb',Vdpb);
    setappdata(0,'Vmin',Vmin);
    setappdata(0,'Ivalue',i);
    setappdata(0, 'radio1',radio1)
    setappdata(0, 'radio2',radio2)
    setappdata(0, 'radio3',radio3)
    setappdata(0, 'radio4',radio4)
    setappdata(0, 'radio5',radio5)
    setappdata(0, 'radio6',radio6)
    Result
    else
       Warning
    end
result_section = 0;       
