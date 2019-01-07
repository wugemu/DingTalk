.class public Lantlr/debug/MessageEvent;
.super Lantlr/debug/Event;
.source "MessageEvent.java"


# static fields
.field public static ERROR:I

.field public static WARNING:I


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput v0, Lantlr/debug/MessageEvent;->WARNING:I

    .line 6
    const/4 v0, 0x1

    sput v0, Lantlr/debug/MessageEvent;->ERROR:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lantlr/debug/Event;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, p2, p3}, Lantlr/debug/MessageEvent;->setValues(ILjava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lantlr/debug/MessageEvent;->text:Ljava/lang/String;

    return-object v0
.end method

.method setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lantlr/debug/MessageEvent;->text:Ljava/lang/String;

    .line 21
    return-void
.end method

.method setValues(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lantlr/debug/Event;->setValues(I)V

    .line 25
    invoke-virtual {p0, p2}, Lantlr/debug/MessageEvent;->setText(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 28
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "ParserMessageEvent ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lantlr/debug/MessageEvent;->getType()I

    move-result v0

    sget v2, Lantlr/debug/MessageEvent;->WARNING:I

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "warning,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lantlr/debug/MessageEvent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "error,"

    goto :goto_0
.end method
