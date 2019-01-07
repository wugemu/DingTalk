.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$17;
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
    .line 1287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 9
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1289
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2287
    check-cast v0, Lorg/jsoup/parser/Token$f;

    .line 1289
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "caption"

    aput-object v3, v2, v1

    const-string/jumbo v3, "table"

    aput-object v3, v2, v5

    const-string/jumbo v3, "tbody"

    aput-object v3, v2, v6

    const-string/jumbo v3, "tfoot"

    aput-object v3, v2, v7

    const-string/jumbo v3, "thead"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string/jumbo v4, "tr"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "td"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1291
    const-string/jumbo v0, "select"

    invoke-virtual {p2, v0}, Llen;->m(Ljava/lang/String;)Z

    .line 1292
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    .line 1301
    :goto_0
    return v0

    .line 1293
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 2295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 1293
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "caption"

    aput-object v3, v2, v1

    const-string/jumbo v3, "table"

    aput-object v3, v2, v5

    const-string/jumbo v3, "tbody"

    aput-object v3, v2, v6

    const-string/jumbo v3, "tfoot"

    aput-object v3, v2, v7

    const-string/jumbo v3, "thead"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string/jumbo v4, "tr"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "td"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "th"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1294
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move-object v0, p1

    .line 3295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 1295
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Llen;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    const-string/jumbo v0, "select"

    invoke-virtual {p2, v0}, Llen;->m(Ljava/lang/String;)Z

    .line 1297
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1299
    goto :goto_0

    .line 1301
    :cond_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$17;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_0
.end method
