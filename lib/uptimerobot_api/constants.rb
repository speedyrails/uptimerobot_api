# frozen_string_literal: true

module UptimerobotApi
  METHODS = {
    get_monitors: 'getMonitors',
    new_monitor: 'newMonitor',
    edit_monitor: 'editMonitor',
    delete_monitor: 'deleteMonitor',
    reset_monitor: 'resetMonitor',
    get_alert_contacts: 'getAlertContacts',
    new_alert_contact: 'newAlertContact',
    edit_alert_contact: 'editAlertContact',
    delete_alert_contact: 'deleteAlertContact',
    get_mwindows: 'getMWindows',
    create_mwindow: 'newMWindow',
    edit_mwindow: 'editMWindow',
    delete_mwindow: 'deleteMWindow',
    get_psps: 'getPSPs',
    new_psp: 'newPSP',
    edit_psp: 'editPSP',
    delete_psp: 'deletePSP'
  }.freeze
end
