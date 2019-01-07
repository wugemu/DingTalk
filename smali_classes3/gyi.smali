.class public abstract Lgyi;
.super Ljava/lang/Object;
.source "FieldDeserializer.java"


# instance fields
.field public final b:Lgza;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected d:[Ljava/lang/Enum;

.field protected e:[J


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lgza;)V
    .locals 16
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
    .line 23
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lgyi;->c:Ljava/lang/Class;

    .line 25
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lgyi;->b:Lgza;

    .line 27
    if-nez p2, :cond_1

    .line 61
    :cond_0
    return-void

    .line 31
    :cond_1
    move-object/from16 v0, p2

    iget-object v5, v0, Lgza;->f:Ljava/lang/Class;

    .line 32
    .local v5, "fieldClass":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 33
    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Enum;

    move-object v4, v11

    check-cast v4, [Ljava/lang/Enum;

    .line 35
    .local v4, "enums":[Ljava/lang/Enum;
    array-length v11, v4

    new-array v3, v11, [J

    .line 36
    .local v3, "enumNameHashCodes":[J
    array-length v11, v4

    new-array v11, v11, [J

    move-object/from16 v0, p0

    iput-object v11, v0, Lgyi;->e:[J

    .line 37
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v11, v4

    if-ge v8, v11, :cond_3

    .line 38
    aget-object v11, v4, v8

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    .line 39
    .local v10, "name":Ljava/lang/String;
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 40
    .local v6, "hash":J
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_2

    .line 41
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 42
    .local v2, "ch":C
    int-to-long v12, v2

    xor-long/2addr v6, v12

    .line 43
    const-wide v12, 0x100000001b3L

    mul-long/2addr v6, v12

    .line 40
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 45
    .end local v2    # "ch":C
    :cond_2
    aput-wide v6, v3, v8

    .line 46
    move-object/from16 v0, p0

    iget-object v11, v0, Lgyi;->e:[J

    aput-wide v6, v11, v8

    .line 37
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 49
    .end local v6    # "hash":J
    .end local v9    # "j":I
    .end local v10    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lgyi;->e:[J

    invoke-static {v11}, Ljava/util/Arrays;->sort([J)V

    .line 51
    array-length v11, v4

    new-array v11, v11, [Ljava/lang/Enum;

    move-object/from16 v0, p0

    iput-object v11, v0, Lgyi;->d:[Ljava/lang/Enum;

    .line 52
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lgyi;->e:[J

    array-length v11, v11

    if-ge v8, v11, :cond_0

    .line 53
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_3
    array-length v11, v3

    if-ge v9, v11, :cond_4

    .line 54
    move-object/from16 v0, p0

    iget-object v11, v0, Lgyi;->e:[J

    aget-wide v12, v11, v8

    aget-wide v14, v3, v9

    cmp-long v11, v12, v14

    if-nez v11, :cond_5

    .line 55
    move-object/from16 v0, p0

    iget-object v11, v0, Lgyi;->d:[Ljava/lang/Enum;

    aget-object v12, v4, v9

    aput-object v12, v11, v8

    .line 52
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 53
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method


# virtual methods
.method public final a(J)Ljava/lang/Enum;
    .locals 3
    .param p1, "hashCode"    # J

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lgyi;->d:[Ljava/lang/Enum;

    if-nez v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :cond_1
    iget-object v2, p0, Lgyi;->e:[J

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 70
    .local v0, "enumIndex":I
    if-ltz v0, :cond_0

    .line 74
    iget-object v1, p0, Lgyi;->d:[Ljava/lang/Enum;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public abstract a(Lgxr;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
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
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 98
    if-nez p2, :cond_1

    .line 99
    iget-object v6, p0, Lgyi;->b:Lgza;

    iget-object v3, v6, Lgza;->f:Ljava/lang/Class;

    .line 100
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lgyi;->b:Lgza;

    iget-object v2, v6, Lgza;->c:Ljava/lang/reflect/Field;

    .line 106
    .local v2, "field":Ljava/lang/reflect/Field;
    iget-object v6, p0, Lgyi;->b:Lgza;

    iget-object v5, v6, Lgza;->b:Ljava/lang/reflect/Method;

    .line 108
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v6, p0, Lgyi;->b:Lgza;

    iget-boolean v6, v6, Lgza;->d:Z

    if-eqz v6, :cond_4

    .line 109
    iget-object v6, p0, Lgyi;->b:Lgza;

    iget-boolean v6, v6, Lgza;->i:Z

    if-eqz v6, :cond_3

    .line 110
    const-class v6, Ljava/util/Map;

    iget-object v7, p0, Lgyi;->b:Lgza;

    iget-object v7, v7, Lgza;->f:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 112
    .local v4, "map":Ljava/util/Map;
    if-eqz v4, :cond_0

    .line 113
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v4    # "map":Ljava/util/Map;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "set property error, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lgyi;->b:Lgza;

    iget-object v8, v8, Lgza;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 117
    .local v0, "collection":Ljava/util/Collection;
    if-eqz v0, :cond_0

    .line 118
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 122
    .end local v0    # "collection":Ljava/util/Collection;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v6, p0, Lgyi;->b:Lgza;

    iget-boolean v6, v6, Lgza;->i:Z

    if-eqz v6, :cond_6

    .line 126
    const-class v6, Ljava/util/Map;

    iget-object v7, p0, Lgyi;->b:Lgza;

    iget-object v7, v7, Lgza;->f:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 127
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 128
    .restart local v4    # "map":Ljava/util/Map;
    if-eqz v4, :cond_0

    .line 129
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 132
    .end local v4    # "map":Ljava/util/Map;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 133
    .restart local v0    # "collection":Ljava/util/Collection;
    if-eqz v0, :cond_0

    .line 134
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 138
    .end local v0    # "collection":Ljava/util/Collection;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
