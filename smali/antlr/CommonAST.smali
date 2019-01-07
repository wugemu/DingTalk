.class public Lantlr/CommonAST;
.super Lantlr/BaseAST;
.source "CommonAST.java"


# instance fields
.field text:Ljava/lang/String;

.field ttype:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lantlr/BaseAST;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lantlr/CommonAST;->ttype:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lns;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lantlr/BaseAST;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lantlr/CommonAST;->ttype:I

    .line 42
    invoke-virtual {p0, p1}, Lantlr/CommonAST;->initialize(Lns;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lantlr/CommonAST;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lantlr/CommonAST;->ttype:I

    return v0
.end method

.method public initialize(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lantlr/CommonAST;->setType(I)V

    .line 30
    invoke-virtual {p0, p2}, Lantlr/CommonAST;->setText(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public initialize(Lns;)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p1}, Lns;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CommonAST;->setText(Ljava/lang/String;)V

    .line 1068
    iget v0, p1, Lns;->d:I

    .line 47
    invoke-virtual {p0, v0}, Lantlr/CommonAST;->setType(I)V

    .line 48
    return-void
.end method

.method public initialize(Lny;)V
    .locals 1

    .prologue
    .line 34
    invoke-interface {p1}, Lny;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lantlr/CommonAST;->setText(Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lny;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lantlr/CommonAST;->setType(I)V

    .line 36
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lantlr/CommonAST;->text:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lantlr/CommonAST;->ttype:I

    .line 58
    return-void
.end method
