.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$14;
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
    .line 1081
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    .prologue
    .line 1131
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    return v0
.end method

.method private handleMissingTr(Lorg/jsoup/parser/Token;Llet;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llet;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1135
    const-string/jumbo v1, "tr"

    invoke-virtual {p2, v1}, Llet;->m(Ljava/lang/String;)Z

    move-result v0

    .line 1136
    .local v0, "processed":Z
    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p2, p1}, Llet;->a(Lorg/jsoup/parser/Token;)Z

    move-result v1

    .line 1139
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

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

    .line 1083
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, p1

    .line 1287
    check-cast v2, Lorg/jsoup/parser/Token$f;

    .line 1085
    .local v2, "startTag":Lorg/jsoup/parser/Token$f;
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "name":Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "th"

    aput-object v6, v5, v3

    const-string/jumbo v6, "td"

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1088
    invoke-virtual {p2}, Llen;->h()V

    .line 1089
    invoke-virtual {p2, v2}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 1090
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2119
    iput-object v3, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 1091
    invoke-virtual {p2}, Llen;->n()V

    .end local v2    # "startTag":Lorg/jsoup/parser/Token$f;
    :goto_0
    move v3, v4

    .line 1127
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return v3

    .line 1092
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "startTag":Lorg/jsoup/parser/Token$f;
    :cond_0
    const/4 v5, 0x7

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

    const/4 v3, 0x6

    const-string/jumbo v4, "tr"

    aput-object v4, v5, v3

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1093
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->handleMissingTr(Lorg/jsoup/parser/Token;Llet;)Z

    move-result v3

    goto :goto_1

    .line 1095
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v3

    goto :goto_1

    .line 1097
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$f;
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v0, p1

    .line 2295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 1099
    .local v0, "endTag":Lorg/jsoup/parser/Token$e;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v1

    .line 1101
    .restart local v1    # "name":Ljava/lang/String;
    const-string/jumbo v5, "tr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1102
    invoke-virtual {p2, v1}, Llen;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1103
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_1

    .line 1106
    :cond_3
    invoke-virtual {p2}, Llen;->h()V

    .line 1107
    invoke-virtual {p2}, Llen;->d()Lleh;

    .line 1108
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3119
    iput-object v3, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    .line 1109
    :cond_4
    const-string/jumbo v5, "table"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1110
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->handleMissingTr(Lorg/jsoup/parser/Token;Llet;)Z

    move-result v3

    goto :goto_1

    .line 1111
    :cond_5
    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "tbody"

    aput-object v6, v5, v3

    const-string/jumbo v6, "tfoot"

    aput-object v6, v5, v4

    const-string/jumbo v6, "thead"

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1112
    invoke-virtual {p2, v1}, Llen;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1113
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    .line 1116
    :cond_6
    const-string/jumbo v3, "tr"

    invoke-virtual {p2, v3}, Llen;->m(Ljava/lang/String;)Z

    .line 1117
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v3

    goto/16 :goto_1

    .line 1118
    :cond_7
    const/4 v5, 0x7

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

    invoke-static {v1, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1119
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    .line 1122
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v3

    goto/16 :goto_1

    .line 1125
    .end local v0    # "endTag":Lorg/jsoup/parser/Token$e;
    .end local v1    # "name":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v3

    goto/16 :goto_1
.end method
