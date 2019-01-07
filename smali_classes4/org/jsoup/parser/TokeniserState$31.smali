.class final enum Lorg/jsoup/parser/TokeniserState$31;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 2
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 557
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 558
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 580
    invoke-virtual {p1, v0}, Lles;->a(C)V

    .line 581
    sget-object v1, Lorg/jsoup/parser/TokeniserState$31;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 583
    :goto_0
    return-void

    .line 560
    :sswitch_0
    invoke-virtual {p1, v0}, Lles;->a(C)V

    goto :goto_0

    .line 563
    :sswitch_1
    invoke-virtual {p1, v0}, Lles;->a(C)V

    .line 564
    sget-object v1, Lorg/jsoup/parser/TokeniserState$31;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 567
    :sswitch_2
    invoke-virtual {p1, v0}, Lles;->a(C)V

    .line 568
    sget-object v1, Lorg/jsoup/parser/TokeniserState$31;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 571
    :sswitch_3
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 572
    const v1, 0xfffd

    invoke-virtual {p1, v1}, Lles;->a(C)V

    .line 573
    sget-object v1, Lorg/jsoup/parser/TokeniserState$31;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 576
    :sswitch_4
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 577
    sget-object v1, Lorg/jsoup/parser/TokeniserState$31;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x2d -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
