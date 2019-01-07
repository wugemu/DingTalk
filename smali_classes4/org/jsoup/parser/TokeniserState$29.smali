.class final enum Lorg/jsoup/parser/TokeniserState$29;
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
    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 3
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 503
    invoke-virtual {p2}, Llem;->b()C

    move-result v0

    .line 504
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 523
    const/4 v2, 0x3

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-virtual {p2, v2}, Llem;->a([C)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lles;->a(Ljava/lang/String;)V

    .line 526
    .end local v1    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 506
    :sswitch_0
    invoke-virtual {p1, v0}, Lles;->a(C)V

    .line 507
    sget-object v2, Lorg/jsoup/parser/TokeniserState$29;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v2}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 510
    :sswitch_1
    invoke-virtual {p1, v0}, Lles;->a(C)V

    .line 511
    sget-object v2, Lorg/jsoup/parser/TokeniserState$29;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v2}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 514
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 515
    invoke-virtual {p2}, Llem;->e()V

    .line 516
    const v2, 0xfffd

    invoke-virtual {p1, v2}, Lles;->a(C)V

    goto :goto_0

    .line 519
    :sswitch_3
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 520
    sget-object v2, Lorg/jsoup/parser/TokeniserState$29;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v2, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 504
    .line 523
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2d -> :sswitch_0
        0x3c -> :sswitch_1
        0xffff -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
