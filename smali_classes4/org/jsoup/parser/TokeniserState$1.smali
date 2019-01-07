.class final enum Lorg/jsoup/parser/TokeniserState$1;
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
    .line 9
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
    .line 12
    invoke-virtual {p2}, Llem;->b()C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1156
    iget v1, p2, Llem;->c:I

    .line 1157
    iget v2, p2, Llem;->b:I

    .line 1158
    iget-object v3, p2, Llem;->a:[C

    .line 1160
    :goto_0
    iget v4, p2, Llem;->c:I

    if-ge v4, v2, :cond_0

    .line 1161
    iget v4, p2, Llem;->c:I

    aget-char v4, v3, v4

    .line 1162
    const/16 v5, 0x26

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    if-eqz v4, :cond_0

    .line 1164
    iget v4, p2, Llem;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Llem;->c:I

    goto :goto_0

    .line 14
    :sswitch_0
    sget-object v1, Lorg/jsoup/parser/TokeniserState$1;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 31
    :goto_1
    return-void

    .line 17
    :sswitch_1
    sget-object v1, Lorg/jsoup/parser/TokeniserState$1;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 20
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 21
    invoke-virtual {p2}, Llem;->c()C

    move-result v1

    invoke-virtual {p1, v1}, Lles;->a(C)V

    goto :goto_1

    .line 24
    :sswitch_3
    new-instance v1, Lorg/jsoup/parser/Token$d;

    invoke-direct {v1}, Lorg/jsoup/parser/Token$d;-><init>()V

    invoke-virtual {p1, v1}, Lles;->a(Lorg/jsoup/parser/Token;)V

    goto :goto_1

    .line 1167
    :cond_0
    iget v2, p2, Llem;->c:I

    if-le v2, v1, :cond_1

    iget v2, p2, Llem;->c:I

    sub-int/2addr v2, v1

    invoke-virtual {p2, v1, v2}, Llem;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "data":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1, v0}, Lles;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1167
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_2

    .line 12
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
