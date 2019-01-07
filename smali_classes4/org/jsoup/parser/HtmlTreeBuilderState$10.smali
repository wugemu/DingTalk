.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$10;
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
    .line 894
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 896
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->a:[I

    iget-object v6, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v6}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 3522
    iget-object v5, p2, Llen;->g:Ljava/util/List;

    .line 908
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 4522
    iget-object v5, p2, Llen;->g:Ljava/util/List;

    .line 909
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 910
    .local v1, "character":Ljava/lang/String;
    invoke-static {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$2200(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 912
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 913
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v5

    invoke-virtual {v5}, Lleh;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "table"

    aput-object v7, v6, v3

    const-string/jumbo v7, "tbody"

    aput-object v7, v6, v4

    const/4 v7, 0x2

    const-string/jumbo v8, "tfoot"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "thead"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "tr"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5506
    iput-boolean v4, p2, Llen;->i:Z

    .line 915
    new-instance v5, Lorg/jsoup/parser/Token$a;

    invoke-direct {v5}, Lorg/jsoup/parser/Token$a;-><init>()V

    .line 6249
    iput-object v1, v5, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 915
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$10;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v5, v6}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    .line 6506
    iput-boolean v3, p2, Llen;->i:Z

    goto :goto_0

    .end local v1    # "character":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_0
    move-object v0, p1

    .line 1311
    check-cast v0, Lorg/jsoup/parser/Token$a;

    .line 2254
    .local v0, "c":Lorg/jsoup/parser/Token$a;
    iget-object v5, v0, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 899
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 900
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 928
    .end local v0    # "c":Lorg/jsoup/parser/Token$a;
    :goto_1
    return v3

    .line 2522
    .restart local v0    # "c":Lorg/jsoup/parser/Token$a;
    :cond_0
    iget-object v3, p2, Llen;->g:Ljava/util/List;

    .line 3254
    iget-object v5, v0, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 903
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 928
    goto :goto_1

    .line 918
    .end local v0    # "c":Lorg/jsoup/parser/Token$a;
    .restart local v1    # "character":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v5, Lorg/jsoup/parser/Token$a;

    invoke-direct {v5}, Lorg/jsoup/parser/Token$a;-><init>()V

    .line 7249
    iput-object v1, v5, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 918
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$10;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v5, v6}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    goto :goto_0

    .line 921
    :cond_2
    new-instance v5, Lorg/jsoup/parser/Token$a;

    invoke-direct {v5}, Lorg/jsoup/parser/Token$a;-><init>()V

    .line 8249
    iput-object v1, v5, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 921
    invoke-virtual {p2, v5}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    goto/16 :goto_0

    .line 923
    .end local v1    # "character":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Llen;->j()V

    .line 9131
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p2, Llen;->c:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 10119
    iput-object v3, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 926
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v3

    goto :goto_1

    .line 896
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
