.class public Lantlr/ParseTreeRule;
.super Lantlr/ParseTree;
.source "ParseTreeRule.java"


# static fields
.field public static final INVALID_ALT:I = -0x1


# instance fields
.field protected altNumber:I

.field protected ruleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lantlr/ParseTreeRule;-><init>(Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lantlr/ParseTree;-><init>()V

    .line 22
    iput-object p1, p0, Lantlr/ParseTreeRule;->ruleName:Ljava/lang/String;

    .line 23
    iput p2, p0, Lantlr/ParseTreeRule;->altNumber:I

    .line 24
    return-void
.end method


# virtual methods
.method protected getLeftmostDerivation(Ljava/lang/StringBuffer;I)I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v4, 0x20

    .line 36
    if-gtz p2, :cond_1

    .line 37
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {p0}, Lantlr/ParseTreeRule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const/4 v2, 0x0

    .line 58
    :cond_0
    return v2

    .line 41
    :cond_1
    invoke-virtual {p0}, Lantlr/ParseTreeRule;->getFirstChild()Lny;

    move-result-object v1

    .line 42
    const/4 v2, 0x1

    .line 44
    :goto_0
    if-eqz v1, :cond_0

    .line 45
    if-ge v2, p2, :cond_2

    instance-of v0, v1, Lantlr/ParseTreeToken;

    if-eqz v0, :cond_3

    .line 46
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    .line 56
    :goto_1
    invoke-interface {v1}, Lny;->getNextSibling()Lny;

    move-result-object v1

    move v2, v0

    goto :goto_0

    .line 51
    :cond_3
    sub-int v3, p2, v2

    move-object v0, v1

    .line 52
    check-cast v0, Lantlr/ParseTree;

    invoke-virtual {v0, p1, v3}, Lantlr/ParseTree;->getLeftmostDerivation(Ljava/lang/StringBuffer;I)I

    move-result v0

    .line 54
    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public getRuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lantlr/ParseTreeRule;->ruleName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 62
    iget v0, p0, Lantlr/ParseTreeRule;->altNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/ParseTreeRule;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/ParseTreeRule;->ruleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lantlr/ParseTreeRule;->altNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
