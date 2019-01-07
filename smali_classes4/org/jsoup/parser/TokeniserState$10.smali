.class final enum Lorg/jsoup/parser/TokeniserState$10;
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
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 6
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 188
    .line 1172
    iget v1, p2, Llem;->c:I

    .line 1173
    iget v2, p2, Llem;->b:I

    .line 1174
    iget-object v3, p2, Llem;->a:[C

    .line 1176
    :goto_0
    iget v4, p2, Llem;->c:I

    if-ge v4, v2, :cond_0

    .line 1177
    iget v4, p2, Llem;->c:I

    aget-char v4, v3, v4

    .line 1178
    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_0

    if-eqz v4, :cond_0

    .line 1180
    iget v4, p2, Llem;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Llem;->c:I

    goto :goto_0

    .line 1183
    :cond_0
    iget v2, p2, Llem;->c:I

    if-le v2, v1, :cond_1

    iget v2, p2, Llem;->c:I

    sub-int/2addr v2, v1

    invoke-virtual {p2, v1, v2}, Llem;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 188
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "tagName":Ljava/lang/String;
    iget-object v1, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$g;->b(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Llem;->c()C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 214
    :goto_2
    return-void

    .line 1183
    .end local v0    # "tagName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1

    .line 197
    .restart local v0    # "tagName":Ljava/lang/String;
    :sswitch_0
    sget-object v1, Lorg/jsoup/parser/TokeniserState$10;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_2

    .line 200
    :sswitch_1
    sget-object v1, Lorg/jsoup/parser/TokeniserState$10;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_2

    .line 203
    :sswitch_2
    invoke-virtual {p1}, Lles;->a()V

    .line 204
    sget-object v1, Lorg/jsoup/parser/TokeniserState$10;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_2

    .line 207
    :sswitch_3
    iget-object v1, p1, Lles;->h:Lorg/jsoup/parser/Token$g;

    invoke-static {}, Lorg/jsoup/parser/TokeniserState;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Token$g;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :sswitch_4
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 211
    sget-object v1, Lorg/jsoup/parser/TokeniserState$10;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_2

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3e -> :sswitch_2
        0xffff -> :sswitch_4
    .end sparse-switch
.end method
