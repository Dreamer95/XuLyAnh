function varargout = XuLyAnh(varargin)
% XULYANH MATLAB code for XuLyAnh.fig
%      XULYANH, by itself, creates a new XULYANH or raises the existing
%      singleton*.
%
%      H = XULYANH returns the handle to a new XULYANH or the handle to
%      the existing singleton*.
%
%      XULYANH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in XULYANH.M with the given input arguments.
%
%      XULYANH('Property','Value',...) creates a new XULYANH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before XuLyAnh_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to XuLyAnh_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help XuLyAnh

% Last Modified by GUIDE v2.5 21-Feb-2017 00:59:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @XuLyAnh_OpeningFcn, ...
                   'gui_OutputFcn',  @XuLyAnh_OutputFcn, ...
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


% --- Executes just before XuLyAnh is made visible.
function XuLyAnh_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to XuLyAnh (see VARARGIN)

% Choose default command line output for XuLyAnh
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes XuLyAnh wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = XuLyAnh_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.



% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img
global pic
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radioGrayScale,'Value',0)
set(handles.radioAmBan,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider2,'Value',0)
set(handles.slider3,'Value',0)
set(handles.slider4,'Value',0)
set(handles.slider5,'Value',0)
%set(handles.edit1,'String',0)


R = Img(:,:,1);
G = Img(:,:,2);
B = Img(:,:,3);
pic = cat(3,R,G*0,B*0);
axes(handles.axes2)
cla('reset')
imshow(pic)
title('Red Channel')
set(handles.textBinary,'String','')


% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img
global pic
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radioGrayScale,'Value',0)
set(handles.radioAmBan,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider2,'Value',0)
set(handles.slider3,'Value',0)
set(handles.slider4,'Value',0)
set(handles.slider5,'Value',0)
%set(handles.edit1,'String',0)

% Img = handles.Img;
R = Img(:,:,1);
G = Img(:,:,2);
B = Img(:,:,3);
pic = cat(3,R*0,G*0,B);
axes(handles.axes2)
% cla('reset')
imshow(pic)
title('Blue Channel')
set(handles.textBinary,'String','')

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img
global pic
set(handles.radiobutton1,'Value',0)
set(handles.radiobutton2,'Value',0)
set(handles.radioGrayScale,'Value',0)
set(handles.radioAmBan,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider2,'Value',0)
set(handles.slider3,'Value',0)
set(handles.slider4,'Value',0)
set(handles.slider5,'Value',0)
%set(handles.edit1,'String',0)

% Img = handles.Img;
R = Img(:,:,1);
G = Img(:,:,2);
B = Img(:,:,3);
pic = cat(3,R*0,G,B*0);
axes(handles.axes2)
cla('reset')
imshow(pic)
title('Green Channel')
set(handles.textBinary,'String','')

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img
[filename,pathname] = uigetfile({'*.*'});

if ~isequal(filename,0)
    Info = imfinfo(fullfile(pathname,filename));
    if Info.BitDepth == 24
        Img = imread(fullfile(pathname,filename));
        axes(handles.axes1);
        imshow(Img);
    else
        msgbox('Hay chon anh RGB');
        return
    end
else
    return
end

% handles.Img = Img;

guidata(hObject,handles);
set(handles.radiobutton1,'Enable','on')
set(handles.radiobutton2,'Enable','on')
set(handles.radiobutton3,'Enable','on')
set(handles.radioGrayScale,'Enable','on')
set(handles.radioAmBan,'Enable','on')
set(handles.slider1,'Enable','on')
set(handles.slider2,'Enable','on')
set(handles.slider3,'Enable','on')
set(handles.slider4,'Enable','on')
%set(handles.edit1,'Enable','on')




% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img pic
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton1,'Value',0)
set(handles.radioGrayScale,'Value',0)
set(handles.radioAmBan,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider5,'Value',0)
set(handles.slider3,'Value',0)
set(handles.slider4,'Value',0)
set(handles.slider5,'Value',0)
E = get(hObject,'Value');
g = im2double(Img);
m = mean2(g);%tính trung binh ma tran anh
pic = 1./(1+(m./(g + eps)).^E);
axes(handles.axes2);
imshow(pic);
title('Contrast Image');
set(handles.textBinary,'String','')


% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img pic
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton1,'Value',0)
set(handles.radioGrayScale,'Value',0)
set(handles.radioAmBan,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider2,'Value',0)
set(handles.slider4,'Value',0)
set(handles.slider5,'Value',0)
c = get(hObject,'Value');
g = im2double(Img);
pic = c*log(1 + double(g));
axes(handles.axes2);
imshow(pic);
title('Contrast Image');
set(handles.textBinary,'String','')



% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img pic
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton1,'Value',0)
set(handles.radioGrayScale,'Value',0)
set(handles.radioAmBan,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider2,'Value',0)
set(handles.slider3,'Value',0)
%set(handles.slider5,'Value',0)
c = get(handles.slider5,'Value');
gamma = get(hObject,'Value');
g = im2double(Img);
pic = c*(g.^gamma);
axes(handles.axes2);
imshow(pic);
title('Contrast Image');
set(handles.textBinary,'String','')

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in radioAmBan.
function radioAmBan_Callback(hObject, eventdata, handles)
% hObject    handle to radioAmBan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img
global pic
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton1,'Value',0)
set(handles.radioGrayScale,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider2,'Value',0)
set(handles.slider3,'Value',0)
set(handles.slider4,'Value',0)
set(handles.slider5,'Value',0)
pic = imcomplement(Img);
axes(handles.axes2);
imshow(pic);
title('Negative Image');
set(handles.textBinary,'String','')

% Hint: get(hObject,'Value') returns toggle state of radioAmBan


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img
global pic
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton1,'Value',0)
set(handles.radioGrayScale,'Value',0)
set(handles.radioAmBan,'Value',0)
set(handles.slider2,'Value',0)
set(handles.slider3,'Value',0)
set(handles.slider4,'Value',0)
set(handles.slider5,'Value',0)
Gray = rgb2gray(Img);
thresh = get(hObject,'Value');
pic = im2bw(Gray,thresh);
axes(handles.axes2)
cla('reset')
imshow(pic)
title('Binary Image')
set(handles.textBinary,'String',num2str(thresh))


% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in radioGrayScale.
function radioGrayScale_Callback(hObject, eventdata, handles)

% hObject    handle to radioGrayScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img
global pic
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton1,'Value',0)
set(handles.radioAmBan,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider2,'Value',0)
set(handles.slider3,'Value',0)
set(handles.slider4,'Value',0)
set(handles.slider5,'Value',0)
pic = rgb2gray(Img);
axes(handles.axes2)
% cla('reset')
imshow(pic)
title('Grayscale Image')
set(handles.textBinary,'String','')



% Hint: get(hObject,'Value') returns toggle state of radioGrayScale




% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Img pic
set(handles.radiobutton2,'Value',0)
set(handles.radiobutton3,'Value',0)
set(handles.radiobutton1,'Value',0)
set(handles.radioGrayScale,'Value',0)
set(handles.radioAmBan,'Value',0)
set(handles.slider1,'Value',0)
set(handles.slider2,'Value',0)
set(handles.slider3,'Value',0)
%set(handles.slider5,'Value',0)
gamma = get(handles.slider4,'Value');
c = get(hObject,'Value');
g = im2double(Img);
pic = c*(g.^gamma);
axes(handles.axes2);
imshow(pic);
title('Contrast Image');
set(handles.textBinary,'String','')

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pic
  [filename,pathname]=uiputfile({'*.jpg','JPEG Files(*.jpg)';... 
           '*.bmp','Bitmap Files(*.bmp)';'*.gif','GIF Files(*.gif)';... 
           '*.tif','TIFF Files(*.tif)';... 
           '*.*','all image file'},'Luu anh da chon!','anhkq/'); 
  imwrite(pic,[pathname,filename]);  


% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function help_Callback(hObject, eventdata, handles)
% hObject    handle to help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function about_Callback(hObject, eventdata, handles)
% hObject    handle to about (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Chuong trinh xu ly anh voi mot so chuc nang don gian tren Matlab','About');



% --------------------------------------------------------------------
function introduce_Callback(hObject, eventdata, handles)
% hObject    handle to introduce (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox({'    Sinh Vien Thuc Hien' 'Dinh Ngoc Dong - 13520209' 'Tran Tien Dung - 13520129'},'Introduce');


% --------------------------------------------------------------------
function quit_Callback(hObject, eventdata, handles)
% hObject    handle to quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('Would you like to quit?',...
    'Choice menu', ...
    'Yes','No','Yes');
switch choice
    case 'Yes'
        close
    case 'No'
end
