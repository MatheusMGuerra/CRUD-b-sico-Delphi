﻿object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 424
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabeçalhoCadastro: TPanel
    Left = 0
    Top = 0
    Width = 658
    Height = 49
    Align = alTop
    Caption = 'Cadastro de Alunos'
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object btnConect: TButton
      Left = 561
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Conectar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConectClick
    end
  end
  object pnBotoesControle: TPanel
    Left = 0
    Top = 265
    Width = 658
    Height = 40
    Align = alTop
    Color = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowFrame
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 658
    Height = 216
    Align = alTop
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 305
    Width = 658
    Height = 120
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 3
    object lbAddAluno: TLabel
      Left = 16
      Top = 8
      Width = 117
      Height = 19
      Caption = 'Dados do aluno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbNomeAdd: TLabel
      Left = 16
      Top = 33
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lbMatriculaAdd: TLabel
      Left = 245
      Top = 32
      Width = 47
      Height = 13
      Caption = 'Matr'#237'cula:'
    end
    object lbDatNascAdd: TLabel
      Left = 16
      Top = 64
      Width = 73
      Height = 13
      Caption = 'Dt Nascimento:'
    end
    object lbCursoAdd: TLabel
      Left = 440
      Top = 32
      Width = 32
      Height = 13
      Caption = 'Curso:'
    end
    object lbDtIngAdd: TLabel
      Left = 231
      Top = 60
      Width = 60
      Height = 13
      Caption = 'Dt Ingresso:'
    end
    object lbPeriodoAdd: TLabel
      Left = 432
      Top = 59
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object lbTurnoAdd: TLabel
      Left = 16
      Top = 91
      Width = 32
      Height = 13
      Caption = 'Turno:'
    end
    object edtNome: TEdit
      Left = 53
      Top = 33
      Width = 172
      Height = 21
      TabOrder = 0
    end
    object edtMatricula: TEdit
      Left = 298
      Top = 32
      Width = 111
      Height = 21
      TabOrder = 1
    end
    object edtCurso: TEdit
      Left = 478
      Top = 32
      Width = 158
      Height = 21
      TabOrder = 2
    end
    object edtPeriodo: TEdit
      Left = 478
      Top = 59
      Width = 77
      Height = 21
      TabOrder = 3
    end
    object edtTurno: TEdit
      Left = 54
      Top = 87
      Width = 139
      Height = 21
      TabOrder = 4
    end
    object btnAddAluno: TBitBtn
      Left = 406
      Top = 89
      Width = 75
      Height = 25
      Caption = 'Adiconar'
      TabOrder = 5
      OnClick = btnAddAlunoClick
    end
    object edtNasc: TEdit
      Left = 95
      Top = 60
      Width = 130
      Height = 21
      TabOrder = 6
      TextHint = ' aaaa/mm/dd'
    end
    object edtIng: TEdit
      Left = 297
      Top = 59
      Width = 112
      Height = 21
      TabOrder = 7
      TextHint = ' aaaa/mm/dd'
    end
    object btnEditarCadastro: TButton
      Left = 487
      Top = 86
      Width = 75
      Height = 28
      Caption = 'Editar'
      TabOrder = 8
      OnClick = btnEditarCadastroClick
    end
    object btnExcluirCadastro: TButton
      Left = 568
      Top = 89
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 9
      OnClick = btnExcluirCadastroClick
    end
    object btnLimpar: TButton
      Left = 325
      Top = 89
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 10
      OnClick = btnLimparClick
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'Database=Db_Teste'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 400
    Top = 200
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 456
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnDataChange = DataSource1DataChange
    Left = 512
    Top = 184
  end
end
