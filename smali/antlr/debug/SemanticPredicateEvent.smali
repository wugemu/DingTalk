.class public Lantlr/debug/SemanticPredicateEvent;
.super Lantlr/debug/GuessingEvent;
.source "SemanticPredicateEvent.java"


# static fields
.field public static final PREDICTING:I = 0x1

.field public static final VALIDATING:I


# instance fields
.field private condition:I

.field private result:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public getCondition()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lantlr/debug/SemanticPredicateEvent;->condition:I

    return v0
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lantlr/debug/SemanticPredicateEvent;->result:Z

    return v0
.end method

.method setCondition(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lantlr/debug/SemanticPredicateEvent;->condition:I

    .line 24
    return-void
.end method

.method setResult(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lantlr/debug/SemanticPredicateEvent;->result:Z

    .line 27
    return-void
.end method

.method setValues(IIZI)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p4}, Lantlr/debug/GuessingEvent;->setValues(II)V

    .line 31
    invoke-virtual {p0, p2}, Lantlr/debug/SemanticPredicateEvent;->setCondition(I)V

    .line 32
    invoke-virtual {p0, p3}, Lantlr/debug/SemanticPredicateEvent;->setResult(Z)V

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "SemanticPredicateEvent ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/debug/SemanticPredicateEvent;->getCondition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/debug/SemanticPredicateEvent;->getResult()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/debug/SemanticPredicateEvent;->getGuessing()I

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
