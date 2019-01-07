.class public Lantlr/debug/SyntacticPredicateEvent;
.super Lantlr/debug/GuessingEvent;
.source "SyntacticPredicateEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;I)V

    .line 11
    return-void
.end method


# virtual methods
.method setValues(II)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lantlr/debug/GuessingEvent;->setValues(II)V

    .line 15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "SyntacticPredicateEvent ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/debug/SyntacticPredicateEvent;->getGuessing()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
