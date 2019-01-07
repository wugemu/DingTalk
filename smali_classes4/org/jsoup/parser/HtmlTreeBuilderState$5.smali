.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$5;
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
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 188
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 189
    new-instance v0, Lorg/jsoup/parser/Token$a;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$a;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4249
    iput-object v1, v0, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 189
    invoke-virtual {p2, v0}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    .line 190
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 7
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_0
    move v0, v2

    .line 184
    :goto_1
    return v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1287
    check-cast v0, Lorg/jsoup/parser/Token$f;

    .line 168
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 170
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "noscript"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p2}, Llen;->d()Lleh;

    .line 172
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2119
    iput-object v0, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 2287
    check-cast v0, Lorg/jsoup/parser/Token$f;

    .line 173
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "basefont"

    aput-object v4, v3, v1

    const-string/jumbo v4, "bgsound"

    aput-object v4, v3, v2

    const-string/jumbo v4, "link"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string/jumbo v5, "meta"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "noframes"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "style"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    :cond_3
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto/16 :goto_1

    .line 176
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 2295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 176
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "br"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v0

    goto/16 :goto_1

    .line 178
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 3287
    check-cast v0, Lorg/jsoup/parser/Token$f;

    .line 178
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "head"

    aput-object v4, v3, v1

    const-string/jumbo v4, "noscript"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 179
    :cond_7
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    .line 180
    goto/16 :goto_1

    .line 182
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v0

    goto/16 :goto_1
.end method
