.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$6;
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
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    .prologue
    .line 239
    const-string/jumbo v0, "body"

    invoke-virtual {p2, v0}, Llen;->l(Ljava/lang/String;)Z

    .line 240
    const/4 v0, 0x1

    .line 8135
    iput-boolean v0, p2, Llen;->h:Z

    .line 241
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 8
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1311
    check-cast p1, Lorg/jsoup/parser/Token$a;

    .line 196
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    :goto_0
    move v3, v5

    .line 235
    :goto_1
    return v3

    .line 197
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2303
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 198
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    goto :goto_0

    .line 199
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v2, p1

    .line 3287
    check-cast v2, Lorg/jsoup/parser/Token$f;

    .line 203
    .local v2, "startTag":Lorg/jsoup/parser/Token$f;
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "html"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v3}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v3

    goto :goto_1

    .line 206
    :cond_3
    const-string/jumbo v3, "body"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 207
    invoke-virtual {p2, v2}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 4135
    iput-boolean v4, p2, Llen;->h:Z

    .line 209
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 5119
    iput-object v3, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    .line 210
    :cond_4
    const-string/jumbo v3, "frameset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    invoke-virtual {p2, v2}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 212
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 6119
    iput-object v3, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    .line 213
    :cond_5
    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v6, "base"

    aput-object v6, v3, v4

    const-string/jumbo v6, "basefont"

    aput-object v6, v3, v5

    const-string/jumbo v6, "bgsound"

    aput-object v6, v3, v7

    const/4 v6, 0x3

    const-string/jumbo v7, "link"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "meta"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "noframes"

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "script"

    aput-object v7, v3, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "style"

    aput-object v7, v3, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "title"

    aput-object v7, v3, v6

    invoke-static {v1, v3}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 214
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 6498
    iget-object v0, p2, Llen;->d:Lleh;

    .line 216
    .local v0, "head":Lleh;
    invoke-virtual {p2, v0}, Llen;->b(Lleh;)V

    .line 217
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v3}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 218
    invoke-virtual {p2, v0}, Llen;->d(Lleh;)Z

    goto/16 :goto_0

    .line 219
    .end local v0    # "head":Lleh;
    :cond_6
    const-string/jumbo v3, "head"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 220
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v3, v4

    .line 221
    goto/16 :goto_1

    .line 223
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    goto/16 :goto_0

    .line 225
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$f;
    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, p1

    .line 7295
    check-cast v3, Lorg/jsoup/parser/Token$e;

    .line 226
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "body"

    aput-object v7, v6, v4

    const-string/jumbo v7, "html"

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 227
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    goto/16 :goto_0

    .line 229
    :cond_9
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v3, v4

    .line 230
    goto/16 :goto_1

    .line 233
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    goto/16 :goto_0
.end method
