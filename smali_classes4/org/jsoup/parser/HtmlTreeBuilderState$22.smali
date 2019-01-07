.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$22;
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
    .line 1419
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1421
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2303
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 1422
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    .line 1433
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1423
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 3287
    check-cast v0, Lorg/jsoup/parser/Token$f;

    .line 1423
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1424
    :cond_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$22;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_0

    .line 1425
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1427
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 4287
    check-cast v0, Lorg/jsoup/parser/Token$f;

    .line 1427
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "noframes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1428
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$22;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    goto :goto_0

    .line 1430
    :cond_4
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1431
    const/4 v0, 0x0

    goto :goto_0
.end method
