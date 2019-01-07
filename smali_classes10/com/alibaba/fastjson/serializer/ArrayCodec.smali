.class public final Lcom/alibaba/fastjson/serializer/ArrayCodec;
.super Ljava/lang/Object;
.source "ArrayCodec.java"

# interfaces
.implements Lgyk;
.implements Lgys;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ArrayCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/alibaba/fastjson/serializer/ArrayCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ArrayCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ArrayCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private toObjectArray(Lgxr;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lgxr;
    .param p3, "array"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxr;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    .local p2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p3, :cond_0

    .line 176
    const/4 v2, 0x0

    .line 205
    :goto_0
    return-object v2

    .line 179
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 181
    .local v3, "size":I
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 182
    .local v2, "objArray":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 183
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 185
    .local v4, "value":Ljava/lang/Object;
    if-ne v4, p3, :cond_1

    .line 186
    invoke-static {v2, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 182
    .end local v4    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 192
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    move-object v0, v4

    .line 200
    .end local v4    # "value":Ljava/lang/Object;
    .local v0, "element":Ljava/lang/Object;
    :goto_3
    invoke-static {v2, v1, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 195
    .end local v0    # "element":Ljava/lang/Object;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v4}, Lcom/alibaba/fastjson/serializer/ArrayCodec;->toObjectArray(Lgxr;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "element":Ljava/lang/Object;
    goto :goto_3

    .line 198
    .end local v0    # "element":Ljava/lang/Object;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v5, p1, Lgxr;->b:Lgyb;

    invoke-static {v4, p2, v5}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "element":Ljava/lang/Object;
    goto :goto_3

    .line 203
    .end local v0    # "element":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method


# virtual methods
.method public final deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x4

    const/16 v9, 0x10

    .line 134
    iget-object v4, p1, Lgxr;->e:Lgxt;

    .line 136
    .local v4, "lexer":Lgxt;
    invoke-virtual {v4}, Lgxt;->a()I

    move-result v5

    .line 137
    .local v5, "token":I
    const/16 v8, 0x8

    if-ne v5, v8, :cond_0

    .line 138
    invoke-virtual {v4, v9}, Lgxt;->a(I)V

    .line 170
    :goto_0
    return-object v1

    .line 142
    :cond_0
    const-class v8, [C

    if-ne p2, v8, :cond_3

    .line 143
    if-ne v5, v10, :cond_1

    .line 144
    invoke-virtual {v4}, Lgxt;->k()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "val":Ljava/lang/String;
    invoke-virtual {v4, v9}, Lgxt;->a(I)V

    .line 146
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 149
    .end local v6    # "val":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    .line 150
    invoke-virtual {v4}, Lgxt;->f()Ljava/lang/Number;

    move-result-object v6

    .line 151
    .local v6, "val":Ljava/lang/Number;
    invoke-virtual {v4, v9}, Lgxt;->a(I)V

    .line 152
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 2362
    .end local v6    # "val":Ljava/lang/Number;
    :cond_2
    invoke-virtual {p1, v1}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 156
    .local v7, "value":Ljava/lang/Object;
    invoke-static {v7}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 159
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    if-ne v5, v10, :cond_4

    .line 160
    invoke-virtual {v4}, Lgxt;->j()[B

    move-result-object v1

    .line 161
    .local v1, "bytes":[B
    invoke-virtual {v4, v9}, Lgxt;->a(I)V

    goto :goto_0

    .end local v1    # "bytes":[B
    :cond_4
    move-object v2, p2

    .line 165
    check-cast v2, Ljava/lang/Class;

    .line 166
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 167
    .local v3, "componentClass":Ljava/lang/Class;
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 168
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1, v3, v0, p3}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0, p1, v3, v0}, Lcom/alibaba/fastjson/serializer/ArrayCodec;->toObjectArray(Lgxr;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 12
    .param p1, "serializer"    # Lgyq;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v6, p1, Lgyq;->b:Lgyy;

    .local v6, "out":Lgyy;
    move-object v10, p2

    .line 47
    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    .line 49
    .local v0, "array":[Ljava/lang/Object;
    if-nez p2, :cond_1

    .line 50
    iget v10, v6, Lgyy;->c:I

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v11, v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 51
    const-string/jumbo v10, "[]"

    invoke-virtual {v6, v10}, Lgyy;->write(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 1451
    :cond_0
    const-string/jumbo v10, "null"

    invoke-virtual {v6, v10}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    array-length v9, v0

    .line 60
    .local v9, "size":I
    add-int/lit8 v3, v9, -0x1

    .line 62
    .local v3, "end":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_2

    .line 63
    const-string/jumbo v10, "[]"

    invoke-virtual {v6, v10}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, p1, Lgyq;->l:Lgyv;

    .line 68
    .local v2, "context":Lgyv;
    const/4 v10, 0x0

    invoke-virtual {p1, v2, p2, p3, v10}, Lgyq;->a(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    const/4 v7, 0x0

    .line 72
    .local v7, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 73
    .local v8, "preWriter":Lgys;
    const/16 v10, 0x5b

    :try_start_0
    invoke-virtual {v6, v10}, Lgyy;->write(I)V

    .line 75
    iget v10, v6, Lgyy;->c:I

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v11, v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_5

    .line 76
    invoke-virtual {p1}, Lgyq;->c()V

    .line 77
    invoke-virtual {p1}, Lgyq;->e()V

    .line 78
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v9, :cond_4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    const/16 v10, 0x2c

    invoke-virtual {v6, v10}, Lgyy;->write(I)V

    .line 81
    invoke-virtual {p1}, Lgyq;->e()V

    .line 83
    :cond_3
    aget-object v10, v0, v4

    invoke-virtual {p1, v10}, Lgyq;->b(Ljava/lang/Object;)V

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {p1}, Lgyq;->d()V

    .line 86
    invoke-virtual {p1}, Lgyq;->e()V

    .line 87
    const/16 v10, 0x5d

    invoke-virtual {v6, v10}, Lgyy;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iput-object v2, p1, Lgyq;->l:Lgyv;

    goto :goto_0

    .line 91
    .end local v4    # "i":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v3, :cond_9

    .line 92
    :try_start_1
    aget-object v5, v0, v4

    .line 94
    .local v5, "item":Ljava/lang/Object;
    if-nez v5, :cond_6

    .line 95
    const-string/jumbo v10, "null,"

    invoke-virtual {v6, v10}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;

    .line 91
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 97
    :cond_6
    iget-object v10, p1, Lgyq;->k:Ljava/util/IdentityHashMap;

    if-eqz v10, :cond_7

    iget-object v10, p1, Lgyq;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, v5}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 98
    invoke-virtual {p1, v5}, Lgyq;->a(Ljava/lang/Object;)V

    .line 111
    :goto_4
    const/16 v10, 0x2c

    invoke-virtual {v6, v10}, Lgyy;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 128
    .end local v4    # "i":I
    .end local v5    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v10

    iput-object v2, p1, Lgyq;->l:Lgyv;

    .line 129
    throw v10

    .line 100
    .restart local v4    # "i":I
    .restart local v5    # "item":Ljava/lang/Object;
    :cond_7
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 102
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, v7, :cond_8

    .line 103
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v8, p1, v5, v10, v11}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    .line 105
    :cond_8
    move-object v7, v1

    .line 106
    iget-object v10, p1, Lgyq;->a:Lgyw;

    invoke-virtual {v10, v1}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v8

    .line 108
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v8, p1, v5, v10, v11}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    .line 115
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "item":Ljava/lang/Object;
    :cond_9
    aget-object v5, v0, v3

    .line 117
    .restart local v5    # "item":Ljava/lang/Object;
    if-nez v5, :cond_a

    .line 118
    const-string/jumbo v10, "null]"

    invoke-virtual {v6, v10}, Lgyy;->a(Ljava/lang/CharSequence;)Lgyy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :goto_5
    iput-object v2, p1, Lgyq;->l:Lgyv;

    goto/16 :goto_0

    .line 120
    :cond_a
    :try_start_3
    iget-object v10, p1, Lgyq;->k:Ljava/util/IdentityHashMap;

    if-eqz v10, :cond_b

    iget-object v10, p1, Lgyq;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, v5}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 121
    invoke-virtual {p1, v5}, Lgyq;->a(Ljava/lang/Object;)V

    .line 125
    :goto_6
    const/16 v10, 0x5d

    invoke-virtual {v6, v10}, Lgyy;->write(I)V

    goto :goto_5

    .line 123
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 2269
    const/4 v11, 0x0

    invoke-virtual {p1, v5, v10, v11}, Lgyq;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method
