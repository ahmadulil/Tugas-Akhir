function varargout = coba(varargin)
% COBA MATLAB code for coba.fig
%      COBA, by itself, creates a new COBA or raises the existing
%      singleton*.
%
%      H = COBA returns the handle to a new COBA or the handle to
%      the existing singleton*.
%
%      COBA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COBA.M with the given input arguments.
%
%      COBA('Property','Value',...) creates a new COBA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before coba_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to coba_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help coba

% Last Modified by GUIDE v2.5 06-Dec-2015 23:24:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @coba_OpeningFcn, ...
                   'gui_OutputFcn',  @coba_OutputFcn, ...
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


% --- Executes just before coba is made visible.
function coba_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to coba (see VARARGIN)

% Choose default command line output for coba
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes coba wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = coba_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Browseimage.
function Browseimage_Callback(hObject, eventdata, handles) 
global complete;
[fn pn] = uigetfile({'*.mp4;*.avi'},'select video file');
complete = strcat(pn,fn);

% --- Executes on button press in proses.
function proses_Callback(hObject, eventdata, handles)
global complete;
load video.mat
vidObj = VideoReader(complete);
% vidObj = vfire2;
tic
load testskema1.mat;
load testskema2.mat;
load trainfirefireimage2label.mat;
load mindanstdalastprobimgfireimage1.mat;

[m,n,l]=size(read(vidObj,1));

divi=m/16;
divj=n/16;
sizeblok=divi*divj;

threshd=sizeblok/8;
count=0;
    for k=1:vidObj.NumberOfFrame
    arrEblok(:,:,k)=hitungwavelet(read(vidObj,k)); %ngitung arre dlu biar cepet
    end
    for k=31:vidObj.NumberOfFrame
        count=count+1;
        sumblok=0;
        sumspt=0;
        waveblok=zeros(16,16);
        sptfblok=zeros(16,16);
        img=read(vidObj,k);
        foreground=bakground(25,20,vidObj,k);
        probimg=threshprob(model,mina+stda,read(vidObj,k));
        
        aktif=probimg.*foreground;
        axes(handles.axes5);
        imshow(img);
        
        axes(handles.axes6);
        imshow(foreground);
        
        axes(handles.axes7);
        imshow(probimg);
        
        axes(handles.axes9);
        imshow(aktif);
        for i=0:15
            for j=0:15 %pembagian menjadi 16 blok
                startp=[i*divi+1;j*divj+1]; %pixel blok
                endp=[(i+1)*divi;(j+1)*divj]; %pixel blok %hitung nilai wblok
      
                  if (sum(sum(aktif(startp(1):endp(1),startp(2):endp(2))==1)) > threshd)
%                     actblok(i+1,j+1)=1; %penanda label 
                    waveblok(i+1,j+1)=threshwblok(minwblokbaru+2*stdwblokbaru,i,j,arrEblok(:,:,k)); %ngitung waveblok
                    if waveblok(i+1,j+1)==1
                        sumblok=sumblok+1;
                        poswave{sumblok}=[startp(2) startp(1) 20 15];
                        
                        sptfblok(i+1,j+1)=threshsptblok(minsptbaru+stdsptbaru,30,k,i,j,arrEblok); %ngitung sptblok
                        if sptfblok(i+1,j+1)==1
                            sumspt=sumspt+1;
                            posptf{sumspt}=[startp(2) startp(1) 20 15];
                        end
                        
                    end
                  end
            end       
        end
        if sumblok>0
            axes(handles.axes8);
            imshow(img);
            for i=1:sumblok %menampilkan hasil waveblok
                rectangle('Position',poswave{i},'LineWidth',1,'EdgeColor','r');
                stringa{count}=strcat('Waveblok frame  ',int2str(k),' Fire')
            end  
        else
            stringa{count}=strcat('Waveblok frame  ',int2str(k),' Not Fire')
        end
        set(handles.listbox2,'string',stringa);
        guidata(hObject, handles);
        
        if sumspt>0
            axes(handles.axes11); 
            imshow(img);
            for i=1:sumspt %menampilkan hasil sptfblok
                rectangle('Position',posptf{i},'LineWidth',1,'EdgeColor','r');
                stringb{count}=strcat('Sptfblok frame ',int2str(k),' Fire')
                guidata(hObject, handles);
            end        
        else
            stringb{count}=strcat('Sptfblok frame  ',int2str(k),' Not Fire');
        end
        set(handles.listbox3,'string',stringb);
        guidata(hObject, handles);
end
% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4


% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox5.
function listbox5_Callback(hObject, eventdata, handles)
% hObject    handle to listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox5


% --- Executes during object creation, after setting all properties.
function listbox5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
