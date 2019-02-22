# frozen_string_literal: true

module UptimerobotApi
  METHODS = %i[
    getMonitors
    newMonitor
    editMonitor
    deleteMonitor
    resetMonitor
    getAlertContacts
    newAlertContact
    editAlertContact
    deleteAlertContact
    getMWindows
    newMWindow
    editMWindow
    deleteMWindow
    getPSPs
    newPSP
    editPSP
    deletePSP
  ].freeze
end
