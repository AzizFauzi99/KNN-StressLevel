function varargout = knn_stress_level(varargin)
% KNN_STRESS_LEVEL MATLAB code for knn_stress_level.fig
%      KNN_STRESS_LEVEL, by itself, creates a new KNN_STRESS_LEVEL or raises the existing
%      singleton*.
%
%      H = KNN_STRESS_LEVEL returns the handle to a new KNN_STRESS_LEVEL or the handle to
%      the existing singleton*.
%
%      KNN_STRESS_LEVEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KNN_STRESS_LEVEL.M with the given input arguments.
%
%      KNN_STRESS_LEVEL('Property','Value',...) creates a new KNN_STRESS_LEVEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before knn_stress_level_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to knn_stress_level_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help knn_stress_level

% Last Modified by GUIDE v2.5 14-Mar-2022 22:30:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @knn_stress_level_OpeningFcn, ...
                   'gui_OutputFcn',  @knn_stress_level_OutputFcn, ...
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


% --- Executes just before knn_stress_level is made visible.
function knn_stress_level_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to knn_stress_level (see VARARGIN)

% Choose default command line output for knn_stress_level
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes knn_stress_level wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = knn_stress_level_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in show_data.
function show_data_Callback(hObject, eventdata, handles)
% hObject    handle to show_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('Stress-Level.csv');
opts.SelectedVariableNames = (1:3);
filter = readmatrix('Stress-Level.csv', opts); 
set(handles.data, 'data', filter);

% --- Executes on button press in hide_data.
function hide_data_Callback(hObject, eventdata, handles)
% hObject    handle to hide_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.data, 'Data', cell(size(get(handles.data,'Data'))));

function kt_Callback(hObject, eventdata, handles)
% hObject    handle to kt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kt as text
%        str2double(get(hObject,'String')) returns contents of kt as a double


% --- Executes during object creation, after setting all properties.
function kt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function st_Callback(hObject, eventdata, handles)
% hObject    handle to st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of st as text
%        str2double(get(hObject,'String')) returns contents of st as a double


% --- Executes during object creation, after setting all properties.
function st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jl_Callback(hObject, eventdata, handles)
% hObject    handle to jl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jl as text
%        str2double(get(hObject,'String')) returns contents of jl as a double


% --- Executes during object creation, after setting all properties.
function jl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double


% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in lihat_hasil.
function lihat_hasil_Callback(hObject, eventdata, handles)
% hObject    handle to lihat_hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kt = str2double(get(handles.kt, 'String'));
st = str2double(get(handles.st, 'String'));
jl = str2double(get(handles.jl, 'String'));
k = str2double(get(handles.k, 'String'));

sample = [kt st jl];
opts = detectImportOptions('Stress-Level.csv');
opts.SelectedVariableNames = (1:3);
training = readmatrix('Stress-Level.csv', opts); 

opts = detectImportOptions('Stress-Level.csv');
opts.SelectedVariableNames = (4);
group = readmatrix('Stress-Level.csv', opts); 

class = fitcknn(training,group,'NumNeighbors',k);
hasil_clasify = predict(class, sample);
set(handles.hasil, 'String', hasil_clasify);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.kt, 'string', (''));
set(handles.st, 'string', (''));
set(handles.jl, 'string', (''));
set(handles.k, 'string', (''));
set(handles.hasil, 'string', ('Hasil Klasifikasi'));