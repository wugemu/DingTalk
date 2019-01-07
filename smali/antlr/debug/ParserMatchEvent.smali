.class public Lantlr/debug/ParserMatchEvent;
.super Lantlr/debug/GuessingEvent;
.source "ParserMatchEvent.java"


# static fields
.field public static BITSET:I

.field public static CHAR:I

.field public static CHAR_BITSET:I

.field public static CHAR_RANGE:I

.field public static STRING:I

.field public static TOKEN:I


# instance fields
.field private inverse:Z

.field private matched:Z

.field private target:Ljava/lang/Object;

.field private text:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput v0, Lantlr/debug/ParserMatchEvent;->TOKEN:I

    .line 7
    const/4 v0, 0x1

    sput v0, Lantlr/debug/ParserMatchEvent;->BITSET:I

    .line 8
    const/4 v0, 0x2

    sput v0, Lantlr/debug/ParserMatchEvent;->CHAR:I

    .line 9
    const/4 v0, 0x3

    sput v0, Lantlr/debug/ParserMatchEvent;->CHAR_BITSET:I

    .line 10
    const/4 v0, 0x4

    sput v0, Lantlr/debug/ParserMatchEvent;->STRING:I

    .line 11
    const/4 v0, 0x5

    sput v0, Lantlr/debug/ParserMatchEvent;->CHAR_RANGE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/String;IZZ)V
    .locals 8

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lantlr/debug/GuessingEvent;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 26
    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 27
    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lantlr/debug/ParserMatchEvent;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lantlr/debug/ParserMatchEvent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lantlr/debug/ParserMatchEvent;->value:I

    return v0
.end method

.method public isInverse()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lantlr/debug/ParserMatchEvent;->inverse:Z

    return v0
.end method

.method public isMatched()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lantlr/debug/ParserMatchEvent;->matched:Z

    return v0
.end method

.method setInverse(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lantlr/debug/ParserMatchEvent;->inverse:Z

    .line 45
    return-void
.end method

.method setMatched(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lantlr/debug/ParserMatchEvent;->matched:Z

    .line 48
    return-void
.end method

.method setTarget(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lantlr/debug/ParserMatchEvent;->target:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lantlr/debug/ParserMatchEvent;->text:Ljava/lang/String;

    .line 54
    return-void
.end method

.method setValue(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lantlr/debug/ParserMatchEvent;->value:I

    .line 57
    return-void
.end method

.method setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0, p1, p5}, Lantlr/debug/GuessingEvent;->setValues(II)V

    .line 61
    invoke-virtual {p0, p2}, Lantlr/debug/ParserMatchEvent;->setValue(I)V

    .line 62
    invoke-virtual {p0, p3}, Lantlr/debug/ParserMatchEvent;->setTarget(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, p6}, Lantlr/debug/ParserMatchEvent;->setInverse(Z)V

    .line 64
    invoke-virtual {p0, p7}, Lantlr/debug/ParserMatchEvent;->setMatched(Z)V

    .line 65
    invoke-virtual {p0, p4}, Lantlr/debug/ParserMatchEvent;->setText(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "ParserMatchEvent ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ok,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->isInverse()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NOT "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->getType()I

    move-result v0

    sget v2, Lantlr/debug/ParserMatchEvent;->TOKEN:I

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "token,"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/debug/ParserMatchEvent;->getGuessing()I

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
    const-string/jumbo v0, "bad,"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "bitset,"

    goto :goto_2
.end method
