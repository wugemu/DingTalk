.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$19;
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
    .line 1333
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 6
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1335
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2311
    check-cast p1, Lorg/jsoup/parser/Token$a;

    .line 1336
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    :cond_0
    :goto_0
    move v2, v4

    .line 1376
    :goto_1
    return v2

    .line 1337
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3303
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 1338
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    goto :goto_0

    .line 1339
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1340
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v2, v3

    .line 1341
    goto :goto_1

    .line 1342
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v1, p1

    .line 4287
    check-cast v1, Lorg/jsoup/parser/Token$f;

    .line 1344
    .local v1, "start":Lorg/jsoup/parser/Token$f;
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1346
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$19;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1, v2}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v2

    goto :goto_1

    .line 1347
    :cond_4
    const-string/jumbo v2, "frameset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1348
    invoke-virtual {p2, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto :goto_0

    .line 1349
    :cond_5
    const-string/jumbo v2, "frame"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1350
    invoke-virtual {p2, v1}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    goto :goto_0

    .line 1351
    :cond_6
    const-string/jumbo v2, "noframes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1352
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$19;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v1, v2}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v2

    goto :goto_1

    .line 1354
    :cond_7
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v2, v3

    .line 1355
    goto :goto_1

    .line 1357
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "start":Lorg/jsoup/parser/Token$f;
    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, p1

    .line 4295
    check-cast v2, Lorg/jsoup/parser/Token$e;

    .line 1357
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "frameset"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1358
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v2

    invoke-virtual {v2}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "html"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1359
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v2, v3

    .line 1360
    goto/16 :goto_1

    .line 1362
    :cond_9
    invoke-virtual {p2}, Llen;->d()Lleh;

    .line 5163
    iget-boolean v2, p2, Llen;->j:Z

    .line 1363
    if-nez v2, :cond_0

    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v2

    invoke-virtual {v2}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "frameset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1364
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$19;->AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 6119
    iput-object v2, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 1367
    :cond_a
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1368
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v2

    invoke-virtual {v2}, Lleh;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1369
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v2, v4

    .line 1370
    goto/16 :goto_1

    .line 1373
    :cond_b
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v2, v3

    .line 1374
    goto/16 :goto_1
.end method
