.class public final Lgye;
.super Lgxv;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lgyb;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapping"    # Lgyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgyb;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lgxv;-><init>(Lgyb;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30
    .param p1, "parser"    # Lgxr;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxr;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 22
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->e:Lgxt;

    move-object/from16 v19, v0

    .line 24
    .local v19, "lexer":Lgxt;
    move-object/from16 v0, v19

    iget v0, v0, Lgxt;->a:I

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 25
    invoke-virtual/range {v19 .. v19}, Lgxt;->e()V

    .line 26
    const/4 v11, 0x0

    .line 174
    :cond_0
    return-object v11

    .line 29
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lgxr;->g:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 30
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p1

    iput v0, v1, Lgxr;->g:I

    .line 37
    :cond_2
    const/4 v4, 0x0

    .line 38
    .local v4, "cause":Ljava/lang/Throwable;
    const/4 v14, 0x0

    .line 40
    .local v14, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object/from16 v6, p2

    .line 41
    check-cast v6, Ljava/lang/Class;

    .line 42
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v25, Ljava/lang/Throwable;

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 43
    move-object v14, v6

    .line 47
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const/16 v20, 0x0

    .line 48
    .local v20, "message":Ljava/lang/String;
    const/16 v23, 0x0

    .line 49
    .local v23, "stackTrace":[Ljava/lang/StackTraceElement;
    const/16 v22, 0x0

    .line 53
    .local v22, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->a:Lgyd;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgxt;->a(Lgyd;)Ljava/lang/String;

    move-result-object v18

    .line 55
    .local v18, "key":Ljava/lang/String;
    if-nez v18, :cond_a

    .line 56
    move-object/from16 v0, v19

    iget v0, v0, Lgxt;->a:I

    move/from16 v25, v0

    const/16 v26, 0xd

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 57
    const/16 v25, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lgxt;->a(I)V

    .line 101
    :goto_0
    const/4 v11, 0x0

    .line 102
    .local v11, "ex":Ljava/lang/Throwable;
    if-nez v14, :cond_13

    .line 103
    new-instance v11, Ljava/lang/Exception;

    .end local v11    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, v20

    invoke-direct {v11, v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .restart local v11    # "ex":Ljava/lang/Throwable;
    :goto_1
    if-eqz v23, :cond_5

    .line 144
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 147
    :cond_5
    if-eqz v22, :cond_0

    .line 148
    const/4 v13, 0x0

    .line 150
    .local v13, "exBeanDeser":Lgxv;
    if-eqz v14, :cond_6

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lgye;->a:Ljava/lang/Class;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    if-ne v14, v0, :cond_1a

    .line 152
    move-object/from16 v13, p0

    .line 161
    :cond_6
    :goto_2
    if-eqz v13, :cond_0

    .line 162
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_7
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 163
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "key":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 164
    .restart local v18    # "key":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    .line 166
    .local v24, "value":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lgxv;->a(Ljava/lang/String;)Lgyi;

    move-result-object v17

    .line 167
    .local v17, "fieldDeserializer":Lgyi;
    if-eqz v17, :cond_7

    .line 168
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lgyi;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 32
    .end local v4    # "cause":Ljava/lang/Throwable;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v13    # "exBeanDeser":Lgxv;
    .end local v14    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "fieldDeserializer":Lgyi;
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "message":Ljava/lang/String;
    .end local v22    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v24    # "value":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, v19

    iget v0, v0, Lgxt;->a:I

    move/from16 v25, v0

    const/16 v26, 0xc

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 33
    new-instance v25, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v26, "syntax error"

    invoke-direct/range {v25 .. v26}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 60
    .restart local v4    # "cause":Ljava/lang/Throwable;
    .restart local v14    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v20    # "message":Ljava/lang/String;
    .restart local v22    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v23    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_9
    move-object/from16 v0, v19

    iget v0, v0, Lgxt;->a:I

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 65
    :cond_a
    const/16 v25, 0x3a

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lgxt;->a(C)V

    .line 67
    const-string/jumbo v25, "@type"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 68
    move-object/from16 v0, v19

    iget v0, v0, Lgxt;->a:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 69
    invoke-virtual/range {v19 .. v19}, Lgxt;->k()Ljava/lang/String;

    move-result-object v15

    .line 70
    .local v15, "exClassName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lgyb;->c:Ljava/lang/ClassLoader;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Lgzd;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v14

    .line 74
    const/16 v25, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lgxt;->a(I)V

    .line 95
    .end local v15    # "exClassName":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v19

    iget v0, v0, Lgxt;->a:I

    move/from16 v25, v0

    const/16 v26, 0xd

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 96
    const/16 v25, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lgxt;->a(I)V

    goto/16 :goto_0

    .line 72
    :cond_b
    new-instance v25, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v26, "syntax error"

    invoke-direct/range {v25 .. v26}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 75
    :cond_c
    const-string/jumbo v25, "message"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 76
    move-object/from16 v0, v19

    iget v0, v0, Lgxt;->a:I

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 77
    const/16 v20, 0x0

    .line 83
    :goto_5
    invoke-virtual/range {v19 .. v19}, Lgxt;->e()V

    goto :goto_4

    .line 78
    :cond_d
    move-object/from16 v0, v19

    iget v0, v0, Lgxt;->a:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 79
    invoke-virtual/range {v19 .. v19}, Lgxt;->k()Ljava/lang/String;

    move-result-object v20

    goto :goto_5

    .line 81
    :cond_e
    new-instance v25, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v26, "syntax error"

    invoke-direct/range {v25 .. v26}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 84
    :cond_f
    const-string/jumbo v25, "cause"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 85
    const/16 v25, 0x0

    const-string/jumbo v26, "cause"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgye;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cause":Ljava/lang/Throwable;
    check-cast v4, Ljava/lang/Throwable;

    .restart local v4    # "cause":Ljava/lang/Throwable;
    goto/16 :goto_4

    .line 86
    :cond_10
    const-string/jumbo v25, "stackTrace"

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 87
    const-class v25, [Ljava/lang/StackTraceElement;

    .line 1655
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 87
    .end local v23    # "stackTrace":[Ljava/lang/StackTraceElement;
    check-cast v23, [Ljava/lang/StackTraceElement;

    .restart local v23    # "stackTrace":[Ljava/lang/StackTraceElement;
    goto/16 :goto_4

    .line 89
    :cond_11
    if-nez v22, :cond_12

    .line 90
    new-instance v22, Ljava/util/HashMap;

    .end local v22    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 2362
    .restart local v22    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_12
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 92
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 106
    .restart local v11    # "ex":Ljava/lang/Throwable;
    :cond_13
    const/4 v8, 0x0

    .line 107
    .local v8, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v21, 0x0

    .line 108
    .local v21, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .line 109
    .local v5, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/16 v25, 0x0

    :goto_6
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    aget-object v7, v26, v25

    .line 110
    .local v7, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-nez v28, :cond_15

    .line 111
    move-object v8, v7

    .line 109
    :cond_14
    :goto_7
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 115
    :cond_15
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const-class v29, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 116
    move-object/from16 v21, v7

    .line 117
    goto :goto_7

    .line 120
    :cond_16
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const-class v29, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 121
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    const-class v29, Ljava/lang/Throwable;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 122
    move-object v5, v7

    goto :goto_7

    .line 127
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_17
    if-eqz v5, :cond_18

    .line 128
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v4, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/Throwable;

    move-object v11, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v11

    .line 135
    .end local v11    # "ex":Ljava/lang/Throwable;
    .local v12, "ex":Ljava/lang/Throwable;
    :goto_8
    if-nez v12, :cond_1b

    .line 136
    :try_start_1
    new-instance v11, Ljava/lang/Exception;

    move-object/from16 v0, v20

    invoke-direct {v11, v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v12    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_1

    .line 129
    :cond_18
    if-eqz v21, :cond_19

    .line 130
    const/16 v25, 0x1

    :try_start_2
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/Throwable;

    move-object v11, v0

    move-object v12, v11

    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "ex":Ljava/lang/Throwable;
    goto :goto_8

    .line 131
    .end local v12    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    :cond_19
    if-eqz v8, :cond_1c

    .line 132
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/Throwable;

    move-object v11, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v11

    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "ex":Ljava/lang/Throwable;
    goto :goto_8

    .line 138
    .end local v12    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v9

    .line 139
    .local v9, "e":Ljava/lang/Exception;
    :goto_9
    new-instance v25, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v26, "create instance error"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    .line 154
    .end local v5    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v21    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v13    # "exBeanDeser":Lgxv;
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v16

    .line 155
    .local v16, "exDeser":Lgyk;
    move-object/from16 v0, v16

    instance-of v0, v0, Lgxv;

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v13, v16

    .line 156
    check-cast v13, Lgxv;

    goto/16 :goto_2

    .line 138
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v13    # "exBeanDeser":Lgxv;
    .end local v16    # "exDeser":Lgyk;
    .restart local v5    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v12    # "ex":Ljava/lang/Throwable;
    .restart local v21    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v9

    move-object v11, v12

    .end local v12    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    goto :goto_9

    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "ex":Ljava/lang/Throwable;
    :cond_1b
    move-object v11, v12

    .end local v12    # "ex":Ljava/lang/Throwable;
    .restart local v11    # "ex":Ljava/lang/Throwable;
    goto/16 :goto_1

    :cond_1c
    move-object v12, v11

    .end local v11    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "ex":Ljava/lang/Throwable;
    goto :goto_8
.end method
