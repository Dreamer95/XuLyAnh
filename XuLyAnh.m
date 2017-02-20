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

% Last Modified by GUIDE v2.5 19-Feb-2017 22:52:10

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
%set(handles.radiobutton4,'Value',0)
%set(handles.radiobutton5,'Value',0)
%set(handles.slider1,'Value',0)
%set(handles.edit1,'String',0)


R = Img(:,:,1);
G = Img(:,:,2);
B = Img(:,:,3);
pic = cat(3,R,G*0,B*0);
axes(handles.axes2)
cla('reset')
imshow(pic)
title('Red Channel')


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
%set(handles.radiobutton4,'Value',0)
%set(handles.radiobutton5,'Value',0)
%set(handles.slider1,'Value',0)
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
%set(handles.radiobutton4,'Value',0)
%set(handles.radiobutton5,'Value',0)
%set(handles.slider1,'Value',0)
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
%set(handles.radiobutton4,'Enable','on')
%set(handles.radiobutton5,'Enable','on')
%set(handles.slider1,'Enable','on')
%set(handles.edit1,'Enable','on')

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
