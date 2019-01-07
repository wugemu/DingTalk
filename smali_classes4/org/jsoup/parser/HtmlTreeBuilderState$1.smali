.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$1;
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
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
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
    const/4 v2, 0x1

    .line 14
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    :goto_0
    return v2

    .line 16
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 17
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    goto :goto_0

    .line 18
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 2279
    check-cast v0, Lorg/jsoup/parser/Token$c;

    .line 22
    .local v0, "d":Lorg/jsoup/parser/Token$c;
    new-instance v1, Lleg;

    .line 3052
    iget-object v3, v0, Lorg/jsoup/parser/Token$c;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3056
    iget-object v4, v0, Lorg/jsoup/parser/Token$c;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3060
    iget-object v5, v0, Lorg/jsoup/parser/Token$c;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {p2}, Llen;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Lleg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v1, "doctype":Lleg;
    invoke-virtual {p2}, Llen;->b()Lorg/jsoup/nodes/Document;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Document;->a(Llej;)Lleh;

    .line 3064
    iget-boolean v3, v0, Lorg/jsoup/parser/Token$c;->e:Z

    .line 24
    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {p2}, Llen;->b()Lorg/jsoup/nodes/Document;

    move-result-object v3

    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 3562
    iput-object v4, v3, Lorg/jsoup/nodes/Document;->b:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 26
    :cond_2
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$1;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 4119
    iput-object v3, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto :goto_0

    .line 29
    .end local v0    # "d":Lorg/jsoup/parser/Token$c;
    .end local v1    # "doctype":Lleg;
    :cond_3
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$1;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 5119
    iput-object v2, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 30
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v2

    goto :goto_0
.end method
