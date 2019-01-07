.class final Lgxy;
.super Lgyi;
.source "ListTypeFieldDeserializer.java"


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private f:Lgyk;

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lgza;)V
    .locals 3
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
    .line 24
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lgyi;-><init>(Ljava/lang/Class;Lgza;)V

    .line 26
    iget-object v1, p2, Lgza;->g:Ljava/lang/reflect/Type;

    .line 27
    .local v1, "fieldType":Ljava/lang/reflect/Type;
    iget-object v0, p2, Lgza;->f:Ljava/lang/Class;

    .line 28
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lgxy;->a:Ljava/lang/reflect/Type;

    .line 30
    const/4 v2, 0x1

    iput-boolean v2, p0, Lgxy;->g:Z

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {v1}, Lgzd;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    iput-object v2, p0, Lgxy;->a:Ljava/lang/reflect/Type;

    .line 33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgxy;->g:Z

    goto :goto_0
.end method

.method private a(Lgxr;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 22
    .param p1, "parser"    # Lgxr;
    .param p2, "objectType"    # Ljava/lang/reflect/Type;
    .param p3, "array"    # Ljava/util/Collection;

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v9, v0, Lgxy;->a:Ljava/lang/reflect/Type;

    .line 83
    .local v9, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v10, v0, Lgxy;->f:Lgyk;

    .line 85
    .local v10, "itemTypeDeser":Lgyk;
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 86
    instance-of v0, v9, Ljava/lang/reflect/TypeVariable;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v18, v9

    .line 87
    check-cast v18, Ljava/lang/reflect/TypeVariable;

    .local v18, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v15, p2

    .line 88
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 90
    .local v15, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v13, 0x0

    .line 91
    .local v13, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 92
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    .end local v13    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v13, Ljava/lang/Class;

    .line 95
    .restart local v13    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v14, -0x1

    .line 96
    .local v14, "paramIndex":I
    if-eqz v13, :cond_1

    .line 97
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v13}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v17, v0

    .local v17, "size":I
    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 98
    invoke-virtual {v13}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v20

    aget-object v7, v20, v5

    .line 99
    .local v7, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 100
    move v14, v5

    .line 106
    .end local v5    # "i":I
    .end local v7    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v17    # "size":I
    :cond_1
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_2

    .line 107
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v20

    aget-object v9, v20, v14

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxy;->a:Ljava/lang/reflect/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 109
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v10

    .line 159
    .end local v13    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "paramIndex":I
    .end local v15    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v18    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lgxr;->e:Lgxt;

    .line 161
    .local v11, "lexer":Lgxt;
    if-nez v10, :cond_3

    .line 162
    move-object/from16 v0, p1

    iget-object v0, v0, Lgxr;->b:Lgyb;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lgyb;->a(Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v10

    .end local v10    # "itemTypeDeser":Lgyk;
    move-object/from16 v0, p0

    iput-object v10, v0, Lgxy;->f:Lgyk;

    .line 165
    .restart local v10    # "itemTypeDeser":Lgyk;
    :cond_3
    iget v0, v11, Lgxt;->a:I

    move/from16 v20, v0

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 166
    iget v0, v11, Lgxt;->a:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 167
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v9, v1}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 168
    .local v19, "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v19    # "val":Ljava/lang/Object;
    :goto_2
    return-void

    .line 97
    .end local v11    # "lexer":Lgxt;
    .restart local v5    # "i":I
    .restart local v7    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v13    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "paramIndex":I
    .restart local v15    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .restart local v17    # "size":I
    .restart local v18    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 112
    .end local v5    # "i":I
    .end local v7    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v13    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "paramIndex":I
    .end local v15    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v17    # "size":I
    .end local v18    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_5
    instance-of v0, v9, Ljava/lang/reflect/ParameterizedType;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v16, v9

    .line 113
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .line 114
    .local v16, "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 115
    .local v8, "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    array-length v0, v8

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v20, 0x0

    aget-object v20, v8, v20

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 116
    const/16 v20, 0x0

    aget-object v18, v8, v20

    check-cast v18, Ljava/lang/reflect/TypeVariable;

    .restart local v18    # "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v15, p2

    .line 117
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 119
    .restart local v15    # "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v13, 0x0

    .line 120
    .restart local v13    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 121
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    .end local v13    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v13, Ljava/lang/Class;

    .line 124
    .restart local v13    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const/4 v14, -0x1

    .line 125
    .restart local v14    # "paramIndex":I
    if-eqz v13, :cond_7

    .line 126
    const/4 v5, 0x0

    .restart local v5    # "i":I
    invoke-virtual {v13}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v17, v0

    .restart local v17    # "size":I
    :goto_3
    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    .line 127
    invoke-virtual {v13}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v20

    aget-object v7, v20, v5

    .line 128
    .restart local v7    # "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 129
    move v14, v5

    .line 136
    .end local v5    # "i":I
    .end local v7    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v17    # "size":I
    :cond_7
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_2

    .line 137
    const/16 v20, 0x0

    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v21

    aget-object v21, v21, v14

    aput-object v21, v8, v20

    .line 138
    new-instance v9, Lgzc;

    .end local v9    # "itemType":Ljava/lang/reflect/Type;
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v20

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v8, v0, v1}, Lgzc;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local v9    # "itemType":Ljava/lang/reflect/Type;
    goto/16 :goto_1

    .line 126
    .restart local v5    # "i":I
    .restart local v7    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v17    # "size":I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 142
    .end local v5    # "i":I
    .end local v7    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v8    # "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    .end local v13    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "paramIndex":I
    .end local v15    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v16    # "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    .end local v17    # "size":I
    .end local v18    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_9
    instance-of v0, v9, Ljava/lang/reflect/TypeVariable;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v12, p2

    .line 143
    check-cast v12, Ljava/lang/Class;

    .local v12, "objectClass":Ljava/lang/Class;
    move-object/from16 v18, v9

    .line 144
    check-cast v18, Ljava/lang/reflect/TypeVariable;

    .line 145
    .restart local v18    # "typeVar":Ljava/lang/reflect/TypeVariable;
    invoke-virtual {v12}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 147
    const/4 v5, 0x0

    .restart local v5    # "i":I
    invoke-virtual {v12}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v17, v0

    .restart local v17    # "size":I
    :goto_4
    move/from16 v0, v17

    if-ge v5, v0, :cond_2

    .line 148
    invoke-virtual {v12}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v20

    aget-object v7, v20, v5

    .line 149
    .restart local v7    # "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 150
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 151
    .local v2, "bounds":[Ljava/lang/reflect/Type;
    array-length v0, v2

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 152
    const/16 v20, 0x0

    aget-object v9, v2, v20

    goto/16 :goto_1

    .line 147
    .end local v2    # "bounds":[Ljava/lang/reflect/Type;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 171
    .end local v5    # "i":I
    .end local v7    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v12    # "objectClass":Ljava/lang/Class;
    .end local v17    # "size":I
    .end local v18    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .restart local v11    # "lexer":Lgxt;
    :cond_b
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "exepct \'[\', but "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v11, Lgxt;->a:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lgxu;->a(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_c

    .line 173
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", type : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_c
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 179
    .end local v4    # "errorMessage":Ljava/lang/String;
    :cond_d
    iget-char v3, v11, Lgxt;->d:C

    .line 180
    .local v3, "ch":I
    const/16 v20, 0x5b

    move/from16 v0, v20

    if-ne v3, v0, :cond_f

    .line 181
    iget v0, v11, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v6, v20, 0x1

    iput v6, v11, Lgxt;->e:I

    .line 182
    .local v6, "index":I
    iget v0, v11, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v6, v0, :cond_e

    const/16 v20, 0x1a

    .line 184
    :goto_5
    move/from16 v0, v20

    iput-char v0, v11, Lgxt;->d:C

    .line 185
    const/16 v20, 0xe

    move/from16 v0, v20

    iput v0, v11, Lgxt;->a:I

    .line 204
    .end local v6    # "index":I
    :goto_6
    const/4 v5, 0x0

    .line 205
    .restart local v5    # "i":I
    :goto_7
    iget v0, v11, Lgxt;->a:I

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 206
    invoke-virtual {v11}, Lgxt;->e()V

    goto :goto_7

    .line 182
    .end local v5    # "i":I
    .restart local v6    # "index":I
    :cond_e
    iget-object v0, v11, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 184
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    goto :goto_5

    .line 186
    .end local v6    # "index":I
    :cond_f
    const/16 v20, 0x7b

    move/from16 v0, v20

    if-ne v3, v0, :cond_11

    .line 187
    iget v0, v11, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v6, v20, 0x1

    iput v6, v11, Lgxt;->e:I

    .line 188
    .restart local v6    # "index":I
    iget v0, v11, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v6, v0, :cond_10

    const/16 v20, 0x1a

    .line 190
    :goto_8
    move/from16 v0, v20

    iput-char v0, v11, Lgxt;->d:C

    .line 191
    const/16 v20, 0xc

    move/from16 v0, v20

    iput v0, v11, Lgxt;->a:I

    goto :goto_6

    .line 188
    :cond_10
    iget-object v0, v11, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 190
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    goto :goto_8

    .line 192
    .end local v6    # "index":I
    :cond_11
    const/16 v20, 0x22

    move/from16 v0, v20

    if-ne v3, v0, :cond_12

    .line 193
    invoke-virtual {v11}, Lgxt;->h()V

    goto :goto_6

    .line 194
    :cond_12
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v3, v0, :cond_14

    .line 195
    iget v0, v11, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v6, v20, 0x1

    iput v6, v11, Lgxt;->e:I

    .line 196
    .restart local v6    # "index":I
    iget v0, v11, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v6, v0, :cond_13

    const/16 v20, 0x1a

    .line 198
    :goto_9
    move/from16 v0, v20

    iput-char v0, v11, Lgxt;->d:C

    .line 199
    const/16 v20, 0xf

    move/from16 v0, v20

    iput v0, v11, Lgxt;->a:I

    goto :goto_6

    .line 196
    :cond_13
    iget-object v0, v11, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 198
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    goto :goto_9

    .line 201
    .end local v6    # "index":I
    :cond_14
    invoke-virtual {v11}, Lgxt;->e()V

    goto/16 :goto_6

    .line 210
    .restart local v5    # "i":I
    :cond_15
    iget v0, v11, Lgxt;->a:I

    move/from16 v20, v0

    const/16 v21, 0xf

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1d

    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v9, v1}, Lgyk;->deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 215
    .restart local v19    # "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v0, p1

    iget v0, v0, Lgxr;->g:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 218
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/util/Collection;)V

    .line 221
    :cond_16
    iget v0, v11, Lgxt;->a:I

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 222
    iget-char v3, v11, Lgxt;->d:C

    .line 223
    const/16 v20, 0x5b

    move/from16 v0, v20

    if-ne v3, v0, :cond_19

    .line 224
    iget v0, v11, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v6, v20, 0x1

    iput v6, v11, Lgxt;->e:I

    .line 225
    .restart local v6    # "index":I
    iget v0, v11, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v6, v0, :cond_18

    const/16 v20, 0x1a

    .line 227
    :goto_a
    move/from16 v0, v20

    iput-char v0, v11, Lgxt;->d:C

    .line 228
    const/16 v20, 0xe

    move/from16 v0, v20

    iput v0, v11, Lgxt;->a:I

    .line 204
    .end local v6    # "index":I
    :cond_17
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 225
    .restart local v6    # "index":I
    :cond_18
    iget-object v0, v11, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 227
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    goto :goto_a

    .line 229
    .end local v6    # "index":I
    :cond_19
    const/16 v20, 0x7b

    move/from16 v0, v20

    if-ne v3, v0, :cond_1b

    .line 230
    iget v0, v11, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v6, v20, 0x1

    iput v6, v11, Lgxt;->e:I

    .line 231
    .restart local v6    # "index":I
    iget v0, v11, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v6, v0, :cond_1a

    const/16 v20, 0x1a

    .line 233
    :goto_c
    move/from16 v0, v20

    iput-char v0, v11, Lgxt;->d:C

    .line 234
    const/16 v20, 0xc

    move/from16 v0, v20

    iput v0, v11, Lgxt;->a:I

    goto :goto_b

    .line 231
    :cond_1a
    iget-object v0, v11, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 233
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    goto :goto_c

    .line 235
    .end local v6    # "index":I
    :cond_1b
    const/16 v20, 0x22

    move/from16 v0, v20

    if-ne v3, v0, :cond_1c

    .line 236
    invoke-virtual {v11}, Lgxt;->h()V

    goto :goto_b

    .line 238
    :cond_1c
    invoke-virtual {v11}, Lgxt;->e()V

    goto :goto_b

    .line 244
    .end local v19    # "val":Ljava/lang/Object;
    :cond_1d
    iget-char v0, v11, Lgxt;->d:C

    move/from16 v20, v0

    const/16 v21, 0x2c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    .line 245
    iget v0, v11, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v6, v20, 0x1

    iput v6, v11, Lgxt;->e:I

    .line 246
    .restart local v6    # "index":I
    iget v0, v11, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v6, v0, :cond_1e

    const/16 v20, 0x1a

    .line 248
    :goto_d
    move/from16 v0, v20

    iput-char v0, v11, Lgxt;->d:C

    .line 249
    const/16 v20, 0x10

    move/from16 v0, v20

    iput v0, v11, Lgxt;->a:I

    goto/16 :goto_2

    .line 246
    :cond_1e
    iget-object v0, v11, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 248
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    goto :goto_d

    .line 251
    .end local v6    # "index":I
    :cond_1f
    invoke-virtual {v11}, Lgxt;->e()V

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Lgxr;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 9
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

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 40
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p1, Lgxr;->e:Lgxt;

    .line 41
    .local v4, "lexer":Lgxt;
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v6

    .line 42
    .local v6, "token":I
    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 43
    invoke-virtual {v4}, Lgxt;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 44
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, p2, v7}, Lgxy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    iget-object v7, p1, Lgxr;->e:Lgxt;

    invoke-virtual {v7}, Lgxt;->e()V

    .line 78
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 51
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    iget-boolean v7, p0, Lgxy;->g:Z

    if-eqz v7, :cond_2

    .line 52
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    .end local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .restart local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v3

    .line 53
    .local v5, "list":Ljava/util/List;
    iget-object v7, p0, Lgxy;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    .line 58
    :goto_1
    iget-object v1, p1, Lgxr;->f:Lgya;

    .line 60
    .local v1, "context":Lgya;
    iget-object v7, p0, Lgxy;->b:Lgza;

    iget-object v7, v7, Lgza;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v7}, Lgxr;->a(Lgya;Ljava/lang/Object;Ljava/lang/Object;)Lgya;

    .line 61
    invoke-direct {p0, p1, p3, v5}, Lgxy;->a(Lgxr;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 62
    invoke-virtual {p1, v1}, Lgxr;->a(Lgya;)V

    .line 65
    iget-boolean v7, p0, Lgxy;->g:Z

    if-eqz v7, :cond_3

    .line 66
    iget-object v7, p0, Lgxy;->a:Ljava/lang/reflect/Type;

    check-cast v7, Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 67
    .local v0, "arrayValue":[Ljava/lang/Object;
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 68
    .local v2, "fieldValue":[Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 73
    .end local v0    # "arrayValue":[Ljava/lang/Object;
    .end local v2    # "fieldValue":[Ljava/lang/Object;
    :goto_2
    if-nez p2, :cond_4

    .line 74
    iget-object v7, p0, Lgxy;->b:Lgza;

    iget-object v7, v7, Lgza;->a:Ljava/lang/String;

    invoke-interface {p4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    .end local v1    # "context":Lgya;
    .end local v5    # "list":Ljava/util/List;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "list":Ljava/util/List;
    goto :goto_1

    .line 70
    .restart local v1    # "context":Lgya;
    :cond_3
    move-object v2, v5

    .local v2, "fieldValue":Ljava/util/List;
    goto :goto_2

    .line 76
    .end local v2    # "fieldValue":Ljava/util/List;
    :cond_4
    invoke-virtual {p0, p2, v2}, Lgxy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
