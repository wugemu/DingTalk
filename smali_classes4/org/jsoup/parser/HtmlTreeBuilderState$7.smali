.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
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
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method final anyOtherEndTag(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 5
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 755
    .line 34295
    check-cast p1, Lorg/jsoup/parser/Token$e;

    .line 755
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Llen;->e()Ljava/util/ArrayList;

    move-result-object v3

    .line 757
    .local v3, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "pos":I
    :goto_0
    if-ltz v2, :cond_1

    .line 758
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lleh;

    .line 759
    .local v1, "node":Lleh;
    invoke-virtual {v1}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    invoke-virtual {p2, v0}, Llen;->j(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Llen;->p()Lleh;

    move-result-object v4

    invoke-virtual {v4}, Lleh;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 762
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 763
    :cond_0
    invoke-virtual {p2, v0}, Llen;->c(Ljava/lang/String;)V

    .line 772
    .end local v1    # "node":Lleh;
    :cond_1
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 766
    .restart local v1    # "node":Lleh;
    :cond_2
    invoke-static {v1}, Llen;->f(Lleh;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 767
    invoke-virtual {p2, p0}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 768
    const/4 v4, 0x0

    goto :goto_1

    .line 757
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method final process(Lorg/jsoup/parser/Token;Llen;)Z
    .locals 42
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Llen;

    .prologue
    .line 246
    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$24;->a:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v40

    aget v39, v39, v40

    packed-switch v39, :pswitch_data_0

    .line 751
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    :cond_0
    :goto_0
    const/16 v39, 0x1

    :goto_1
    return v39

    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :pswitch_0
    move-object/from16 v9, p1

    .line 1311
    check-cast v9, Lorg/jsoup/parser/Token$a;

    .line 2254
    .local v9, "c":Lorg/jsoup/parser/Token$a;
    iget-object v0, v9, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 249
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1

    .line 251
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 252
    const/16 v39, 0x0

    goto :goto_1

    .line 3139
    :cond_1
    move-object/from16 v0, p2

    iget-boolean v0, v0, Llen;->h:Z

    move/from16 v39, v0

    .line 253
    if-eqz v39, :cond_2

    invoke-static {v9}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v39

    if-eqz v39, :cond_2

    .line 254
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 255
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 258
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Llen;->a(Lorg/jsoup/parser/Token$a;)V

    .line 259
    const/16 v39, 0x0

    .line 4135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    goto :goto_0

    .line 4303
    .end local v9    # "c":Lorg/jsoup/parser/Token$a;
    :pswitch_1
    check-cast p1, Lorg/jsoup/parser/Token$b;

    .line 264
    .end local p1    # "t":Lorg/jsoup/parser/Token;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$b;)V

    goto :goto_0

    .line 268
    .restart local p1    # "t":Lorg/jsoup/parser/Token;
    :pswitch_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 269
    const/16 v39, 0x0

    goto :goto_1

    :pswitch_3
    move-object/from16 v37, p1

    .line 5287
    check-cast v37, Lorg/jsoup/parser/Token$f;

    .line 273
    .local v37, "startTag":Lorg/jsoup/parser/Token$f;
    invoke-virtual/range {v37 .. v37}, Lorg/jsoup/parser/Token$f;->j()Ljava/lang/String;

    move-result-object v26

    .line 274
    .local v26, "name":Ljava/lang/String;
    const-string/jumbo v39, "html"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4

    .line 275
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Llen;->e()Ljava/util/ArrayList;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lleh;

    .line 6127
    .local v19, "html":Lleh;
    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/parser/Token$g;->e:Lled;

    move-object/from16 v39, v0

    .line 278
    invoke-virtual/range {v39 .. v39}, Lled;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llec;

    .line 7041
    .local v7, "attribute":Llec;
    iget-object v0, v7, Llec;->a:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 279
    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lleh;->o(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_3

    .line 280
    invoke-virtual/range {v19 .. v19}, Lleh;->r()Lled;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lled;->a(Llec;)V

    goto :goto_2

    .line 282
    .end local v7    # "attribute":Llec;
    .end local v19    # "html":Lleh;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->a()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_5

    .line 283
    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Llen;->a(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v39

    goto/16 :goto_1

    .line 284
    :cond_5
    const-string/jumbo v39, "body"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_9

    .line 285
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Llen;->e()Ljava/util/ArrayList;

    move-result-object v35

    .line 287
    .local v35, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_6

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_7

    const/16 v39, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lleh;

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "body"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    .line 289
    :cond_6
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 291
    :cond_7
    const/16 v39, 0x0

    .line 7135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    .line 292
    const/16 v39, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lleh;

    .line 8127
    .local v8, "body":Lleh;
    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/parser/Token$g;->e:Lled;

    move-object/from16 v39, v0

    .line 293
    invoke-virtual/range {v39 .. v39}, Lled;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llec;

    .line 9041
    .restart local v7    # "attribute":Llec;
    iget-object v0, v7, Llec;->a:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 294
    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Lleh;->o(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    .line 295
    invoke-virtual {v8}, Lleh;->r()Lled;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lled;->a(Llec;)V

    goto :goto_3

    .line 298
    .end local v7    # "attribute":Llec;
    .end local v8    # "body":Lleh;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v35    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    :cond_9
    const-string/jumbo v39, "frameset"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_f

    .line 299
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Llen;->e()Ljava/util/ArrayList;

    move-result-object v35

    .line 301
    .restart local v35    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_a

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_b

    const/16 v39, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lleh;

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "body"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    .line 303
    :cond_a
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 9139
    :cond_b
    move-object/from16 v0, p2

    iget-boolean v0, v0, Llen;->h:Z

    move/from16 v39, v0

    .line 304
    if-nez v39, :cond_c

    .line 305
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 307
    :cond_c
    const/16 v39, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lleh;

    .line 10139
    .local v32, "second":Lleh;
    move-object/from16 v0, v32

    iget-object v0, v0, Lleh;->d:Llej;

    move-object/from16 v39, v0

    check-cast v39, Lleh;

    .line 308
    if-eqz v39, :cond_d

    .line 309
    invoke-virtual/range {v32 .. v32}, Lleh;->u()V

    .line 311
    :cond_d
    :goto_4
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    .line 312
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 313
    :cond_e
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 314
    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 11119
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    iput-object v0, v1, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 316
    .end local v32    # "second":Lleh;
    .end local v35    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    :cond_f
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->b()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_11

    .line 317
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_10

    .line 318
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 320
    :cond_10
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 321
    :cond_11
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->c()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_14

    .line 322
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_12

    .line 323
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 325
    :cond_12
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->c()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_13

    .line 326
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Llen;->d()Lleh;

    .line 329
    :cond_13
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 330
    :cond_14
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->d()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_16

    .line 331
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_15

    .line 332
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 334
    :cond_15
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 336
    const/16 v39, 0x0

    .line 11135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    goto/16 :goto_0

    .line 337
    :cond_16
    const-string/jumbo v39, "form"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_19

    .line 11510
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->e:Llei;

    move-object/from16 v39, v0

    .line 338
    if-eqz v39, :cond_17

    .line 339
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 340
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 342
    :cond_17
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_18

    .line 343
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 345
    :cond_18
    const/16 v39, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Llen;->a(Lorg/jsoup/parser/Token$f;Z)Llei;

    goto/16 :goto_0

    .line 346
    :cond_19
    const-string/jumbo v39, "li"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1e

    .line 347
    const/16 v39, 0x0

    .line 12135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    .line 348
    invoke-virtual/range {p2 .. p2}, Llen;->e()Ljava/util/ArrayList;

    move-result-object v35

    .line 349
    .restart local v35    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    add-int/lit8 v20, v39, -0x1

    .local v20, "i":I
    :goto_5
    if-lez v20, :cond_1a

    .line 350
    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lleh;

    .line 351
    .local v14, "el":Lleh;
    invoke-virtual {v14}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "li"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1c

    .line 352
    const-string/jumbo v39, "li"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 358
    .end local v14    # "el":Lleh;
    :cond_1a
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1b

    .line 359
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 361
    :cond_1b
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 355
    .restart local v14    # "el":Lleh;
    :cond_1c
    invoke-static {v14}, Llen;->f(Lleh;)Z

    move-result v39

    if-eqz v39, :cond_1d

    invoke-virtual {v14}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->e()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1a

    .line 349
    :cond_1d
    add-int/lit8 v20, v20, -0x1

    goto :goto_5

    .line 362
    .end local v14    # "el":Lleh;
    .end local v20    # "i":I
    .end local v35    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    :cond_1e
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->f()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_23

    .line 363
    const/16 v39, 0x0

    .line 13135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    .line 364
    invoke-virtual/range {p2 .. p2}, Llen;->e()Ljava/util/ArrayList;

    move-result-object v35

    .line 365
    .restart local v35    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v39

    add-int/lit8 v20, v39, -0x1

    .restart local v20    # "i":I
    :goto_6
    if-lez v20, :cond_1f

    .line 366
    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lleh;

    .line 367
    .restart local v14    # "el":Lleh;
    invoke-virtual {v14}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->f()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_21

    .line 368
    invoke-virtual {v14}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 374
    .end local v14    # "el":Lleh;
    :cond_1f
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_20

    .line 375
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 377
    :cond_20
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 371
    .restart local v14    # "el":Lleh;
    :cond_21
    invoke-static {v14}, Llen;->f(Lleh;)Z

    move-result v39

    if-eqz v39, :cond_22

    invoke-virtual {v14}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->e()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1f

    .line 365
    :cond_22
    add-int/lit8 v20, v20, -0x1

    goto :goto_6

    .line 378
    .end local v14    # "el":Lleh;
    .end local v20    # "i":I
    .end local v35    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    :cond_23
    const-string/jumbo v39, "plaintext"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_25

    .line 379
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_24

    .line 380
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 382
    :cond_24
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 383
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->m:Lles;

    move-object/from16 v39, v0

    sget-object v40, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    .line 14113
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto/16 :goto_0

    .line 384
    :cond_25
    const-string/jumbo v39, "button"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_27

    .line 385
    const-string/jumbo v39, "button"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_26

    .line 387
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 388
    const-string/jumbo v39, "button"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 389
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_0

    .line 391
    :cond_26
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 392
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 393
    const/16 v39, 0x0

    .line 14135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    goto/16 :goto_0

    .line 395
    :cond_27
    const-string/jumbo v39, "a"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_29

    .line 396
    const-string/jumbo v39, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->k(Ljava/lang/String;)Lleh;

    move-result-object v39

    if-eqz v39, :cond_28

    .line 397
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 398
    const-string/jumbo v39, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 401
    const-string/jumbo v39, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->b(Ljava/lang/String;)Lleh;

    move-result-object v30

    .line 402
    .local v30, "remainingA":Lleh;
    if-eqz v30, :cond_28

    .line 403
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Llen;->h(Lleh;)V

    .line 404
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Llen;->d(Lleh;)Z

    .line 407
    .end local v30    # "remainingA":Lleh;
    :cond_28
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 408
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    move-result-object v3

    .line 409
    .local v3, "a":Lleh;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Llen;->g(Lleh;)V

    goto/16 :goto_0

    .line 410
    .end local v3    # "a":Lleh;
    :cond_29
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->g()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2a

    .line 411
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 412
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    move-result-object v14

    .line 413
    .restart local v14    # "el":Lleh;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Llen;->g(Lleh;)V

    goto/16 :goto_0

    .line 414
    .end local v14    # "el":Lleh;
    :cond_2a
    const-string/jumbo v39, "nobr"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2c

    .line 415
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 416
    const-string/jumbo v39, "nobr"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->e(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2b

    .line 417
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 418
    const-string/jumbo v39, "nobr"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 419
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 421
    :cond_2b
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    move-result-object v14

    .line 422
    .restart local v14    # "el":Lleh;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Llen;->g(Lleh;)V

    goto/16 :goto_0

    .line 423
    .end local v14    # "el":Lleh;
    :cond_2c
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->h()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2d

    .line 424
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 425
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 426
    invoke-virtual/range {p2 .. p2}, Llen;->n()V

    .line 427
    const/16 v39, 0x0

    .line 15135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    goto/16 :goto_0

    .line 428
    :cond_2d
    const-string/jumbo v39, "table"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2f

    .line 429
    invoke-virtual/range {p2 .. p2}, Llen;->b()Lorg/jsoup/nodes/Document;

    move-result-object v39

    .line 15558
    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/jsoup/nodes/Document;->b:Lorg/jsoup/nodes/Document$QuirksMode;

    move-object/from16 v39, v0

    .line 429
    sget-object v40, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_2e

    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2e

    .line 430
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 432
    :cond_2e
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 433
    const/16 v39, 0x0

    .line 16135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    .line 434
    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 17119
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    iput-object v0, v1, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 435
    :cond_2f
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->i()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_30

    .line 436
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 437
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 438
    const/16 v39, 0x0

    .line 17135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    goto/16 :goto_0

    .line 439
    :cond_30
    const-string/jumbo v39, "input"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_31

    .line 440
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 441
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    move-result-object v14

    .line 442
    .restart local v14    # "el":Lleh;
    const-string/jumbo v39, "type"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Lleh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "hidden"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_0

    .line 443
    const/16 v39, 0x0

    .line 18135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    goto/16 :goto_0

    .line 444
    .end local v14    # "el":Lleh;
    :cond_31
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->j()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_32

    .line 445
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 446
    :cond_32
    const-string/jumbo v39, "hr"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_34

    .line 447
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_33

    .line 448
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 450
    :cond_33
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->b(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 451
    const/16 v39, 0x0

    .line 19135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    goto/16 :goto_0

    .line 452
    :cond_34
    const-string/jumbo v39, "image"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_36

    .line 453
    const-string/jumbo v39, "svg"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->b(Ljava/lang/String;)Lleh;

    move-result-object v39

    if-nez v39, :cond_35

    .line 454
    const-string/jumbo v39, "img"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$f;->a(Ljava/lang/String;)Lorg/jsoup/parser/Token$g;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v39

    goto/16 :goto_1

    .line 456
    :cond_35
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 457
    :cond_36
    const-string/jumbo v39, "isindex"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3c

    .line 459
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 19510
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->e:Llei;

    move-object/from16 v39, v0

    .line 460
    if-eqz v39, :cond_37

    .line 461
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 463
    :cond_37
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->m:Lles;

    move-object/from16 v39, v0

    .line 20122
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lles;->n:Z

    .line 464
    const-string/jumbo v39, "form"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->l(Ljava/lang/String;)Z

    .line 465
    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/parser/Token$f;->e:Lled;

    move-object/from16 v39, v0

    const-string/jumbo v40, "action"

    invoke-virtual/range {v39 .. v40}, Lled;->b(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_38

    .line 20510
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->e:Llei;

    move-object/from16 v16, v0

    .line 467
    .local v16, "form":Lleh;
    const-string/jumbo v39, "action"

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/parser/Token$f;->e:Lled;

    move-object/from16 v40, v0

    const-string/jumbo v41, "action"

    invoke-virtual/range {v40 .. v41}, Lled;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lleh;->a(Ljava/lang/String;Ljava/lang/String;)Lleh;

    .line 469
    .end local v16    # "form":Lleh;
    :cond_38
    const-string/jumbo v39, "hr"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->l(Ljava/lang/String;)Z

    .line 470
    const-string/jumbo v39, "label"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->l(Ljava/lang/String;)Z

    .line 472
    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/parser/Token$f;->e:Lled;

    move-object/from16 v39, v0

    const-string/jumbo v40, "prompt"

    invoke-virtual/range {v39 .. v40}, Lled;->b(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_3a

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/parser/Token$f;->e:Lled;

    move-object/from16 v39, v0

    const-string/jumbo v40, "prompt"

    invoke-virtual/range {v39 .. v40}, Lled;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 476
    .local v29, "prompt":Ljava/lang/String;
    :goto_7
    new-instance v39, Lorg/jsoup/parser/Token$a;

    invoke-direct/range {v39 .. v39}, Lorg/jsoup/parser/Token$a;-><init>()V

    .line 21249
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    iput-object v0, v1, Lorg/jsoup/parser/Token$a;->b:Ljava/lang/String;

    .line 476
    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    .line 479
    new-instance v22, Lled;

    invoke-direct/range {v22 .. v22}, Lled;-><init>()V

    .line 480
    .local v22, "inputAttribs":Lled;
    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/parser/Token$f;->e:Lled;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lled;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_39
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_3b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llec;

    .line 22041
    .local v6, "attr":Llec;
    iget-object v0, v6, Llec;->a:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 481
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->k()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_39

    .line 482
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lled;->a(Llec;)V

    goto :goto_8

    .line 472
    .end local v6    # "attr":Llec;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "inputAttribs":Lled;
    .end local v29    # "prompt":Ljava/lang/String;
    :cond_3a
    const-string/jumbo v29, "This is a searchable index. Enter search keywords: "

    goto :goto_7

    .line 484
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "inputAttribs":Lled;
    .restart local v29    # "prompt":Ljava/lang/String;
    :cond_3b
    const-string/jumbo v39, "name"

    const-string/jumbo v40, "isindex"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lled;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string/jumbo v39, "input"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Llen;->a(Ljava/lang/String;Lled;)Z

    .line 486
    const-string/jumbo v39, "label"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 487
    const-string/jumbo v39, "hr"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->l(Ljava/lang/String;)Z

    .line 488
    const-string/jumbo v39, "form"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 489
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "inputAttribs":Lled;
    .end local v29    # "prompt":Ljava/lang/String;
    :cond_3c
    const-string/jumbo v39, "textarea"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3d

    .line 490
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 492
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->m:Lles;

    move-object/from16 v39, v0

    sget-object v40, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 22113
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    .line 493
    invoke-virtual/range {p2 .. p2}, Llen;->a()V

    .line 494
    const/16 v39, 0x0

    .line 22135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    .line 495
    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 23119
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    iput-object v0, v1, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 496
    :cond_3d
    const-string/jumbo v39, "xmp"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3f

    .line 497
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_3e

    .line 498
    const-string/jumbo v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 500
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 501
    const/16 v39, 0x0

    .line 23135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    .line 502
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$f;Llen;)V

    goto/16 :goto_0

    .line 503
    :cond_3f
    const-string/jumbo v39, "iframe"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_40

    .line 504
    const/16 v39, 0x0

    .line 24135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    .line 505
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$f;Llen;)V

    goto/16 :goto_0

    .line 506
    :cond_40
    const-string/jumbo v39, "noembed"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_41

    .line 508
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$f;Llen;)V

    goto/16 :goto_0

    .line 509
    :cond_41
    const-string/jumbo v39, "select"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_44

    .line 510
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 511
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 512
    const/16 v39, 0x0

    .line 25135
    move/from16 v0, v39

    move-object/from16 v1, p2

    iput-boolean v0, v1, Llen;->h:Z

    .line 26123
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v38, v0

    .line 515
    .local v38, "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_42

    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_42

    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_42

    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_42

    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_43

    .line 516
    :cond_42
    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 27119
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    iput-object v0, v1, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 518
    :cond_43
    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 28119
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    iput-object v0, v1, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 519
    .end local v38    # "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    :cond_44
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->l()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_46

    .line 520
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "option"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_45

    .line 521
    const-string/jumbo v39, "option"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    .line 522
    :cond_45
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 523
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 524
    :cond_46
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->m()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_48

    .line 525
    const-string/jumbo v39, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->e(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 526
    invoke-virtual/range {p2 .. p2}, Llen;->k()V

    .line 527
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v40, "ruby"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_47

    .line 528
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 529
    const-string/jumbo v39, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->d(Ljava/lang/String;)V

    .line 531
    :cond_47
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .line 533
    :cond_48
    const-string/jumbo v39, "math"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_49

    .line 534
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 536
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 537
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->m:Lles;

    move-object/from16 v39, v0

    .line 28122
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lles;->n:Z

    goto/16 :goto_0

    .line 538
    :cond_49
    const-string/jumbo v39, "svg"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4a

    .line 539
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 541
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    .line 542
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->m:Lles;

    move-object/from16 v39, v0

    .line 29122
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lles;->n:Z

    goto/16 :goto_0

    .line 543
    :cond_4a
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->n()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_4b

    .line 544
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 545
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 547
    :cond_4b
    invoke-virtual/range {p2 .. p2}, Llen;->l()V

    .line 548
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/Token$f;)Lleh;

    goto/16 :goto_0

    .end local v26    # "name":Ljava/lang/String;
    .end local v37    # "startTag":Lorg/jsoup/parser/Token$f;
    :pswitch_4
    move-object/from16 v15, p1

    .line 29295
    check-cast v15, Lorg/jsoup/parser/Token$e;

    .line 554
    .local v15, "endTag":Lorg/jsoup/parser/Token$e;
    invoke-virtual {v15}, Lorg/jsoup/parser/Token$e;->j()Ljava/lang/String;

    move-result-object v26

    .line 555
    .restart local v26    # "name":Ljava/lang/String;
    const-string/jumbo v39, "body"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4d

    .line 556
    const-string/jumbo v39, "body"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_4c

    .line 557
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 558
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 561
    :cond_4c
    sget-object v39, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 30119
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    iput-object v0, v1, Llen;->b:Lorg/jsoup/parser/HtmlTreeBuilderState;

    goto/16 :goto_0

    .line 563
    :cond_4d
    const-string/jumbo v39, "html"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4e

    .line 564
    const-string/jumbo v39, "body"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->m(Ljava/lang/String;)Z

    move-result v28

    .line 565
    .local v28, "notIgnored":Z
    if-eqz v28, :cond_0

    .line 566
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v39

    goto/16 :goto_1

    .line 567
    .end local v28    # "notIgnored":Z
    :cond_4e
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->o()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_51

    .line 568
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_4f

    .line 570
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 571
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 573
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Llen;->k()V

    .line 574
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_50

    .line 575
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 576
    :cond_50
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 578
    :cond_51
    const-string/jumbo v39, "form"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_55

    .line 30510
    move-object/from16 v0, p2

    iget-object v13, v0, Llen;->e:Llei;

    .line 580
    .local v13, "currentForm":Lleh;
    const/16 v39, 0x0

    .line 30514
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    iput-object v0, v1, Llen;->e:Llei;

    .line 581
    if-eqz v13, :cond_52

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_53

    .line 582
    :cond_52
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 583
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 585
    :cond_53
    invoke-virtual/range {p2 .. p2}, Llen;->k()V

    .line 586
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_54

    .line 587
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 589
    :cond_54
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Llen;->d(Lleh;)Z

    goto/16 :goto_0

    .line 591
    .end local v13    # "currentForm":Lleh;
    :cond_55
    const-string/jumbo v39, "p"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_58

    .line 592
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->g(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_56

    .line 593
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 594
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->l(Ljava/lang/String;)Z

    .line 595
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Llen;->a(Lorg/jsoup/parser/Token;)Z

    move-result v39

    goto/16 :goto_1

    .line 597
    :cond_56
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->j(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_57

    .line 599
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 600
    :cond_57
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 602
    :cond_58
    const-string/jumbo v39, "li"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5b

    .line 603
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->f(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_59

    .line 604
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 605
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 607
    :cond_59
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->j(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_5a

    .line 609
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 610
    :cond_5a
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    :cond_5b
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->f()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_5e

    .line 613
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_5c

    .line 614
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 615
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 617
    :cond_5c
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->j(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_5d

    .line 619
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 620
    :cond_5d
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    :cond_5e
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->c()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_61

    .line 623
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->c()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->b([Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_5f

    .line 624
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 625
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 627
    :cond_5f
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->j(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_60

    .line 629
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 630
    :cond_60
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->c()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 632
    :cond_61
    const-string/jumbo v39, "sarcasm"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_62

    .line 634
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v39

    goto/16 :goto_1

    .line 635
    :cond_62
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->p()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_73

    .line 637
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_9
    const/16 v39, 0x8

    move/from16 v0, v20

    move/from16 v1, v39

    if-ge v0, v1, :cond_0

    .line 638
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->k(Ljava/lang/String;)Lleh;

    move-result-object v17

    .line 639
    .local v17, "formatEl":Lleh;
    if-nez v17, :cond_63

    .line 640
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v39

    goto/16 :goto_1

    .line 641
    :cond_63
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llen;->c(Lleh;)Z

    move-result v39

    if-nez v39, :cond_64

    .line 642
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 643
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llen;->h(Lleh;)V

    .line 644
    const/16 v39, 0x1

    goto/16 :goto_1

    .line 645
    :cond_64
    invoke-virtual/range {v17 .. v17}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_65

    .line 646
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 647
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 648
    :cond_65
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_66

    .line 649
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 651
    :cond_66
    const/16 v18, 0x0

    .line 652
    .local v18, "furthestBlock":Lleh;
    const/4 v12, 0x0

    .line 653
    .local v12, "commonAncestor":Lleh;
    const/16 v33, 0x0

    .line 654
    .local v33, "seenFormattingElement":Z
    invoke-virtual/range {p2 .. p2}, Llen;->e()Ljava/util/ArrayList;

    move-result-object v35

    .line 657
    .restart local v35    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 658
    .local v36, "stackSize":I
    const/16 v34, 0x0

    .local v34, "si":I
    :goto_a
    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_69

    const/16 v39, 0x40

    move/from16 v0, v34

    move/from16 v1, v39

    if-ge v0, v1, :cond_69

    .line 659
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lleh;

    .line 660
    .restart local v14    # "el":Lleh;
    move-object/from16 v0, v17

    if-ne v14, v0, :cond_68

    .line 661
    add-int/lit8 v39, v34, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "commonAncestor":Lleh;
    check-cast v12, Lleh;

    .line 662
    .restart local v12    # "commonAncestor":Lleh;
    const/16 v33, 0x1

    .line 658
    :cond_67
    add-int/lit8 v34, v34, 0x1

    goto :goto_a

    .line 663
    :cond_68
    if-eqz v33, :cond_67

    invoke-static {v14}, Llen;->f(Lleh;)Z

    move-result v39

    if-eqz v39, :cond_67

    .line 664
    move-object/from16 v18, v14

    .line 668
    .end local v14    # "el":Lleh;
    :cond_69
    if-nez v18, :cond_6a

    .line 669
    invoke-virtual/range {v17 .. v17}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->c(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llen;->h(Lleh;)V

    .line 671
    const/16 v39, 0x1

    goto/16 :goto_1

    .line 676
    :cond_6a
    move-object/from16 v27, v18

    .line 677
    .local v27, "node":Lleh;
    move-object/from16 v24, v18

    .line 678
    .local v24, "lastNode":Lleh;
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_b
    const/16 v39, 0x3

    move/from16 v0, v23

    move/from16 v1, v39

    if-ge v0, v1, :cond_6e

    .line 679
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Llen;->c(Lleh;)Z

    move-result v39

    if-eqz v39, :cond_6b

    .line 680
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Llen;->e(Lleh;)Lleh;

    move-result-object v27

    .line 30651
    :cond_6b
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->f:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Llen;->a(Ljava/util/ArrayList;Lleh;)Z

    move-result v39

    .line 681
    if-nez v39, :cond_6c

    .line 682
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Llen;->d(Lleh;)Z

    .line 678
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 684
    :cond_6c
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_6e

    .line 687
    new-instance v31, Lleh;

    invoke-virtual/range {v27 .. v27}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lleq;->a(Ljava/lang/String;)Lleq;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Llen;->c()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lleh;-><init>(Lleq;Ljava/lang/String;)V

    .line 30666
    .local v31, "replacement":Lleh;
    move-object/from16 v0, p2

    iget-object v0, v0, Llen;->f:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Llen;->a(Ljava/util/ArrayList;Lleh;Lleh;)V

    .line 689
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Llen;->b(Lleh;Lleh;)V

    .line 690
    move-object/from16 v27, v31

    .line 31139
    move-object/from16 v0, v24

    iget-object v0, v0, Lleh;->d:Llej;

    move-object/from16 v39, v0

    check-cast v39, Lleh;

    .line 696
    if-eqz v39, :cond_6d

    .line 697
    invoke-virtual/range {v24 .. v24}, Lleh;->u()V

    .line 698
    :cond_6d
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lleh;->a(Llej;)Lleh;

    .line 700
    move-object/from16 v24, v27

    goto :goto_c

    .line 703
    .end local v31    # "replacement":Lleh;
    :cond_6e
    invoke-virtual {v12}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->q()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_70

    .line 32139
    move-object/from16 v0, v24

    iget-object v0, v0, Lleh;->d:Llej;

    move-object/from16 v39, v0

    check-cast v39, Lleh;

    .line 704
    if-eqz v39, :cond_6f

    .line 705
    invoke-virtual/range {v24 .. v24}, Lleh;->u()V

    .line 706
    :cond_6f
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Llen;->a(Llej;)V

    .line 713
    :goto_d
    new-instance v4, Lleh;

    .line 34087
    move-object/from16 v0, v17

    iget-object v0, v0, Lleh;->c:Lleq;

    move-object/from16 v39, v0

    .line 713
    invoke-virtual/range {p2 .. p2}, Llen;->c()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-direct {v4, v0, v1}, Lleh;-><init>(Lleq;Ljava/lang/String;)V

    .line 714
    .local v4, "adopter":Lleh;
    invoke-virtual {v4}, Lleh;->r()Lled;

    move-result-object v39

    invoke-virtual/range {v17 .. v17}, Lleh;->r()Lled;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lled;->a(Lled;)V

    .line 34220
    move-object/from16 v0, v18

    iget-object v0, v0, Llej;->e:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v39

    .line 715
    invoke-virtual/range {v18 .. v18}, Lleh;->s()I

    move-result v40

    move/from16 v0, v40

    new-array v0, v0, [Llej;

    move-object/from16 v40, v0

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Llej;

    .line 716
    .local v11, "childNodes":[Llej;
    move-object v5, v11

    .local v5, "arr$":[Llej;
    array-length v0, v11

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_e
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_72

    aget-object v10, v5, v21

    .line 717
    .local v10, "childNode":Llej;
    invoke-virtual {v4, v10}, Lleh;->a(Llej;)Lleh;

    .line 716
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 33139
    .end local v4    # "adopter":Lleh;
    .end local v5    # "arr$":[Llej;
    .end local v10    # "childNode":Llej;
    .end local v11    # "childNodes":[Llej;
    .end local v21    # "i$":I
    .end local v25    # "len$":I
    :cond_70
    move-object/from16 v0, v24

    iget-object v0, v0, Lleh;->d:Llej;

    move-object/from16 v39, v0

    check-cast v39, Lleh;

    .line 708
    if-eqz v39, :cond_71

    .line 709
    invoke-virtual/range {v24 .. v24}, Lleh;->u()V

    .line 710
    :cond_71
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lleh;->a(Llej;)Lleh;

    goto :goto_d

    .line 719
    .restart local v4    # "adopter":Lleh;
    .restart local v5    # "arr$":[Llej;
    .restart local v11    # "childNodes":[Llej;
    .restart local v21    # "i$":I
    .restart local v25    # "len$":I
    :cond_72
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lleh;->a(Llej;)Lleh;

    .line 720
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llen;->h(Lleh;)V

    .line 722
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Llen;->d(Lleh;)Z

    .line 723
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Llen;->a(Lleh;Lleh;)V

    .line 637
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 725
    .end local v4    # "adopter":Lleh;
    .end local v5    # "arr$":[Llej;
    .end local v11    # "childNodes":[Llej;
    .end local v12    # "commonAncestor":Lleh;
    .end local v17    # "formatEl":Lleh;
    .end local v18    # "furthestBlock":Lleh;
    .end local v20    # "i":I
    .end local v21    # "i$":I
    .end local v23    # "j":I
    .end local v24    # "lastNode":Lleh;
    .end local v25    # "len$":I
    .end local v27    # "node":Lleh;
    .end local v33    # "seenFormattingElement":Z
    .end local v34    # "si":I
    .end local v35    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lleh;>;"
    .end local v36    # "stackSize":I
    :cond_73
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->h()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Llea;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_76

    .line 726
    const-string/jumbo v39, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_0

    .line 727
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_74

    .line 728
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 729
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 731
    :cond_74
    invoke-virtual/range {p2 .. p2}, Llen;->k()V

    .line 732
    invoke-virtual/range {p2 .. p2}, Llen;->p()Lleh;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lleh;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_75

    .line 733
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 734
    :cond_75
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Llen;->c(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Llen;->m()V

    goto/16 :goto_0

    .line 737
    :cond_76
    const-string/jumbo v39, "br"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_77

    .line 738
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Llen;->a(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 739
    const-string/jumbo v39, "br"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Llen;->l(Ljava/lang/String;)Z

    .line 740
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 742
    :cond_77
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Llen;)Z

    move-result v39

    goto/16 :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
