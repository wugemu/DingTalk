.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$9;
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
    .line 794
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method final anythingElse(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 7
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 882
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 884
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v1

    invoke-virtual {v1}, Lleh;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "table"

    aput-object v3, v2, v5

    const-string/jumbo v3, "tbody"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "tfoot"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "thead"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "tr"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6506
    iput-boolean v6, p2, Llen;->i:Z

    .line 886
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v1}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    .line 7506
    .local v0, "processed":Z
    iput-boolean v5, p2, Llen;->i:Z

    .line 891
    :goto_0
    return v0

    .line 889
    .end local v0    # "processed":Z
    :cond_0
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v1}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    .restart local v0    # "processed":Z
    goto :goto_0
.end method

.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 10
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 796
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 797
    invoke-virtual {p2}, Llen;->j()V

    .line 798
    invoke-virtual {p2}, Llen;->a()V

    .line 799
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1119
    iput-object v4, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 800
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v4

    .line 878
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_0
    :goto_0
    return v4

    .line 801
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1303
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 802
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    goto :goto_0

    .line 804
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 805
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v4, v5

    .line 806
    goto :goto_0

    .line 807
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v6

    if-eqz v6, :cond_f

    move-object v3, p1

    .line 2287
    check-cast v3, Lorg/jsoup/parser/Token$f;

    .line 809
    .local v3, "startTag":Lorg/jsoup/parser/Token$f;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v6, "caption"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 811
    invoke-virtual {p2}, Llen;->f()V

    .line 812
    invoke-virtual {p2}, Llen;->n()V

    .line 813
    invoke-virtual {p2, v3}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 814
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3119
    iput-object v5, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    .line 815
    :cond_4
    const-string/jumbo v6, "colgroup"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 816
    invoke-virtual {p2}, Llen;->f()V

    .line 817
    invoke-virtual {p2, v3}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 818
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 4119
    iput-object v5, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    .line 819
    :cond_5
    const-string/jumbo v6, "col"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 820
    const-string/jumbo v4, "colgroup"

    invoke-virtual {p2, v4}, Llen;->l(Ljava/lang/String;)Z

    .line 821
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v4

    goto :goto_0

    .line 822
    :cond_6
    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "tbody"

    aput-object v7, v6, v5

    const-string/jumbo v7, "tfoot"

    aput-object v7, v6, v4

    const-string/jumbo v7, "thead"

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 823
    invoke-virtual {p2}, Llen;->f()V

    .line 824
    invoke-virtual {p2, v3}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 825
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 5119
    iput-object v5, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 826
    :cond_7
    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "td"

    aput-object v7, v6, v5

    const-string/jumbo v7, "th"

    aput-object v7, v6, v4

    const-string/jumbo v7, "tr"

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 827
    const-string/jumbo v4, "tbody"

    invoke-virtual {p2, v4}, Llen;->l(Ljava/lang/String;)Z

    .line 828
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v4

    goto/16 :goto_0

    .line 829
    :cond_8
    const-string/jumbo v6, "table"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 830
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 831
    const-string/jumbo v5, "table"

    invoke-virtual {p2, v5}, Llen;->m(Ljava/lang/String;)Z

    move-result v2

    .line 832
    .local v2, "processed":Z
    if-eqz v2, :cond_0

    .line 833
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v4

    goto/16 :goto_0

    .line 834
    .end local v2    # "processed":Z
    :cond_9
    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "style"

    aput-object v7, v6, v5

    const-string/jumbo v7, "script"

    aput-object v7, v6, v4

    invoke-static {v1, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 835
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v4}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v4

    goto/16 :goto_0

    .line 836
    :cond_a
    const-string/jumbo v6, "input"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 837
    iget-object v5, v3, Lorg/jsoup/parser/Token$f;->e:Lled;

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Lled;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 838
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v4

    goto/16 :goto_0

    .line 840
    :cond_b
    invoke-virtual {p2, v3}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 842
    :cond_c
    const-string/jumbo v6, "form"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 843
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 5510
    iget-object v6, p2, Llen;->e:Llei;

    .line 844
    if-eqz v6, :cond_d

    move v4, v5

    .line 845
    goto/16 :goto_0

    .line 847
    :cond_d
    invoke-virtual {p2, v3, v5}, Llen;->a(Lorg/jsoup/parser/Token$f;Z)Llei;

    goto/16 :goto_0

    .line 850
    :cond_e
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v4

    goto/16 :goto_0

    .line 853
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "startTag":Lorg/jsoup/parser/Token$f;
    :cond_f
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v6

    if-eqz v6, :cond_13

    move-object v0, p1

    .line 6295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 855
    .local v0, "endTag":Lorg/jsoup/parser/Token$e;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v1

    .line 857
    .restart local v1    # "name":Ljava/lang/String;
    const-string/jumbo v6, "table"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 858
    invoke-virtual {p2, v1}, Llen;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 859
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v4, v5

    .line 860
    goto/16 :goto_0

    .line 862
    :cond_10
    const-string/jumbo v5, "table"

    invoke-virtual {p2, v5}, Llen;->c(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p2}, Llen;->i()V

    goto/16 :goto_0

    .line 865
    :cond_11
    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "body"

    aput-object v7, v6, v5

    const-string/jumbo v7, "caption"

    aput-object v7, v6, v4

    const-string/jumbo v4, "col"

    aput-object v4, v6, v8

    const-string/jumbo v4, "colgroup"

    aput-object v4, v6, v9

    const/4 v4, 0x4

    const-string/jumbo v7, "html"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    const-string/jumbo v7, "tbody"

    aput-object v7, v6, v4

    const/4 v4, 0x6

    const-string/jumbo v7, "td"

    aput-object v7, v6, v4

    const/4 v4, 0x7

    const-string/jumbo v7, "tfoot"

    aput-object v7, v6, v4

    const/16 v4, 0x8

    const-string/jumbo v7, "th"

    aput-object v7, v6, v4

    const/16 v4, 0x9

    const-string/jumbo v7, "thead"

    aput-object v7, v6, v4

    const/16 v4, 0xa

    const-string/jumbo v7, "tr"

    aput-object v7, v6, v4

    invoke-static {v1, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 867
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v4, v5

    .line 868
    goto/16 :goto_0

    .line 870
    :cond_12
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v4

    goto/16 :goto_0

    .line 873
    .end local v0    # "endTag":Lorg/jsoup/parser/Token$e;
    .end local v1    # "name":Ljava/lang/String;
    :cond_13
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 874
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v5

    invoke-virtual {v5}, Lleh;->a()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 875
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 878
    :cond_14
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v4

    goto/16 :goto_0
.end method
