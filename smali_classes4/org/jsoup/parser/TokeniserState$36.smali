.class final enum Lorg/jsoup/parser/TokeniserState$36;
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
    .line 687
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
    .line 689
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 690
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 726
    iget-object v1, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$g;->i()V

    .line 727
    invoke-virtual {p2}, Llem;->d()V

    .line 728
    sget-object v1, Lorg/jsoup/parser/TokeniserState$36;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 7113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 730
    :goto_0
    :sswitch_0
    return-void

    .line 699
    :sswitch_1
    sget-object v1, Lorg/jsoup/parser/TokeniserState$36;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 702
    :sswitch_2
    sget-object v1, Lorg/jsoup/parser/TokeniserState$36;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 705
    :sswitch_3
    invoke-virtual {p1}, Lles;->a()V

    .line 706
    sget-object v1, Lorg/jsoup/parser/TokeniserState$36;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 709
    :sswitch_4
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 710
    iget-object v1, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    const v2, 0xfffd

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Token$g;->b(C)V

    .line 711
    sget-object v1, Lorg/jsoup/parser/TokeniserState$36;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 714
    :sswitch_5
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 715
    sget-object v1, Lorg/jsoup/parser/TokeniserState$36;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 720
    :sswitch_6
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 721
    iget-object v1, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$g;->i()V

    .line 722
    iget-object v1, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$g;->b(C)V

    .line 723
    sget-object v1, Lorg/jsoup/parser/TokeniserState$36;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 6113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 690
    nop

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
