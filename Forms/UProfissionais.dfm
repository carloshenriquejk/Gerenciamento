object FormProfissional: TFormProfissional
  Left = 0
  Top = 0
  Caption = 'FormProfissional'
  ClientHeight = 525
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 525
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -8
    ExplicitWidth = 464
    DesignSize = (
      471
      525)
    object lbNome: TLabel
      Left = 32
      Top = 85
      Width = 143
      Height = 20
      Caption = 'Nome do Profissional'
      Font.Charset = ANSI_CHARSET
      Font.Color = 7105644
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbTel: TLabel
      Left = 294
      Top = 157
      Width = 57
      Height = 20
      Caption = 'Telefone'
      Font.Charset = ANSI_CHARSET
      Font.Color = 7105644
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbEspeciamlidade: TLabel
      Left = 32
      Top = 157
      Width = 92
      Height = 20
      Caption = 'Especialidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = 7105644
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbtTitle: TLabel
      Left = 8
      Top = 12
      Width = 236
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Caption = 'CADASTRO DE PROFISSIONAIS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 231
    end
    object pnlButtons: TPanel
      Left = 158
      Top = 317
      Width = 233
      Height = 41
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 151
      object btConfirm: TPanel
        Left = 0
        Top = 1
        Width = 110
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
        TabOrder = 0
        object SpConfirm: TSpeedButton
          Left = 0
          Top = 0
          Width = 110
          Height = 34
          Align = alClient
          Caption = 'Confirmar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel6: TPanel
        Left = 116
        Top = 1
        Width = 109
        Height = 35
        Align = alCustom
        BevelOuter = bvNone
        Color = 15921906
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object SpeedButton3: TSpeedButton
          Left = 0
          Top = 0
          Width = 109
          Height = 35
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 16
        end
      end
    end
    object pnltop: TPanel
      Left = -1068
      Top = 39
      Width = 1539
      Height = 2
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 3
      ExplicitWidth = 1534
    end
    object DBGrid1: TDBGrid
      Left = 32
      Top = 240
      Width = 409
      Height = 201
      DataSource = DSprofisionais
      TabOrder = 5
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id_proficional'
          Title.Caption = 'Cod.'
          Title.Color = -1
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clGray
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = []
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ds_profisional'
          Title.Caption = 'NOME'
          Title.Color = -1
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clGray
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = []
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nr_contato'
          Title.Caption = 'CONTATO'
          Title.Color = -1
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clGray
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = []
          Width = 123
          Visible = True
        end>
    end
    object edNome: TDBEdit
      Left = 32
      Top = 111
      Width = 409
      Height = 23
      DataField = 'ds_profisional'
      DataSource = FormDados.ProfisionaisDS
      TabOrder = 1
    end
    object edEspecialidade: TDBEdit
      Left = 32
      Top = 183
      Width = 241
      Height = 23
      DataField = 'ds_especialidade'
      DataSource = FormDados.ProfisionaisDS
      TabOrder = 4
    end
    object editTel: TDBEdit
      Left = 294
      Top = 183
      Width = 139
      Height = 23
      DataField = 'nr_contato'
      DataSource = FormDados.ProfisionaisDS
      MaxLength = 12
      TabOrder = 2
    end
    object Panel5: TPanel
      Left = 80
      Top = 469
      Width = 337
      Height = 41
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 6
      object Panel1: TPanel
        Left = 16
        Top = 0
        Width = 94
        Height = 33
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
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 94
          Height = 33
          Align = alClient
          Caption = 'Adicionar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
          ExplicitWidth = 110
          ExplicitHeight = 34
        end
      end
      object Panel2: TPanel
        Left = 128
        Top = 1
        Width = 89
        Height = 35
        Align = alCustom
        BevelOuter = bvNone
        Color = 15921906
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          Left = 0
          Top = 0
          Width = 89
          Height = 35
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton2Click
          ExplicitLeft = 16
          ExplicitWidth = 109
        end
      end
      object Panel3: TPanel
        Left = 240
        Top = 0
        Width = 97
        Height = 33
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
        TabOrder = 2
        object SpeedButton4: TSpeedButton
          Left = 0
          Top = 0
          Width = 97
          Height = 33
          Align = alClient
          Caption = 'Confirmar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
          ExplicitLeft = 8
          ExplicitTop = -8
          ExplicitHeight = 34
        end
      end
    end
  end
  object DSprofisionais: TDataSource
    DataSet = FormDados.Profisionais
    Left = 312
    Top = 64
  end
end
