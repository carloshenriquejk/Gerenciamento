object formMensagens: TformMensagens
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 282
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMensagens: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 282
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      628
      282)
    object ShapeMensagens: TShape
      Left = 0
      Top = 0
      Width = 628
      Height = 282
      Align = alClient
      ExplicitTop = 14
    end
    object lbTitle: TLabel
      Left = 16
      Top = 14
      Width = 70
      Height = 20
      Caption = 'ATEN'#199#195'O'
      Color = 15921906
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ImgIcon: TImage
      Left = 49
      Top = 77
      Width = 113
      Height = 102
      Center = True
    end
    object lbSubtitle: TLabel
      Left = 168
      Top = 104
      Width = 70
      Height = 20
      Caption = 'ATEN'#199#195'O'
      Color = 15921906
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbFooter: TLabel
      Left = 168
      Top = 130
      Width = 225
      Height = 49
      AutoSize = False
      Caption = 'ALERT USER ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Panel8: TPanel
      Left = 0
      Top = 40
      Width = 747
      Height = 3
      Align = alCustom
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
    end
    object pnlButton: TPanel
      Left = 352
      Top = 197
      Width = 260
      Height = 50
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 1
      object btnNao: TPanel
        Left = 0
        Top = 1
        Width = 115
        Height = 34
        Align = alCustom
        BevelOuter = bvNone
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btNao: TSpeedButton
          Left = 0
          Top = 0
          Width = 115
          Height = 34
          Align = alClient
          Caption = 'N'#195'O (ESC)'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btNaoClick
          ExplicitWidth = 110
        end
      end
      object btnSim: TPanel
        Left = 121
        Top = 1
        Width = 114
        Height = 34
        Align = alCustom
        BevelOuter = bvNone
        Color = 16024898
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object btSim: TSpeedButton
          Left = 0
          Top = 0
          Width = 114
          Height = 34
          Align = alClient
          Caption = 'SIM (ENTER)'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btSimClick
          ExplicitWidth = 110
        end
      end
    end
  end
end
