.class final enum Lorg/jsoup/parser/TokeniserState$34;
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
    .line 601
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
    .line 604
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 605
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 639
    :goto_0
    iget-object v1, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$g;->i()V

    .line 640
    invoke-virtual {p2}, Llem;->d()V

    .line 641
    sget-object v1, Lorg/jsoup/parser/TokeniserState$34;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 6113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 643
    :goto_1
    :sswitch_0
    return-void

    .line 613
    :sswitch_1
    sget-object v1, Lorg/jsoup/parser/TokeniserState$34;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_1

    .line 616
    :sswitch_2
    invoke-virtual {p1}, Lles;->a()V

    .line 617
    sget-object v1, Lorg/jsoup/parser/TokeniserState$34;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_1

    .line 620
    :sswitch_3
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 626
    :sswitch_4
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 627
    sget-object v1, Lorg/jsoup/parser/TokeniserState$34;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_1

    .line 633
    :sswitch_5
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 634
    iget-object v1, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$g;->i()V

    .line 635
    iget-object v1, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$g;->b(C)V

    .line 636
    sget-object v1, Lorg/jsoup/parser/TokeniserState$34;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_1

    .line 605
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x2f -> :sswitch_1
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_2
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
