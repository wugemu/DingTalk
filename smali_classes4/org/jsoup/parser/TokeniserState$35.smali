.class final enum Lorg/jsoup/parser/TokeniserState$35;
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
    .line 645
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 4
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 648
    invoke-static {}, Lorg/jsoup/parser/TokeniserState;->access$400()[C

    move-result-object v2

    invoke-virtual {p2, v2}, Llem;->b([C)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Token$g;->c(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 652
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 685
    :goto_0
    return-void

    .line 658
    :sswitch_0
    sget-object v2, Lorg/jsoup/parser/TokeniserState$35;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v2, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 661
    :sswitch_1
    sget-object v2, Lorg/jsoup/parser/TokeniserState$35;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v2, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 664
    :sswitch_2
    sget-object v2, Lorg/jsoup/parser/TokeniserState$35;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v2, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 667
    :sswitch_3
    invoke-virtual {p1}, Lles;->a()V

    .line 668
    sget-object v2, Lorg/jsoup/parser/TokeniserState$35;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v2, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 671
    :sswitch_4
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 672
    iget-object v2, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    const v3, 0xfffd

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Token$g;->b(C)V

    goto :goto_0

    .line 675
    :sswitch_5
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 676
    sget-object v2, Lorg/jsoup/parser/TokeniserState$35;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v2, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 681
    :sswitch_6
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 682
    iget-object v2, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/Token$g;->b(C)V

    goto :goto_0

    .line 652
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2f -> :sswitch_1
        0x3c -> :sswitch_6
        0x3d -> :sswitch_2
        0x3e -> :sswitch_3
        0xffff -> :sswitch_5
    .end sparse-switch
.end method
