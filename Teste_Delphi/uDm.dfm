object DM: TDM
  OldCreateOrder = False
  Height = 399
  Width = 645
  object UniProv: TInterBaseUniProvider
    Left = 229
    Top = 185
  end
  object DB: TUniConnection
    ProviderName = 'InterBase'
    Database = 'R:\Trabalho\Info\Info\Teste_Delphi\TESTE.FDB'
    SpecificOptions.Strings = (
      
        'InterBase.ClientLibrary=R:\Trabalho\Info\Info\Teste_Delphi\fbcli' +
        'ent.dll')
    Username = 'sysdba'
    Server = 'localhost'
    LoginPrompt = False
    Left = 282
    Top = 185
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object Trans: TUniTransaction
    DefaultConnection = DB
    Left = 388
    Top = 185
  end
  object QryAux: TUniQuery
    Connection = DB
    Left = 335
    Top = 185
  end
end
