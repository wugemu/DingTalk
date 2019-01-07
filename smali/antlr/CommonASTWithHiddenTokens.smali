.class public Lantlr/CommonASTWithHiddenTokens;
.super Lantlr/CommonAST;
.source "CommonASTWithHiddenTokens.java"


# instance fields
.field protected hiddenAfter:Lantlr/CommonHiddenStreamToken;

.field protected hiddenBefore:Lantlr/CommonHiddenStreamToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lantlr/CommonAST;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lns;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lantlr/CommonAST;-><init>(Lns;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getHiddenAfter()Lantlr/CommonHiddenStreamToken;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lantlr/CommonASTWithHiddenTokens;->hiddenAfter:Lantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method public getHiddenBefore()Lantlr/CommonHiddenStreamToken;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lantlr/CommonASTWithHiddenTokens;->hiddenBefore:Lantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method public initialize(Lns;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    check-cast p1, Lantlr/CommonHiddenStreamToken;

    .line 34
    invoke-super {p0, p1}, Lantlr/CommonAST;->initialize(Lns;)V

    .line 35
    iput-object v0, p0, Lantlr/CommonASTWithHiddenTokens;->hiddenBefore:Lantlr/CommonHiddenStreamToken;

    .line 36
    iput-object v0, p0, Lantlr/CommonASTWithHiddenTokens;->hiddenAfter:Lantlr/CommonHiddenStreamToken;

    .line 37
    return-void
.end method
