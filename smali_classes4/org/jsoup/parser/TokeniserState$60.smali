.class final enum Lorg/jsoup/parser/TokeniserState$60;
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
    .line 1424
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
    const/4 v2, 0x1

    .line 1426
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 1427
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1455
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1456
    iget-object v1, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iput-boolean v2, v1, Lorg/jsoup/parser/Token$c;->e:Z

    .line 1457
    sget-object v1, Lorg/jsoup/parser/TokeniserState$60;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    .line 6113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 1459
    :goto_0
    :sswitch_0
    return-void

    .line 1435
    :sswitch_1
    invoke-virtual {p1}, Lles;->d()V

    .line 1436
    sget-object v1, Lorg/jsoup/parser/TokeniserState$60;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1439
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1441
    sget-object v1, Lorg/jsoup/parser/TokeniserState$60;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1444
    :sswitch_3
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1446
    sget-object v1, Lorg/jsoup/parser/TokeniserState$60;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1449
    :sswitch_4
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 1450
    iget-object v1, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iput-boolean v2, v1, Lorg/jsoup/parser/Token$c;->e:Z

    .line 1451
    invoke-virtual {p1}, Lles;->d()V

    .line 1452
    sget-object v1, Lorg/jsoup/parser/TokeniserState$60;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3e -> :sswitch_1
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
