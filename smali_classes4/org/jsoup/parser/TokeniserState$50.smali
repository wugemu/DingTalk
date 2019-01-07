.class final enum Lorg/jsoup/parser/TokeniserState$50;
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
    .line 1102
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
    .line 1104
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 1105
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1125
    iget-object v1, p1, Lles;->m:Lorg/jsoup/parser/Token$b;

    iget-object v1, v1, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1126
    sget-object v1, Lorg/jsoup/parser/TokeniserState$50;->Comment:Lorg/jsoup/parser/TokeniserState;

    .line 6113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 1128
    :goto_0
    return-void

    .line 1107
    :sswitch_0
    iget-object v1, p1, Lles;->m:Lorg/jsoup/parser/Token$b;

    iget-object v1, v1, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    sget-object v1, Lorg/jsoup/parser/TokeniserState$50;->CommentEndDash:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1111
    :sswitch_1
    invoke-virtual {p1}, Lles;->b()V

    .line 1112
    sget-object v1, Lorg/jsoup/parser/TokeniserState$50;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1115
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1116
    iget-object v1, p1, Lles;->m:Lorg/jsoup/parser/Token$b;

    iget-object v1, v1, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--!\ufffd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    sget-object v1, Lorg/jsoup/parser/TokeniserState$50;->Comment:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1120
    :sswitch_3
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 1121
    invoke-virtual {p1}, Lles;->b()V

    .line 1122
    sget-object v1, Lorg/jsoup/parser/TokeniserState$50;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1105
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2d -> :sswitch_0
        0x3e -> :sswitch_1
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
