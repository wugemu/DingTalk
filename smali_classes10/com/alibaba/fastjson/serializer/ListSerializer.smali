.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lgys;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 22
    .param p1, "serializer"    # Lgyq;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    move-object/from16 v0, p1

    iget-object v14, v0, Lgyq;->b:Lgyy;

    .line 37
    .local v14, "out":Lgyy;
    iget v0, v14, Lgyy;->c:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_1

    const/16 v18, 0x1

    .line 39
    .local v18, "writeClassName":Z
    :goto_0
    const/4 v6, 0x0

    .line 40
    .local v6, "elementType":Ljava/lang/reflect/Type;
    if-eqz v18, :cond_0

    .line 41
    invoke-static/range {p4 .. p4}, Lgzd;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 44
    :cond_0
    if-nez p2, :cond_3

    .line 45
    iget v0, v14, Lgyy;->c:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_2

    .line 46
    const-string/jumbo v19, "[]"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lgyy;->write(Ljava/lang/String;)V

    .line 191
    :goto_1
    return-void

    .line 37
    .end local v6    # "elementType":Ljava/lang/reflect/Type;
    .end local v18    # "writeClassName":Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 1451
    .restart local v6    # "elementType":Ljava/lang/reflect/Type;
    .restart local v18    # "writeClassName":Z
    :cond_2
    const-string/jumbo v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v12, p2

    .line 53
    check-cast v12, Ljava/util/List;

    .line 54
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    .line 56
    .local v15, "size":I
    if-nez v15, :cond_4

    .line 57
    const-string/jumbo v19, "[]"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    goto :goto_1

    .line 61
    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lgyq;->l:Lgyv;

    .line 63
    .local v5, "context":Lgyv;
    iget v0, v14, Lgyy;->c:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-nez v19, :cond_6

    .line 64
    new-instance v19, Lgyv;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-direct {v0, v5, v1, v2, v3}, Lgyv;-><init>(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lgyq;->l:Lgyv;

    .line 65
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 66
    new-instance v19, Ljava/util/IdentityHashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lgyq;->k:Ljava/util/IdentityHashMap;

    .line 68
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->l:Lgyv;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_6
    :try_start_0
    iget v0, v14, Lgyy;->c:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_b

    .line 74
    const/16 v19, 0x5b

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lgyy;->write(I)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Lgyq;->c()V

    .line 77
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v15, :cond_a

    .line 78
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 79
    .local v8, "item":Ljava/lang/Object;
    if-eqz v7, :cond_7

    .line 80
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lgyy;->write(I)V

    .line 83
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lgyq;->e()V

    .line 84
    if-eqz v8, :cond_9

    .line 85
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 86
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lgyq;->a(Ljava/lang/Object;)V

    .line 77
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 88
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->a:Lgyw;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v10

    .line 89
    .local v10, "itemSerializer":Lgys;
    new-instance v9, Lgyv;

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-direct {v9, v5, v0, v1, v2}, Lgyv;-><init>(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 90
    .local v9, "itemContext":Lgyv;
    move-object/from16 v0, p1

    iput-object v9, v0, Lgyq;->l:Lgyv;

    .line 91
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v8, v1, v6}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 190
    .end local v7    # "i":I
    .end local v8    # "item":Ljava/lang/Object;
    .end local v9    # "itemContext":Lgyv;
    .end local v10    # "itemSerializer":Lgys;
    :catchall_0
    move-exception v19

    move-object/from16 v0, p1

    iput-object v5, v0, Lgyq;->l:Lgyv;

    .line 191
    throw v19

    .line 94
    .restart local v7    # "i":I
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_9
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->b:Lgyy;

    move-object/from16 v19, v0

    .line 2451
    const-string/jumbo v20, "null"

    invoke-virtual/range {v19 .. v20}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 98
    .end local v8    # "item":Ljava/lang/Object;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lgyq;->d()V

    .line 99
    invoke-virtual/range {p1 .. p1}, Lgyq;->e()V

    .line 100
    const/16 v19, 0x5d

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lgyy;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    move-object/from16 v0, p1

    iput-object v5, v0, Lgyq;->l:Lgyv;

    goto/16 :goto_1

    .line 106
    .end local v7    # "i":I
    :cond_b
    :try_start_2
    iget v0, v14, Lgyy;->b:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, 0x1

    .line 107
    .local v13, "newcount":I
    iget-object v0, v14, Lgyy;->a:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v13, v0, :cond_c

    .line 108
    iget-object v0, v14, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v19, v0

    if-nez v19, :cond_f

    .line 109
    invoke-virtual {v14, v13}, Lgyy;->a(I)V

    .line 115
    :cond_c
    :goto_4
    iget-object v0, v14, Lgyy;->a:[C

    move-object/from16 v19, v0

    iget v0, v14, Lgyy;->b:I

    move/from16 v20, v0

    const/16 v21, 0x5b

    aput-char v21, v19, v20

    .line 116
    iput v13, v14, Lgyy;->b:I

    .line 118
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_19

    .line 119
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 120
    .restart local v8    # "item":Ljava/lang/Object;
    if-eqz v7, :cond_e

    .line 123
    iget v0, v14, Lgyy;->b:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, 0x1

    .line 124
    iget-object v0, v14, Lgyy;->a:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v13, v0, :cond_d

    .line 125
    iget-object v0, v14, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v19, v0

    if-nez v19, :cond_10

    .line 126
    invoke-virtual {v14, v13}, Lgyy;->a(I)V

    .line 132
    :cond_d
    :goto_6
    iget-object v0, v14, Lgyy;->a:[C

    move-object/from16 v19, v0

    iget v0, v14, Lgyy;->b:I

    move/from16 v20, v0

    const/16 v21, 0x2c

    aput-char v21, v19, v20

    .line 133
    iput v13, v14, Lgyy;->b:I

    .line 137
    :cond_e
    if-nez v8, :cond_11

    .line 138
    const-string/jumbo v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    .line 118
    .end local v8    # "item":Ljava/lang/Object;
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 111
    .end local v7    # "i":I
    :cond_f
    invoke-virtual {v14}, Lgyy;->flush()V

    .line 112
    const/4 v13, 0x1

    goto :goto_4

    .line 128
    .restart local v7    # "i":I
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_10
    invoke-virtual {v14}, Lgyy;->flush()V

    .line 129
    const/4 v13, 0x1

    goto :goto_6

    .line 140
    :cond_11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 142
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_12

    .line 143
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "item":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lgyy;->b(I)V

    goto :goto_7

    .line 144
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_12
    const-class v19, Ljava/lang/Long;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_14

    .line 145
    check-cast v8, Ljava/lang/Long;

    .end local v8    # "item":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 146
    .local v16, "val":J
    if-eqz v18, :cond_13

    .line 147
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lgyy;->a(J)V

    .line 148
    const/16 v19, 0x4c

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lgyy;->write(I)V

    goto :goto_7

    .line 150
    :cond_13
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lgyy;->a(J)V

    goto :goto_7

    .line 152
    .end local v16    # "val":J
    .restart local v8    # "item":Ljava/lang/Object;
    :cond_14
    const-class v19, Ljava/lang/String;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_16

    .line 153
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 155
    .local v11, "itemStr":Ljava/lang/String;
    iget v0, v14, Lgyy;->c:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_15

    .line 156
    invoke-virtual {v14, v11}, Lgyy;->c(Ljava/lang/String;)V

    goto :goto_7

    .line 158
    :cond_15
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v11, v0, v1}, Lgyy;->a(Ljava/lang/String;CZ)V

    goto :goto_7

    .line 161
    .end local v11    # "itemStr":Ljava/lang/String;
    :cond_16
    iget v0, v14, Lgyy;->c:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-nez v19, :cond_17

    .line 162
    new-instance v9, Lgyv;

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-direct {v9, v5, v0, v1, v2}, Lgyv;-><init>(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 163
    .restart local v9    # "itemContext":Lgyv;
    move-object/from16 v0, p1

    iput-object v9, v0, Lgyq;->l:Lgyv;

    .line 166
    .end local v9    # "itemContext":Lgyv;
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lgyq;->a(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 169
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->a:Lgyw;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v10

    .line 170
    .restart local v10    # "itemSerializer":Lgys;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v8, v1, v6}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_7

    .line 177
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "item":Ljava/lang/Object;
    .end local v10    # "itemSerializer":Lgys;
    :cond_19
    iget v0, v14, Lgyy;->b:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, 0x1

    .line 178
    iget-object v0, v14, Lgyy;->a:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v13, v0, :cond_1a

    .line 179
    iget-object v0, v14, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v19, v0

    if-nez v19, :cond_1b

    .line 180
    invoke-virtual {v14, v13}, Lgyy;->a(I)V

    .line 186
    :cond_1a
    :goto_8
    iget-object v0, v14, Lgyy;->a:[C

    move-object/from16 v19, v0

    iget v0, v14, Lgyy;->b:I

    move/from16 v20, v0

    const/16 v21, 0x5d

    aput-char v21, v19, v20

    .line 187
    iput v13, v14, Lgyy;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    move-object/from16 v0, p1

    iput-object v5, v0, Lgyq;->l:Lgyv;

    goto/16 :goto_1

    .line 182
    :cond_1b
    :try_start_3
    invoke-virtual {v14}, Lgyy;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    const/4 v13, 0x1

    goto :goto_8
.end method
