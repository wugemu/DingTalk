.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$3;
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
    .line 64
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 89
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    :goto_0
    return v1

    .line 68
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1303
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 69
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    :goto_1
    move v1, v2

    .line 89
    goto :goto_0

    .line 70
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v1, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 2287
    check-cast v1, Lorg/jsoup/parser/Token$f;

    .line 73
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$3;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v1

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 3287
    check-cast v1, Lorg/jsoup/parser/Token$f;

    .line 75
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "head"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4287
    check-cast p1, Lorg/jsoup/parser/Token$f;

    .line 76
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    move-result-object v0

    .line 4494
    .local v0, "head":Lleh;
    iput-object v0, p2, Llen;->d:Lleh;

    .line 78
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$3;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 5119
    iput-object v1, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_1

    .line 79
    .end local v0    # "head":Lleh;
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p1

    .line 5295
    check-cast v1, Lorg/jsoup/parser/Token$e;

    .line 79
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "head"

    aput-object v5, v4, v3

    const-string/jumbo v5, "body"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "html"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v5, "br"

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    const-string/jumbo v1, "head"

    invoke-virtual {p2, v1}, Llen;->l(Ljava/lang/String;)Z

    .line 81
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v1

    goto/16 :goto_0

    .line 82
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 83
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v1, v3

    .line 84
    goto/16 :goto_0

    .line 86
    :cond_6
    const-string/jumbo v1, "head"

    invoke-virtual {p2, v1}, Llen;->l(Ljava/lang/String;)Z

    .line 87
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v1

    goto/16 :goto_0
.end method
