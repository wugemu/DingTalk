.class public abstract Lantlr/ParseTree;
.super Lantlr/BaseAST;
.source "ParseTree.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lantlr/BaseAST;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLeftmostDerivation(Ljava/lang/StringBuffer;I)I
.end method

.method public getLeftmostDerivation(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x7d0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "    "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/ParseTree;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 31
    const-string/jumbo v2, " =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {p0, v0}, Lantlr/ParseTree;->getLeftmostDerivationStep(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftmostDerivationStep(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 18
    if-gtz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lantlr/ParseTree;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 22
    invoke-virtual {p0, v0, p1}, Lantlr/ParseTree;->getLeftmostDerivation(Ljava/lang/StringBuffer;I)I

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public initialize(Lns;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public initialize(Lny;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
