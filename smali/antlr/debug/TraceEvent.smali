.class public Lantlr/debug/TraceEvent;
.super Lantlr/debug/GuessingEvent;
.source "TraceEvent.java"


# static fields
.field public static DONE_PARSING:I

.field public static ENTER:I

.field public static EXIT:I


# instance fields
.field private data:I

.field private ruleNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput v0, Lantlr/debug/TraceEvent;->ENTER:I

    .line 7
    const/4 v0, 0x1

    sput v0, Lantlr/debug/TraceEvent;->EXIT:I

    .line 8
    const/4 v0, 0x2

    sput v0, Lantlr/debug/TraceEvent;->DONE_PARSING:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIII)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p2, p3, p4, p5}, Lantlr/debug/TraceEvent;->setValues(IIII)V

    .line 17
    return-void
.end method


# virtual methods
.method public getData()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lantlr/debug/TraceEvent;->data:I

    return v0
.end method

.method public getRuleNum()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lantlr/debug/TraceEvent;->ruleNum:I

    return v0
.end method

.method setData(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lantlr/debug/TraceEvent;->data:I

    .line 26
    return-void
.end method

.method setRuleNum(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lantlr/debug/TraceEvent;->ruleNum:I

    .line 29
    return-void
.end method

.method setValues(IIII)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1, p3}, Lantlr/debug/GuessingEvent;->setValues(II)V

    .line 33
    invoke-virtual {p0, p2}, Lantlr/debug/TraceEvent;->setRuleNum(I)V

    .line 34
    invoke-virtual {p0, p4}, Lantlr/debug/TraceEvent;->setData(I)V

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "ParserTraceEvent ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/debug/TraceEvent;->getType()I

    move-result v0

    sget v2, Lantlr/debug/TraceEvent;->ENTER:I

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "enter,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/debug/TraceEvent;->getRuleNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/debug/TraceEvent;->getGuessing()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "exit,"

    goto :goto_0
.end method
