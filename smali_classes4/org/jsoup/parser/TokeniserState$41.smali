.class final enum Lorg/jsoup/parser/TokeniserState$41;
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
    .line 888
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
    .line 890
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 891
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 911
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 912
    invoke-virtual {p2}, Llem;->d()V

    .line 913
    sget-object v1, Lorg/jsoup/parser/TokeniserState$41;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 916
    :goto_0
    return-void

    .line 897
    :sswitch_0
    sget-object v1, Lorg/jsoup/parser/TokeniserState$41;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 900
    :sswitch_1
    sget-object v1, Lorg/jsoup/parser/TokeniserState$41;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 903
    :sswitch_2
    invoke-virtual {p1}, Lles;->a()V

    .line 904
    sget-object v1, Lorg/jsoup/parser/TokeniserState$41;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 907
    :sswitch_3
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 908
    sget-object v1, Lorg/jsoup/parser/TokeniserState$41;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 891
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3e -> :sswitch_2
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
