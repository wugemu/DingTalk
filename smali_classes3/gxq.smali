.class public final Lgxq;
.super Lgyi;
.source "DefaultFieldDeserializer.java"


# instance fields
.field protected a:Lgyk;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lgza;)V
    .locals 0
    .param p2, "fieldInfo"    # Lgza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lgza;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lgyi;-><init>(Ljava/lang/Class;Lgza;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lgyb;)Lgyk;
    .locals 2
    .param p1, "config"    # Lgyb;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 25
    iget-object v0, p0, Lgxq;->a:Lgyk;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lgxq;->b:Lgza;

    iget-object v0, v0, Lgza;->f:Ljava/lang/Class;

    iget-object v1, p0, Lgxq;->b:Lgza;

    iget-object v1, v1, Lgza;->g:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, v1}, Lgyb;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v0

    iput-object v0, p0, Lgxq;->a:Lgyk;

    .line 29
    :cond_0
    iget-object v0, p0, Lgxq;->a:Lgyk;

    return-object v0
.end method

.method public final a(Lgxr;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 18
    .param p1, "parser"    # Lgxr;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgxr;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxq;->a:Lgyk;

    if-nez v15, :cond_0

    .line 35
    move-object/from16 v0, p1

    iget-object v15, v0, Lgxr;->b:Lgyb;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxq;->b:Lgza;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgza;->f:Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxq;->b:Lgza;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgza;->g:Ljava/lang/reflect/Type;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lgyb;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lgxq;->a:Lgyk;

    .line 38
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxq;->b:Lgza;

    iget-object v6, v15, Lgza;->g:Ljava/lang/reflect/Type;

    .line 39
    .local v6, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p3

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_2

    .line 40
    move-object/from16 v0, p1

    iget-object v8, v0, Lgxr;->f:Lgya;

    .line 42
    .local v8, "objContext":Lgya;
    if-eqz v8, :cond_1

    .line 43
    move-object/from16 v0, p3

    iput-object v0, v8, Lgya;->d:Ljava/lang/reflect/Type;

    .line 46
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxq;->c:Ljava/lang/Class;

    move-object/from16 v0, p3

    invoke-static {v15, v0, v6}, Lgza;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 47
    move-object/from16 v0, p1

    iget-object v15, v0, Lgxr;->b:Lgyb;

    invoke-virtual {v15, v6}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lgxq;->a:Lgyk;

    .line 50
    .end local v8    # "objContext":Lgya;
    :cond_2
    instance-of v15, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_3

    move-object/from16 v0, p3

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_3

    move-object v5, v6

    .line 52
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .local v5, "fieldParamType":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v9, p3

    .line 53
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    .line 55
    .local v9, "objectParamType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 58
    .local v2, "args":[Ljava/lang/reflect/Type;
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 59
    .local v11, "rawType":Ljava/lang/reflect/Type;
    instance-of v15, v11, Ljava/lang/Class;

    if-eqz v15, :cond_3

    move-object v10, v11

    .line 60
    check-cast v10, Ljava/lang/Class;

    .line 61
    .local v10, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v13

    .line 62
    .local v13, "typeParameters":[Ljava/lang/reflect/TypeVariable;
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-static {v2, v13, v15}, Lgzd;->a([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v3

    .line 63
    .local v3, "changed":Z
    if-eqz v3, :cond_3

    .line 64
    new-instance v6, Lgzc;

    .end local v6    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v2, v15, v0}, Lgzc;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 68
    .end local v2    # "args":[Ljava/lang/reflect/Type;
    .end local v3    # "changed":Z
    .end local v5    # "fieldParamType":Ljava/lang/reflect/ParameterizedType;
    .end local v9    # "objectParamType":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "rawType":Ljava/lang/reflect/Type;
    .end local v13    # "typeParameters":[Ljava/lang/reflect/TypeVariable;
    .restart local v6    # "fieldType":Ljava/lang/reflect/Type;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxq;->b:Lgza;

    iget-object v7, v15, Lgza;->k:Ljava/lang/String;

    .line 70
    .local v7, "format":Ljava/lang/String;
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lgxq;->a:Lgyk;

    instance-of v15, v15, Lcom/alibaba/fastjson/serializer/DateCodec;

    if-eqz v15, :cond_5

    .line 71
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxq;->a:Lgyk;

    check-cast v15, Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxq;->b:Lgza;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgza;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v6, v1, v7}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 75
    .local v14, "value":Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p1

    iget v15, v0, Lgxr;->g:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 76
    invoke-virtual/range {p1 .. p1}, Lgxr;->a()Lgxr$a;

    move-result-object v12

    .line 77
    .local v12, "task":Lgxr$a;
    move-object/from16 v0, p0

    iput-object v0, v12, Lgxr$a;->c:Lgyi;

    .line 78
    move-object/from16 v0, p1

    iget-object v15, v0, Lgxr;->f:Lgya;

    iput-object v15, v12, Lgxr$a;->d:Lgya;

    .line 79
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lgxr;->g:I

    .line 97
    .end local v12    # "task":Lgxr$a;
    :cond_4
    :goto_1
    return-void

    .line 73
    .end local v14    # "value":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxq;->a:Lgyk;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxq;->b:Lgza;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgza;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v15, v0, v6, v1}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 81
    :cond_6
    if-nez p2, :cond_7

    .line 82
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxq;->b:Lgza;

    iget-object v15, v15, Lgza;->a:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 84
    :cond_7
    if-nez v14, :cond_8

    .line 85
    move-object/from16 v0, p0

    iget-object v15, v0, Lgxq;->b:Lgza;

    iget-object v4, v15, Lgza;->f:Ljava/lang/Class;

    .line 86
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v4, v15, :cond_4

    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v4, v15, :cond_4

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v15, :cond_4

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v15, :cond_4

    .line 94
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lgxq;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
