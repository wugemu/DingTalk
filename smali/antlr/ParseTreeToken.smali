.class public Lantlr/ParseTreeToken;
.super Lantlr/ParseTree;
.source "ParseTreeToken.java"


# instance fields
.field protected token:Lns;


# direct methods
.method public constructor <init>(Lns;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lantlr/ParseTree;-><init>()V

    .line 15
    iput-object p1, p0, Lantlr/ParseTreeToken;->token:Lns;

    .line 16
    return-void
.end method


# virtual methods
.method protected getLeftmostDerivation(Ljava/lang/StringBuffer;I)I
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {p0}, Lantlr/ParseTreeToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lantlr/ParseTreeToken;->token:Lns;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lantlr/ParseTreeToken;->token:Lns;

    invoke-virtual {v0}, Lns;->b()Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "<missing token>"

    goto :goto_0
.end method
