.class final enum Lorg/jsoup/parser/TokeniserState$22;
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
    .line 376
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
    .line 378
    invoke-virtual {p2}, Llem;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 380
    sget-object v1, Lorg/jsoup/parser/TokeniserState$22;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 401
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p2}, Llem;->b()C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 398
    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Llem;->a([C)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lles;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    .end local v0    # "data":Ljava/lang/String;
    :sswitch_0
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Lles;->a(C)V

    .line 387
    sget-object v1, Lorg/jsoup/parser/TokeniserState$22;->ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 390
    :sswitch_1
    sget-object v1, Lorg/jsoup/parser/TokeniserState$22;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 393
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 394
    invoke-virtual {p2}, Llem;->e()V

    .line 395
    const v1, 0xfffd

    invoke-virtual {p1, v1}, Lles;->a(C)V

    goto :goto_0

    .line 384
    .line 398
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2d -> :sswitch_0
        0x3c -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
