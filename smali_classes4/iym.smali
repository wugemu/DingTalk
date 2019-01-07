.class public final Liym;
.super Ljava/lang/Object;
.source "Converter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "keyClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "valueClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "newMapObject":Ljava/util/Map;
    move-object v5, p2

    .line 125
    check-cast v5, Ljava/util/Map;

    .line 126
    .local v5, "origMapObject":Ljava/util/Map;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "object":Ljava/lang/Object;
    move-object v0, v4

    .line 127
    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    .local v0, "kv":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Liym;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, "newKey":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {p1, v7}, Liym;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    .local v3, "newValue":Ljava/lang/Object;
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    .end local v0    # "kv":Ljava/util/Map$Entry;
    .end local v1    # "newKey":Ljava/lang/Object;
    .end local v3    # "newValue":Ljava/lang/Object;
    .end local v4    # "object":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 49
    if-nez p1, :cond_1

    move-object p1, v1

    .line 2100
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p1

    .line 53
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 1136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1137
    new-instance v0, Lcom/laiwang/idl/msgpacklite/MessageException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "object not Array "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", need:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_3
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 1141
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move v1, v2

    .line 1142
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1143
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Liym;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1144
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_5
    const-class v0, Liyn;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    invoke-static {p0, p1}, Liym;->c(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_6
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_7

    .line 62
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    .line 63
    new-instance v0, Ljava/lang/String;

    check-cast p1, [B

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, [B

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_0

    .line 65
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_7
    const-class v0, Ljava/util/List;

    if-eq p0, v0, :cond_8

    const-class v0, Ljava/util/Map;

    if-ne p0, v0, :cond_9

    .line 66
    :cond_8
    new-instance v0, Lcom/laiwang/idl/msgpacklite/MessageException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "object can not be nest list & map:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2072
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2073
    if-eq v0, p0, :cond_0

    .line 2076
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2077
    check-cast v0, Ljava/lang/Number;

    .line 2078
    const-class v3, Ljava/lang/Integer;

    if-eq p0, v3, :cond_a

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_b

    .line 2079
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_0

    .line 2081
    :cond_b
    const-class v3, Ljava/lang/Long;

    if-eq p0, v3, :cond_c

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_d

    .line 2082
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto/16 :goto_0

    .line 2084
    :cond_d
    const-class v3, Ljava/lang/Short;

    if-eq p0, v3, :cond_e

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_f

    .line 2085
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_0

    .line 2087
    :cond_f
    const-class v3, Ljava/lang/Float;

    if-eq p0, v3, :cond_10

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_11

    .line 2088
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_0

    .line 2090
    :cond_11
    const-class v3, Ljava/lang/Double;

    if-eq p0, v3, :cond_12

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_13

    .line 2091
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_0

    .line 2093
    :cond_13
    const-class v3, Ljava/lang/Byte;

    if-eq p0, v3, :cond_14

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_15

    .line 2094
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto/16 :goto_0

    .line 2096
    :cond_15
    const-class v3, Ljava/util/Date;

    if-ne p0, v3, :cond_16

    .line 2097
    new-instance p1, Ljava/util/Date;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 2099
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2100
    const-string/jumbo v3, "get"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 28
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 30
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 31
    .local v2, "reader":Liyo;
    invoke-virtual {v2}, Liyo;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Liym;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 40
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 41
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 33
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 41
    :catch_2
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 40
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 41
    :catch_4
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 40
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 41
    :catch_6
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 40
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 43
    :goto_1
    throw v4

    .line 41
    :catch_7
    move-exception v1

    .line 42
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "t"    # Ljava/lang/reflect/Type;
    .param p1, "msgpackObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 199
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 200
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "t":Ljava/lang/reflect/Type;
    invoke-static {p0, p1}, Liym;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 210
    :goto_0
    return-object v3

    .line 202
    .restart local p0    # "t":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3

    move-object v0, p0

    .line 203
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 204
    .local v0, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 205
    .local v1, "raw":Ljava/lang/reflect/Type;
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 206
    check-cast v2, Ljava/lang/Class;

    .line 207
    .local v2, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/List;

    if-ne v2, v3, :cond_1

    .line 208
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Class;

    invoke-static {v3, p1}, Liym;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 209
    :cond_1
    const-class v3, Ljava/util/Map;

    if-ne v2, v3, :cond_2

    .line 210
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Class;

    .line 211
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Class;

    .line 210
    invoke-static {v3, v4, p1}, Liym;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 214
    .end local v2    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v3, Lcom/laiwang/idl/msgpacklite/MessageException;

    const-string/jumbo v4, "type can not be nest generic type"

    invoke-direct {v3, v4}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    .end local v0    # "pt":Ljava/lang/reflect/ParameterizedType;
    .end local v1    # "raw":Ljava/lang/reflect/Type;
    :cond_3
    new-instance v3, Lcom/laiwang/idl/msgpacklite/MessageException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "type forbbinden :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static a([Ljava/lang/reflect/Type;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "types"    # [Ljava/lang/reflect/Type;
    .param p1, "msgpackObjects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 189
    new-instance v2, Lcom/laiwang/idl/msgpacklite/MessageException;

    const-string/jumbo v3, "types num is not match values"

    invoke-direct {v2, v3}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 193
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Liym;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "componentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 108
    const/4 v3, 0x0

    .line 120
    :cond_0
    return-object v3

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    new-instance v4, Lcom/laiwang/idl/msgpacklite/MessageException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "object not Array "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", need:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 116
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 117
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Liym;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, "item":Ljava/lang/Object;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static c(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v13, 0x0

    .line 150
    instance-of v9, p1, Ljava/util/Map;

    if-nez v9, :cond_0

    .line 151
    new-instance v9, Lcom/laiwang/idl/msgpacklite/MessageException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "object not Map "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", need:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 154
    .local v6, "newObject":Ljava/lang/Object;
    invoke-static {p0}, Lizb;->a(Ljava/lang/Class;)Lizb$a;

    move-result-object v5

    .local v5, "meta":Lizb$a;
    move-object v8, p1

    .line 155
    check-cast v8, Ljava/util/Map;

    .line 156
    .local v8, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v9, v5, Lizb$a;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liyz;

    .line 157
    .local v2, "field":Liyz;
    iget v9, v2, Liyz;->b:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 158
    .local v4, "fieldValue":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 162
    iget-object v3, v2, Liyz;->c:Ljava/lang/Class;

    .line 163
    .local v3, "fieldClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Ljava/util/Map;

    if-ne v3, v9, :cond_2

    instance-of v9, v4, Ljava/util/Map;

    if-eqz v9, :cond_2

    .line 164
    iget-object v7, v2, Liyz;->d:Ljava/lang/reflect/Type;

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .line 165
    .local v7, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v9, v9, v13

    check-cast v9, Ljava/lang/Class;

    .line 166
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    const/4 v12, 0x1

    aget-object v10, v10, v12

    check-cast v10, Ljava/lang/Class;

    .line 165
    invoke-static {v9, v10, v4}, Liym;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 175
    .end local v7    # "pt":Ljava/lang/reflect/ParameterizedType;
    :goto_1
    :try_start_0
    move-object v0, v6

    check-cast v0, Liyn;

    move-object v9, v0

    iget v10, v2, Liyz;->b:I

    invoke-interface {v9, v10, v4}, Liyn;->decode(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "set feild fail:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-class v9, Ljava/util/List;

    if-ne v3, v9, :cond_3

    .line 168
    iget-object v7, v2, Liyz;->d:Ljava/lang/reflect/Type;

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .line 169
    .restart local v7    # "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v9, v9, v13

    check-cast v9, Ljava/lang/Class;

    invoke-static {v9, v4}, Liym;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 170
    goto :goto_1

    .line 171
    .end local v7    # "pt":Ljava/lang/reflect/ParameterizedType;
    :cond_3
    invoke-static {v3, v4}, Liym;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 183
    .end local v2    # "field":Liyz;
    .end local v3    # "fieldClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "fieldValue":Ljava/lang/Object;
    :cond_4
    return-object v6
.end method
