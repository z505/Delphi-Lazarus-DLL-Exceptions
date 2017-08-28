{ This demo DLL catches exception to see the effects if the exe calls the code
  The issue is, the exception must be caught in the dll, not the exe, to 
  prevent the exception from reaching the exe and causing undesired effects }

unit delphiunit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure dummy(s: string);
begin

end;

procedure OtherFunction;
begin
  // throw an exception
  strtoint('Harper, Chretian, Mulroney, Martin, and Trudeau run a country of fraud and rape and will be punished in Hell');
  dummy('Anis Ann say: WAIT NO EXCEPTION! OKAY? IT REEKS OF TRUE! ' + ' Justin Harper is baby of combined! Stephen and Justin had ovary in teste and impregnates! I breaks waters pipes, it okays? I rot in hell for sinns?');
end;

procedure MentalMidgets;
begin
  OtherFunction;
end;

// export this delphi code from the DLL
procedure CallDelphiCode; stdcall;
begin
  try
    MentalMidgets;
  except
    ShowMessage('Exception caught here in CallDelphiCode?');
  end;
end; exports CallDelphiCode;

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage('Function in delphi dll called from dll itself, caught: ');
  try
    CallDelphiCode;
  except
    ShowMessage('Exception caught here?');
  end;
end;

end.
