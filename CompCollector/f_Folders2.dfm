object fFolders: TfFolders
  Left = 0
  Top = 0
  Caption = 'Select Folders'
  ClientHeight = 158
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  DesignSize = (
    516
    158)
  PixelsPerInch = 96
  TextHeight = 15
  object lblPath: TRzLabel
    Left = 9
    Top = 9
    Width = 48
    Height = 15
    Caption = 'Path List:'
  end
  object btnAddfolder: TSpeedButton
    Left = 344
    Top = 25
    Width = 95
    Height = 22
    Caption = 'Add Folder'
    OnClick = btnAddfolderClick
  end
  object lbFilePath: TRzListBox
    Left = 9
    Top = 25
    Width = 328
    Height = 128
    ItemHeight = 15
    TabOrder = 0
  end
  object btnCancel: TRzButton
    Left = 349
    Top = 128
    ModalResult = 2
    Anchors = [akRight, akBottom]
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btnCancelClick
  end
  object btnOK: TRzButton
    Left = 437
    Top = 128
    ModalResult = 1
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 2
    OnClick = btnOKClick
  end
  object dlgOpen: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders, fdoAllowMultiSelect]
    Left = 464
    Top = 32
  end
end
