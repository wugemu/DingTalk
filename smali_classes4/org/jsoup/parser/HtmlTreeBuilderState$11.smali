.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$11;
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
    .line 931
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 12
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 933
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p1

    .line 1295
    check-cast v3, Lorg/jsoup/parser/Token$e;

    .line 933
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "caption"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 2295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 935
    .local v0, "endTag":Lorg/jsoup/parser/Token$e;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2, v1}, Llen;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 937
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v3, v4

    .line 963
    .end local v0    # "endTag":Lorg/jsoup/parser/Token$e;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return v3

    .line 940
    .restart local v0    # "endTag":Lorg/jsoup/parser/Token$e;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Llen;->k()V

    .line 941
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v3

    invoke-virtual {v3}, Lleh;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "caption"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 942
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 943
    :cond_1
    const-string/jumbo v3, "caption"

    invoke-virtual {p2, v3}, Llen;->c(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Llen;->m()V

    .line 945
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$11;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3119
    iput-object v3, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .end local v0    # "endTag":Lorg/jsoup/parser/Token$e;
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    move v3, v5

    .line 963
    goto :goto_0

    .line 947
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, p1

    .line 3287
    check-cast v3, Lorg/jsoup/parser/Token$f;

    .line 947
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "caption"

    aput-object v7, v6, v4

    const-string/jumbo v7, "col"

    aput-object v7, v6, v5

    const-string/jumbo v7, "colgroup"

    aput-object v7, v6, v9

    const-string/jumbo v7, "tbody"

    aput-object v7, v6, v10

    const-string/jumbo v7, "td"

    aput-object v7, v6, v11

    const/4 v7, 0x5

    const-string/jumbo v8, "tfoot"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v8, "th"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string/jumbo v8, "thead"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string/jumbo v8, "tr"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, p1

    .line 3295
    check-cast v3, Lorg/jsoup/parser/Token$e;

    .line 947
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "table"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 952
    :cond_5
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 953
    const-string/jumbo v3, "caption"

    invoke-virtual {p2, v3}, Llen;->m(Ljava/lang/String;)Z

    move-result v2

    .line 954
    .local v2, "processed":Z
    if-eqz v2, :cond_2

    .line 955
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v3

    goto/16 :goto_0

    .line 956
    .end local v2    # "processed":Z
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, p1

    .line 4295
    check-cast v3, Lorg/jsoup/parser/Token$e;

    .line 956
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "body"

    aput-object v7, v6, v4

    const-string/jumbo v7, "col"

    aput-object v7, v6, v5

    const-string/jumbo v5, "colgroup"

    aput-object v5, v6, v9

    const-string/jumbo v5, "html"

    aput-object v5, v6, v10

    const-string/jumbo v5, "tbody"

    aput-object v5, v6, v11

    const/4 v5, 0x5

    const-string/jumbo v7, "td"

    aput-object v7, v6, v5

    const/4 v5, 0x6

    const-string/jumbo v7, "tfoot"

    aput-object v7, v6, v5

    const/4 v5, 0x7

    const-string/jumbo v7, "th"

    aput-object v7, v6, v5

    const/16 v5, 0x8

    const-string/jumbo v7, "thead"

    aput-object v7, v6, v5

    const/16 v5, 0x9

    const-string/jumbo v7, "tr"

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 958
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v3, v4

    .line 959
    goto/16 :goto_0

    .line 961
    :cond_7
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$11;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v3}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v3

    goto/16 :goto_0
.end method
