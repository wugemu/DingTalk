.class public final Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Ljava/lang/Object;
.source "MapSerializer.java"

# interfaces
.implements Lgys;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
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

    iget-object v13, v0, Lgyq;->b:Lgyy;

    .line 37
    .local v13, "out":Lgyy;
    if-nez p2, :cond_0

    .line 1451
    const-string/jumbo v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lgyy;->write(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    :cond_0
    move-object/from16 v10, p2

    .line 42
    check-cast v10, Ljava/util/Map;

    .line 43
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 44
    .local v12, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v19, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v19

    if-eq v12, v0, :cond_1

    const-class v19, Ljava/util/HashMap;

    move-object/from16 v0, v19

    if-eq v12, v0, :cond_1

    const-class v19, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v19

    if-ne v12, v0, :cond_4

    :cond_1
    const-string/jumbo v19, "@type"

    .line 45
    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/4 v5, 0x1

    .line 47
    .local v5, "containsKey":Z
    :goto_1
    iget v0, v13, Lgyy;->c:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_3

    .line 48
    instance-of v0, v10, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 49
    check-cast v10, Lcom/alibaba/fastjson/JSONObject;

    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v10

    .line 51
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_2
    instance-of v0, v10, Ljava/util/SortedMap;

    move/from16 v19, v0

    if-nez v19, :cond_3

    instance-of v0, v10, Ljava/util/LinkedHashMap;

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 53
    :try_start_0
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v10, v11

    .line 60
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 61
    invoke-virtual/range {p1 .. p2}, Lgyq;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    .end local v5    # "containsKey":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 65
    .restart local v5    # "containsKey":Z
    :cond_5
    move-object/from16 v0, p1

    iget-object v14, v0, Lgyq;->l:Lgyv;

    .line 66
    .local v14, "parent":Lgyv;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Lgyq;->a(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 68
    const/16 v19, 0x7b

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lgyy;->write(I)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Lgyq;->c()V

    .line 72
    const/4 v15, 0x0

    .line 73
    .local v15, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v16, 0x0

    .line 75
    .local v16, "preWriter":Lgys;
    const/4 v8, 0x1

    .line 77
    .local v8, "first":Z
    iget v0, v13, Lgyy;->c:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_6

    .line 78
    if-nez v5, :cond_6

    .line 79
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->a:Lgyw;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lgyw;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lgyy;->a(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lgyy;->b(Ljava/lang/String;)V

    .line 81
    const/4 v8, 0x0

    .line 85
    :cond_6
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_7
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 86
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    .line 88
    .local v18, "value":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 90
    .local v7, "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7}, Lgyq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 94
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2}, Lgyq;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 98
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v7, v2}, Lgyq;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 99
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v7, v2}, Lgyq;->a(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 101
    if-nez v18, :cond_8

    .line 102
    iget v0, v13, Lgyy;->c:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_7

    .line 107
    :cond_8
    instance-of v0, v7, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 108
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 110
    .local v9, "key":Ljava/lang/String;
    if-nez v8, :cond_9

    .line 111
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lgyy;->write(I)V

    .line 114
    :cond_9
    iget v0, v13, Lgyy;->c:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_a

    .line 115
    invoke-virtual/range {p1 .. p1}, Lgyq;->e()V

    .line 117
    :cond_a
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v9, v0}, Lgyy;->a(Ljava/lang/String;Z)V

    .line 133
    .end local v9    # "key":Ljava/lang/String;
    :goto_4
    const/4 v8, 0x0

    .line 135
    if-nez v18, :cond_e

    .line 2451
    const-string/jumbo v20, "null"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lgyy;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 152
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "entryKey":Ljava/lang/Object;
    .end local v8    # "first":Z
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "preWriter":Lgys;
    .end local v18    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v19

    move-object/from16 v0, p1

    iput-object v14, v0, Lgyq;->l:Lgyv;

    .line 153
    throw v19

    .line 119
    .restart local v6    # "entry":Ljava/util/Map$Entry;
    .restart local v7    # "entryKey":Ljava/lang/Object;
    .restart local v8    # "first":Z
    .restart local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "preWriter":Lgys;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_b
    if-nez v8, :cond_c

    .line 120
    const/16 v20, 0x2c

    :try_start_2
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lgyy;->write(I)V

    .line 123
    :cond_c
    iget v0, v13, Lgyy;->c:I

    move/from16 v20, v0

    sget-object v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_d

    instance-of v0, v7, Ljava/lang/Enum;

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 124
    invoke-static {v7}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, "strEntryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    .line 130
    .end local v17    # "strEntryKey":Ljava/lang/String;
    :goto_5
    const/16 v20, 0x3a

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lgyy;->write(I)V

    goto :goto_4

    .line 127
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lgyq;->b(Ljava/lang/Object;)V

    goto :goto_5

    .line 140
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 142
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v4, v15, :cond_f

    .line 143
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v7, v3}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_3

    .line 145
    :cond_f
    move-object v15, v4

    .line 146
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->a:Lgyw;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v16

    .line 148
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v7, v3}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 152
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "entryKey":Ljava/lang/Object;
    .end local v18    # "value":Ljava/lang/Object;
    :cond_10
    move-object/from16 v0, p1

    iput-object v14, v0, Lgyq;->l:Lgyv;

    .line 155
    invoke-virtual/range {p1 .. p1}, Lgyq;->d()V

    .line 156
    iget v0, v13, Lgyy;->c:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_11

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_11

    .line 157
    invoke-virtual/range {p1 .. p1}, Lgyq;->e()V

    .line 159
    :cond_11
    const/16 v19, 0x7d

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lgyy;->write(I)V

    goto/16 :goto_0

    .end local v8    # "first":Z
    .end local v14    # "parent":Lgyv;
    .end local v15    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "preWriter":Lgys;
    :catch_0
    move-exception v19

    goto/16 :goto_2
.end method
