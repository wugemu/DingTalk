.class public Lantlr/debug/ParserTokenEvent;
.super Lantlr/debug/Event;
.source "ParserTokenEvent.java"


# static fields
.field public static CONSUME:I

.field public static LA:I


# instance fields
.field private amount:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput v0, Lantlr/debug/ParserTokenEvent;->LA:I

    .line 7
    const/4 v0, 0x1

    sput v0, Lantlr/debug/ParserTokenEvent;->CONSUME:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p2, p3, p4}, Lantlr/debug/ParserTokenEvent;->setValues(III)V

    .line 17
    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lantlr/debug/ParserTokenEvent;->amount:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lantlr/debug/ParserTokenEvent;->value:I

    return v0
.end method

.method setAmount(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lantlr/debug/ParserTokenEvent;->amount:I

    .line 26
    return-void
.end method

.method setValue(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lantlr/debug/ParserTokenEvent;->value:I

    .line 29
    return-void
.end method

.method setValues(III)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lantlr/debug/Event;->setValues(I)V

    .line 33
    invoke-virtual {p0, p2}, Lantlr/debug/ParserTokenEvent;->setAmount(I)V

    .line 34
    invoke-virtual {p0, p3}, Lantlr/debug/ParserTokenEvent;->setValue(I)V

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    invoke-virtual {p0}, Lantlr/debug/ParserTokenEvent;->getType()I

    move-result v0

    sget v1, Lantlr/debug/ParserTokenEvent;->LA:I

    if-ne v0, v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "ParserTokenEvent [LA,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/debug/ParserTokenEvent;->getAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/debug/ParserTokenEvent;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "ParserTokenEvent [consume,1,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/debug/ParserTokenEvent;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
