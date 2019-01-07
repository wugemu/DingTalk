.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$12;
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
    .line 966
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Llet;)Z
    .locals 2
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llet;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1015
    const-string/jumbo v1, "colgroup"

    invoke-virtual {p2, v1}, Llet;->m(Ljava/lang/String;)Z

    move-result v0

    .line 1016
    .local v0, "processed":Z
    if-eqz v0, :cond_0

    .line 1017
    invoke-virtual {p2, p1}, Llet;->a(Lorg/jsoup/parser/Token;)Z

    move-result v1

    .line 1018
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
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
    const/4 v3, 0x1

    .line 968
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1311
    check-cast p1, Lorg/jsoup/parser/Token$a;

    .line 969
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    .line 1011
    :cond_0
    :goto_0
    return v3

    .line 972
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_1
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->a:[I

    iget-object v5, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v5}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1009
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->anythingElse(Lorg/jsoup/parser/Token;Llet;)Z

    move-result v3

    goto :goto_0

    .line 2303
    :pswitch_1
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 974
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    goto :goto_0

    .line 977
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :pswitch_2
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :pswitch_3
    move-object v2, p1

    .line 3287
    check-cast v2, Lorg/jsoup/parser/Token$f;

    .line 981
    .local v2, "startTag":Lorg/jsoup/parser/Token$f;
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "html"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 983
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v3}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v3

    goto :goto_0

    .line 984
    :cond_2
    const-string/jumbo v4, "col"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 985
    invoke-virtual {p2, v2}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    goto :goto_0

    .line 987
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->anythingElse(Lorg/jsoup/parser/Token;Llet;)Z

    move-result v3

    goto :goto_0

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "startTag":Lorg/jsoup/parser/Token$f;
    :pswitch_4
    move-object v0, p1

    .line 3295
    check-cast v0, Lorg/jsoup/parser/Token$e;

    .line 991
    .local v0, "endTag":Lorg/jsoup/parser/Token$e;
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v1

    .line 992
    .restart local v1    # "name":Ljava/lang/String;
    const-string/jumbo v4, "colgroup"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 993
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 994
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 995
    const/4 v3, 0x0

    goto :goto_0

    .line 997
    :cond_4
    invoke-virtual {p2}, Llen;->d()Lleh;

    .line 998
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 4119
    iput-object v4, p2, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 1001
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->anythingElse(Lorg/jsoup/parser/Token;Llet;)Z

    move-result v3

    goto/16 :goto_0

    .line 1004
    .end local v0    # "endTag":Lorg/jsoup/parser/Token$e;
    .end local v1    # "name":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1007
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;->anythingElse(Lorg/jsoup/parser/Token;Llet;)Z

    move-result v3

    goto/16 :goto_0

    .line 972
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
