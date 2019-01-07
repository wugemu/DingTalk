.class public Lantlr/debug/NewLineEvent;
.super Lantlr/debug/Event;
.source "NewLineEvent.java"


# instance fields
.field private line:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Lantlr/debug/NewLineEvent;->setValues(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public getLine()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lantlr/debug/NewLineEvent;->line:I

    return v0
.end method

.method setLine(I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lantlr/debug/NewLineEvent;->line:I

    .line 19
    return-void
.end method

.method setValues(I)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lantlr/debug/NewLineEvent;->setLine(I)V

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "NewLineEvent ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lantlr/debug/NewLineEvent;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
