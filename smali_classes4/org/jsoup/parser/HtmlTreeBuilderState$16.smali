.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$16;
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
    .line 1199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    .prologue
    .line 1283
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1284
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 8
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1201
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->a:[I

    iget-object v7, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v7}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1277
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v4

    .line 1279
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_0
    :goto_0
    return v4

    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :pswitch_0
    move-object v0, p1

    .line 1311
    check-cast v0, Lorg/jsoup/parser/Token$a;

    .line 2254
    .local v0, "c":Lorg/jsoup/parser/Token$a;
    iget-object v6, v0, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 1204
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1205
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    .line 1208
    :cond_1
    invoke-virtual {p2, v0}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    .end local v0    # "c":Lorg/jsoup/parser/Token$a;
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_2
    :goto_1
    move v4, v5

    .line 1279
    goto :goto_0

    .line 2303
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :pswitch_1
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 1212
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p2, p1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    goto :goto_1

    .line 1215
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :pswitch_2
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_0

    :pswitch_3
    move-object v3, p1

    .line 3287
    check-cast v3, Lorg/jsoup/parser/Token$f;

    .line 1219
    .local v3, "start":Lorg/jsoup/parser/Token$f;
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v2

    .line 1220
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, "html"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1221
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v3, v4}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v4

    goto :goto_0

    .line 1222
    :cond_3
    const-string/jumbo v6, "option"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1223
    const-string/jumbo v4, "option"

    invoke-virtual {p2, v4}, Llen;->m(Ljava/lang/String;)Z

    .line 1224
    invoke-virtual {p2, v3}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto :goto_1

    .line 1225
    :cond_4
    const-string/jumbo v6, "optgroup"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1226
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "option"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1227
    const-string/jumbo v4, "option"

    invoke-virtual {p2, v4}, Llen;->m(Ljava/lang/String;)Z

    .line 1230
    :cond_5
    :goto_2
    invoke-virtual {p2, v3}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto :goto_1

    .line 1228
    :cond_6
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "optgroup"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1229
    const-string/jumbo v4, "optgroup"

    invoke-virtual {p2, v4}, Llen;->m(Ljava/lang/String;)Z

    goto :goto_2

    .line 1231
    :cond_7
    const-string/jumbo v6, "select"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1232
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1233
    const-string/jumbo v4, "select"

    invoke-virtual {p2, v4}, Llen;->m(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_0

    .line 1234
    :cond_8
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "input"

    aput-object v7, v6, v4

    const-string/jumbo v7, "keygen"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    const-string/jumbo v7, "textarea"

    aput-object v7, v6, v5

    invoke-static {v2, v6}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1235
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1236
    const-string/jumbo v5, "select"

    invoke-virtual {p2, v5}, Llen;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1238
    const-string/jumbo v4, "select"

    invoke-virtual {p2, v4}, Llen;->m(Ljava/lang/String;)Z

    .line 1239
    invoke-virtual {p2, v3}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v4

    goto/16 :goto_0

    .line 1240
    :cond_9
    const-string/jumbo v4, "script"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1241
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v4}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v4

    goto/16 :goto_0

    .line 1243
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v4

    goto/16 :goto_0

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "start":Lorg/jsoup/parser/Token$f;
    :pswitch_4
    move-object v1, p1

    .line 3295
    check-cast v1, Lorg/jsoup/parser/Token$e;

    .line 1248
    .local v1, "end":Lorg/jsoup/parser/Token$e;
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v2

    .line 1249
    .restart local v2    # "name":Ljava/lang/String;
    const-string/jumbo v6, "optgroup"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1250
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "option"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {p2, v4}, Llen;->e(Lleh;)Lleh;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {p2, v4}, Llen;->e(Lleh;)Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "optgroup"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1251
    const-string/jumbo v4, "option"

    invoke-virtual {p2, v4}, Llen;->m(Ljava/lang/String;)Z

    .line 1252
    :cond_b
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "optgroup"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1253
    invoke-virtual {p2}, Llen;->d()Lleh;

    goto/16 :goto_1

    .line 1255
    :cond_c
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    .line 1256
    :cond_d
    const-string/jumbo v6, "option"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1257
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "option"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1258
    invoke-virtual {p2}, Llen;->d()Lleh;

    goto/16 :goto_1

    .line 1260
    :cond_e
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    .line 1261
    :cond_f
    const-string/jumbo v6, "select"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1262
    invoke-virtual {p2, v2}, Llen;->i(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 1263
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 1266
    :cond_10
    invoke-virtual {p2, v2}, Llen;->c(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p2}, Llen;->i()V

    goto/16 :goto_1

    .line 1270
    :cond_11
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;->anythingElse(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v4

    goto/16 :goto_0

    .line 1273
    .end local v1    # "end":Lorg/jsoup/parser/Token$e;
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "html"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1274
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_1

    .line 1201
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
