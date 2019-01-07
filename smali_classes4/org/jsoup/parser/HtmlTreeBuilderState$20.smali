.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$20;
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
    .line 1379
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 3
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1381
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2311
    check-cast p1, Lorg/jsoup/parser/Token$a;

    .line 1382
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    .line 1400
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1383
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3303
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 1384
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    goto :goto_0

    .line 1385
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1386
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    .line 1387
    goto :goto_1

    .line 1388
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 4287
    check-cast v0, Lorg/jsoup/parser/Token$f;

    .line 1388
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1389
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$20;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_1

    .line 1390
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 4295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 1390
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1391
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$20;->AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 5119
    iput-object v0, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    .line 1392
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 5287
    check-cast v0, Lorg/jsoup/parser/Token$f;

    .line 1392
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "noframes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1393
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$20;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_1

    .line 1394
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    .line 1398
    goto/16 :goto_1
.end method
