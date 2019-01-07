.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$2;
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
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    .prologue
    .line 59
    const-string/jumbo v0, "html"

    invoke-virtual {p2, v0}, Llen;->a(Ljava/lang/String;)Lleh;

    .line 60
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$2;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 5119
    iput-object v0, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 61
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 5
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    .line 55
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    :goto_0
    return v0

    .line 40
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1303
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 41
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    :goto_1
    move v0, v2

    .line 55
    goto :goto_0

    .line 42
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 2287
    check-cast v0, Lorg/jsoup/parser/Token$f;

    .line 44
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3287
    check-cast p1, Lorg/jsoup/parser/Token$f;

    .line 45
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 46
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$2;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 4119
    iput-object v0, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_1

    .line 47
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 4295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 47
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "head"

    aput-object v4, v3, v1

    const-string/jumbo v4, "body"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "html"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "br"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$2;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v0

    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move v0, v1

    .line 51
    goto :goto_0

    .line 53
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$2;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v0

    goto :goto_0
.end method
