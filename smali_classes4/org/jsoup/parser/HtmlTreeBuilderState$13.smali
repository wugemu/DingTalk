.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$13;
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
    .line 1021
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    .prologue
    .line 1078
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    return v0
.end method

.method private exitTableBody(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    .prologue
    .line 1067
    const-string/jumbo v0, "tbody"

    invoke-virtual {p2, v0}, Llen;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "thead"

    invoke-virtual {p2, v0}, Llen;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tfoot"

    invoke-virtual {p2, v0}, Llen;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1070
    const/4 v0, 0x0

    .line 1074
    :goto_0
    return v0

    .line 1072
    :cond_0
    invoke-virtual {p2}, Llen;->g()V

    .line 1073
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v0

    invoke-virtual {v0}, Lleh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Llen;->m(Ljava/lang/String;)Z

    .line 1074
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1023
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->a:[I

    iget-object v6, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v6}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1061
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v3

    .line 1063
    :goto_0
    return v3

    :pswitch_0
    move-object v2, p1

    .line 1287
    check-cast v2, Lorg/jsoup/parser/Token$f;

    .line 1026
    .local v2, "startTag":Lorg/jsoup/parser/Token$f;
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v5, "tr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1028
    invoke-virtual {p2}, Llen;->g()V

    .line 1029
    invoke-virtual {p2, v2}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 1030
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2119
    iput-object v3, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .end local v2    # "startTag":Lorg/jsoup/parser/Token$f;
    :goto_1
    move v3, v4

    .line 1063
    goto :goto_0

    .line 1031
    .restart local v2    # "startTag":Lorg/jsoup/parser/Token$f;
    :cond_0
    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "th"

    aput-object v6, v5, v3

    const-string/jumbo v6, "td"

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1032
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1033
    const-string/jumbo v3, "tr"

    invoke-virtual {p2, v3}, Llen;->l(Ljava/lang/String;)Z

    .line 1034
    invoke-virtual {p2, v2}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v3

    goto :goto_0

    .line 1035
    :cond_1
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "caption"

    aput-object v6, v5, v3

    const-string/jumbo v3, "col"

    aput-object v3, v5, v4

    const-string/jumbo v3, "colgroup"

    aput-object v3, v5, v7

    const-string/jumbo v3, "tbody"

    aput-object v3, v5, v8

    const-string/jumbo v3, "tfoot"

    aput-object v3, v5, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "thead"

    aput-object v4, v5, v3

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1036
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->exitTableBody(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v3

    goto :goto_0

    .line 1038
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v3

    goto :goto_0

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$f;
    :pswitch_1
    move-object v0, p1

    .line 2295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 1042
    .local v0, "endTag":Lorg/jsoup/parser/Token$e;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .restart local v1    # "name":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "tbody"

    aput-object v6, v5, v3

    const-string/jumbo v6, "tfoot"

    aput-object v6, v5, v4

    const-string/jumbo v6, "thead"

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1044
    invoke-virtual {p2, v1}, Llen;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1045
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 1048
    :cond_3
    invoke-virtual {p2}, Llen;->g()V

    .line 1049
    invoke-virtual {p2}, Llen;->d()Lleh;

    .line 1050
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3119
    iput-object v3, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_1

    .line 1052
    :cond_4
    const-string/jumbo v5, "table"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1053
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->exitTableBody(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v3

    goto/16 :goto_0

    .line 1054
    :cond_5
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "body"

    aput-object v6, v5, v3

    const-string/jumbo v6, "caption"

    aput-object v6, v5, v4

    const-string/jumbo v4, "col"

    aput-object v4, v5, v7

    const-string/jumbo v4, "colgroup"

    aput-object v4, v5, v8

    const-string/jumbo v4, "html"

    aput-object v4, v5, v9

    const/4 v4, 0x5

    const-string/jumbo v6, "td"

    aput-object v6, v5, v4

    const/4 v4, 0x6

    const-string/jumbo v6, "th"

    aput-object v6, v5, v4

    const/4 v4, 0x7

    const-string/jumbo v6, "tr"

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1055
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 1058
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v3

    goto/16 :goto_0

    .line 1023
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
