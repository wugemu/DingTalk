.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$15;
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
    .line 1142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    .prologue
    .line 1189
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    return v0
.end method

.method private closeCell(Llen;)V
    .locals 1
    .param p1, "tb"    # Llen;

    .prologue
    .line 1193
    const-string/jumbo v0, "td"

    invoke-virtual {p1, v0}, Llen;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    const-string/jumbo v0, "td"

    invoke-virtual {p1, v0}, Llen;->m(Ljava/lang/String;)Z

    .line 1197
    :goto_0
    return-void

    .line 1196
    :cond_0
    const-string/jumbo v0, "th"

    invoke-virtual {p1, v0}, Llen;->m(Ljava/lang/String;)Z

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

    .line 1144
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, p1

    .line 1295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 1146
    .local v0, "endTag":Lorg/jsoup/parser/Token$e;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "name":Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v5, "td"

    aput-object v5, v2, v3

    const-string/jumbo v5, "th"

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1149
    invoke-virtual {p2, v1}, Llen;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1150
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1151
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2119
    iput-object v2, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move v2, v3

    .line 1185
    .end local v0    # "endTag":Lorg/jsoup/parser/Token$e;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return v2

    .line 1154
    .restart local v0    # "endTag":Lorg/jsoup/parser/Token$e;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Llen;->k()V

    .line 1155
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v2

    invoke-virtual {v2}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1156
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1157
    :cond_1
    invoke-virtual {p2, v1}, Llen;->c(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p2}, Llen;->m()V

    .line 1159
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 3119
    iput-object v2, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move v2, v4

    .line 1185
    goto :goto_0

    .line 1160
    :cond_2
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "body"

    aput-object v5, v2, v3

    const-string/jumbo v5, "caption"

    aput-object v5, v2, v4

    const-string/jumbo v5, "col"

    aput-object v5, v2, v7

    const-string/jumbo v5, "colgroup"

    aput-object v5, v2, v8

    const-string/jumbo v5, "html"

    aput-object v5, v2, v9

    invoke-static {v1, v2}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1161
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v2, v3

    .line 1162
    goto :goto_0

    .line 1163
    :cond_3
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "table"

    aput-object v5, v2, v3

    const-string/jumbo v5, "tbody"

    aput-object v5, v2, v4

    const-string/jumbo v4, "tfoot"

    aput-object v4, v2, v7

    const-string/jumbo v4, "thead"

    aput-object v4, v2, v8

    const-string/jumbo v4, "tr"

    aput-object v4, v2, v9

    invoke-static {v1, v2}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1164
    invoke-virtual {p2, v1}, Llen;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1165
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v2, v3

    .line 1166
    goto :goto_0

    .line 1168
    :cond_4
    invoke-direct {p0, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->closeCell(Llen;)V

    .line 1169
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v2

    goto/16 :goto_0

    .line 1171
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v2

    goto/16 :goto_0

    .line 1173
    .end local v0    # "endTag":Lorg/jsoup/parser/Token$e;
    .end local v1    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, p1

    .line 3287
    check-cast v2, Lorg/jsoup/parser/Token$f;

    .line 1173
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "caption"

    aput-object v6, v5, v3

    const-string/jumbo v6, "col"

    aput-object v6, v5, v4

    const-string/jumbo v4, "colgroup"

    aput-object v4, v5, v7

    const-string/jumbo v4, "tbody"

    aput-object v4, v5, v8

    const-string/jumbo v4, "td"

    aput-object v4, v5, v9

    const/4 v4, 0x5

    const-string/jumbo v6, "tfoot"

    aput-object v6, v5, v4

    const/4 v4, 0x6

    const-string/jumbo v6, "th"

    aput-object v6, v5, v4

    const/4 v4, 0x7

    const-string/jumbo v6, "thead"

    aput-object v6, v5, v4

    const/16 v4, 0x8

    const-string/jumbo v6, "tr"

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1176
    const-string/jumbo v2, "td"

    invoke-virtual {p2, v2}, Llen;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "th"

    invoke-virtual {p2, v2}, Llen;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1177
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v2, v3

    .line 1178
    goto/16 :goto_0

    .line 1180
    :cond_7
    invoke-direct {p0, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->closeCell(Llen;)V

    .line 1181
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v2

    goto/16 :goto_0

    .line 1183
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v2

    goto/16 :goto_0
.end method
