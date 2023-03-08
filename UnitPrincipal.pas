unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, UnitMenu;

type
  TForm1 = class(TForm)
    Player: TShape;
    Ball: TShape;
    Timer1: TTimer;
    Player2: TShape;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure BallMovement();
    procedure Player2Movement();
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;
  BallMovementY: integer;
  BallMovementX: integer;



implementation

{$R *.dfm}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = 38 then
  begin
    if Player.Top >= 0 then
      Player.Top := Player.Top - 5;
  end;
  if Key = 40 then
  begin
    if Player.Top <= 340 then
      Player.Top := Player.Top + 5;
  end;
end;

procedure TForm1.Player2Movement;
begin
  Player2.Top := Ball.Top - 30;
  if(Player2.Top > 340) then
    Player2.Top := 340
  else if (Player2.Top < 0) then
    Player2.Top := 0;
end;


procedure TForm1.BallMovement;

begin
  Ball.Top := Ball.Top + BallMovementY;
  Ball.Left := Ball.Left + BallMovementX;

  if (Ball.Left > 400) or (Ball.Left < 0) then
  begin
    Ball.Top := 190;
    Ball.Left := 190;
    Player.Top := 160;
  end;
  if (Ball.Top = 390) or (Ball.Top = 0) then
  begin
    BallMovementY := BallMovementY * (-1);

  end;

  if (Ball.Left = 20) then
    if (Ball.Top >= Player.Top) and (Ball.Top <= Player.Top + 60) then
      begin
        BallMovementX := BallMovementX * (-1);
      end;
  if (Ball.Left > 360) then
    if (Ball.Top >= Player2.Top) and (Ball.Top <= Player2.Top + 60) then
        begin
          BallMovementX := BallMovementX * (-1);
        end
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  BallMovement;
  Player2Movement;
end;

begin
  BallMovementX := -10;
  BallMovementY := 10;
end.
