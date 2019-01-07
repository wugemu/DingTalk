.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$4;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Llet;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llet;

    .prologue
    .line 160
    const-string/jumbo v0, "head"

    invoke-virtual {p2, v0}, Llet;->m(Ljava/lang/String;)Z

    .line 161
    invoke-virtual {p2, p1}, Llet;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 10
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1311
    check-cast p1, Lorg/jsoup/parser/Token$a;

    .line 95
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    .line 156
    :cond_0
    :goto_0
    return v4

    .line 98
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->a:[I

    iget-object v7, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v7}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 154
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->anythingElse(Lorg/jsoup/parser/Token;Llet;)Z

    move-result v4

    goto :goto_0

    .line 2303
    :pswitch_0
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 100
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    goto :goto_0

    .line 103
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :pswitch_1
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v4, v5

    .line 104
    goto :goto_0

    :pswitch_2
    move-object v3, p1

    .line 3287
    check-cast v3, Lorg/jsoup/parser/Token$f;

    .line 107
    .local v3, "start":Lorg/jsoup/parser/Token$f;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, "html"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v4, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v4

    goto :goto_0

    .line 110
    :cond_2
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "base"

    aput-object v7, v6, v5

    const-string/jumbo v7, "basefont"

    aput-object v7, v6, v4

    const-string/jumbo v7, "bgsound"

    aput-object v7, v6, v9

    const-string/jumbo v7, "command"

    aput-object v7, v6, v8

    const/4 v7, 0x4

    const-string/jumbo v8, "link"

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    invoke-virtual {p2, v3}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    move-result-object v0

    .line 113
    .local v0, "el":Lleh;
    const-string/jumbo v5, "base"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "href"

    invoke-virtual {v0, v5}, Lleh;->o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {p2, v0}, Llen;->a(Lleh;)V

    goto :goto_0

    .line 115
    .end local v0    # "el":Lleh;
    :cond_3
    const-string/jumbo v6, "meta"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 116
    invoke-virtual {p2, v3}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 118
    :cond_4
    const-string/jumbo v6, "title"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 119
    invoke-static {v3, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$200(Lorg/jsoup/parser/Token$f;Llen;)V

    goto/16 :goto_0

    .line 120
    :cond_5
    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "noframes"

    aput-object v7, v6, v5

    const-string/jumbo v7, "style"

    aput-object v7, v6, v4

    invoke-static {v2, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 121
    invoke-static {v3, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$f;Llen;)V

    goto/16 :goto_0

    .line 122
    :cond_6
    const-string/jumbo v6, "noscript"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 124
    invoke-virtual {p2, v3}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 125
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 4119
    iput-object v5, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 126
    :cond_7
    const-string/jumbo v6, "script"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 129
    iget-object v5, p2, Llen;->m:Lles;

    sget-object v6, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 5113
    iput-object v6, v5, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 130
    invoke-virtual {p2}, Llen;->a()V

    .line 131
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 5119
    iput-object v5, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 132
    invoke-virtual {p2, v3}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 133
    :cond_8
    const-string/jumbo v4, "head"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 134
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v4, v5

    .line 135
    goto/16 :goto_0

    .line 137
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->anythingElse(Lorg/jsoup/parser/Token;Llet;)Z

    move-result v4

    goto/16 :goto_0

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "start":Lorg/jsoup/parser/Token$f;
    :pswitch_3
    move-object v1, p1

    .line 5295
    check-cast v1, Lorg/jsoup/parser/Token$e;

    .line 142
    .local v1, "end":Lorg/jsoup/parser/Token$e;
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2    # "name":Ljava/lang/String;
    const-string/jumbo v6, "head"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 144
    invoke-virtual {p2}, Llen;->d()Lleh;

    .line 145
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 6119
    iput-object v5, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 146
    :cond_a
    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "body"

    aput-object v7, v6, v5

    const-string/jumbo v7, "html"

    aput-object v7, v6, v4

    const-string/jumbo v4, "br"

    aput-object v4, v6, v9

    invoke-static {v2, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->anythingElse(Lorg/jsoup/parser/Token;Llet;)Z

    move-result v4

    goto/16 :goto_0

    .line 149
    :cond_b
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v4, v5

    .line 150
    goto/16 :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
