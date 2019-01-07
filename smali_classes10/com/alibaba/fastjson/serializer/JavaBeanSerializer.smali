.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lgys;


# static fields
.field private static final false_chars:[C

.field private static final true_chars:[C


# instance fields
.field public features:I

.field private final getters:[Lgyo;

.field private final sortedGetters:[Lgyo;

.field protected final typeKey:Ljava/lang/String;

.field protected final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    return-void

    .line 34
    .line 35
    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 23
    .param p2, "classModifiers"    # I
    .param p4, "fieldOnly"    # Z
    .param p5, "jsonTypeSupport"    # Z
    .param p6, "jsonFieldSupport"    # Z
    .param p7, "fieldGenericSupport"    # Z
    .param p8, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 86
    if-eqz p5, :cond_2

    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 87
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v5, v2

    .line 90
    .local v5, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_0
    const/16 v21, 0x0

    .local v21, "typeName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 91
    .local v20, "typeKey":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 92
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 94
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v21

    .line 95
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 96
    const/16 v21, 0x0

    .line 126
    :cond_0
    :goto_1
    if-nez p8, :cond_1

    .line 127
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v22

    .line 128
    .local v22, "typeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    sget-object v2, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_1

    .line 129
    move-object/from16 p8, v22

    .line 133
    .end local v22    # "typeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    .line 134
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    .line 137
    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lgzd;->a(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v13

    .line 146
    .local v13, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lgza;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v14, "getterList":Ljava/util/List;, "Ljava/util/List<Lgyo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgza;

    .line 149
    .local v12, "fieldInfo":Lgza;
    new-instance v11, Lgyo;

    invoke-direct {v11, v12}, Lgyo;-><init>(Lgza;)V

    .line 151
    .local v11, "fieldDeser":Lgyo;
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    .end local v5    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v11    # "fieldDeser":Lgyo;
    .end local v12    # "fieldInfo":Lgza;
    .end local v13    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lgza;>;"
    .end local v14    # "getterList":Ljava/util/List;, "Ljava/util/List<Lgyo;>;"
    .end local v20    # "typeKey":Ljava/lang/String;
    .end local v21    # "typeName":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 98
    .restart local v5    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v20    # "typeKey":Ljava/lang/String;
    .restart local v21    # "typeName":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    .line 99
    .local v19, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v19, :cond_4

    const-class v2, Ljava/lang/Object;

    move-object/from16 v0, v19

    if-eq v0, v2, :cond_4

    .line 101
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 102
    .local v18, "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v18, :cond_4

    .line 106
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v20

    .line 107
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 100
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    goto :goto_3

    .line 112
    .end local v18    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_6

    aget-object v15, v3, v2

    .line 113
    .local v15, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v15, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 114
    .restart local v18    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v18, :cond_5

    .line 115
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v20

    .line 116
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 112
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 121
    .end local v15    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_6
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 122
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 154
    .end local v19    # "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lgza;>;"
    .restart local v14    # "getterList":Ljava/util/List;, "Ljava/util/List<Lgyo;>;"
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lgyo;

    invoke-interface {v14, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lgyo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lgyo;

    .line 157
    const/16 v16, 0x0

    .line 159
    .local v16, "orders":[Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 160
    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v16

    .line 163
    :cond_8
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    array-length v2, v0

    if-eqz v2, :cond_a

    .line 164
    const/4 v7, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lgzd;->a(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v13

    .line 173
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "getterList":Ljava/util/List;, "Ljava/util/List<Lgyo;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .restart local v14    # "getterList":Ljava/util/List;, "Ljava/util/List<Lgyo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgza;

    .line 176
    .restart local v12    # "fieldInfo":Lgza;
    new-instance v11, Lgyo;

    invoke-direct {v11, v12}, Lgyo;-><init>(Lgza;)V

    .line 177
    .restart local v11    # "fieldDeser":Lgyo;
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 180
    .end local v11    # "fieldDeser":Lgyo;
    .end local v12    # "fieldInfo":Lgza;
    :cond_9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lgyo;

    invoke-interface {v14, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lgyo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lgyo;

    .line 192
    :goto_6
    return-void

    .line 182
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lgyo;

    array-length v2, v2

    new-array v0, v2, [Lgyo;

    move-object/from16 v17, v0

    .line 183
    .local v17, "sortedGetters":[Lgyo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lgyo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lgyo;

    array-length v6, v6

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lgyo;

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lgyo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lgyo;

    goto :goto_6

    .line 189
    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lgyo;

    goto :goto_6
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 9
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, v5

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 52
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 9
    .param p2, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 56
    return-void
.end method

.method private static varargs map([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 61
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 700
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lgyo;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 702
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lgyo;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 703
    .local v0, "getter":Lgyo;
    iget-object v5, v0, Lgyo;->a:Lgza;

    iget-object v5, v5, Lgza;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lgyo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    .end local v0    # "getter":Lgyo;
    :cond_0
    return-object v1
.end method

.method public write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 72
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
    .line 195
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->b:Lgyy;

    move-object/from16 v44, v0

    .line 197
    .local v44, "out":Lgyy;
    if-nez p2, :cond_0

    .line 1451
    const-string/jumbo v68, "null"

    move-object/from16 v0, v44

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    .line 696
    :goto_0
    return-void

    .line 202
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->l:Lgyv;

    move-object/from16 v68, v0

    if-eqz v68, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->l:Lgyv;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Lgyv;->d:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-nez v68, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v68, v0

    if-eqz v68, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v68, v0

    .line 205
    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v68

    if-eqz v68, :cond_2

    .line 206
    invoke-virtual/range {p1 .. p2}, Lgyq;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_2
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_b

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lgyo;

    move-object/from16 v28, v0

    .line 218
    .local v28, "getters":[Lgyo;
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->l:Lgyv;

    move-object/from16 v45, v0

    .line 220
    .local v45, "parent":Lgyv;
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-nez v68, :cond_4

    .line 221
    new-instance v68, Lgyv;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v69, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v45

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v69

    invoke-direct {v0, v1, v2, v3, v4}, Lgyv;-><init>(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v68

    move-object/from16 v1, p1

    iput-object v0, v1, Lgyq;->l:Lgyv;

    .line 222
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v68, v0

    if-nez v68, :cond_3

    .line 223
    new-instance v68, Ljava/util/IdentityHashMap;

    invoke-direct/range {v68 .. v68}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, v68

    move-object/from16 v1, p1

    iput-object v0, v1, Lgyq;->k:Ljava/util/IdentityHashMap;

    .line 225
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->k:Ljava/util/IdentityHashMap;

    move-object/from16 v68, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->l:Lgyv;

    move-object/from16 v69, v0

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-nez v68, :cond_5

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_c

    :cond_5
    const/16 v66, 0x1

    .line 234
    .local v66, "writeAsArray":Z
    :goto_2
    if-eqz v66, :cond_d

    const/16 v59, 0x5b

    .line 235
    .local v59, "startSeperator":C
    :goto_3
    if-eqz v66, :cond_e

    const/16 v18, 0x5d

    .line 238
    .local v18, "endSeperator":C
    :goto_4
    :try_start_0
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v68, v0

    add-int/lit8 v39, v68, 0x1

    .line 239
    .local v39, "newcount":I
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    move/from16 v0, v39

    move/from16 v1, v68

    if-le v0, v1, :cond_6

    .line 240
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v68, v0

    if-nez v68, :cond_f

    .line 241
    move-object/from16 v0, v44

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgyy;->a(I)V

    .line 247
    :cond_6
    :goto_5
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v69, v0

    aput-char v59, v68, v69

    .line 248
    move/from16 v0, v39

    move-object/from16 v1, v44

    iput v0, v1, Lgyy;->b:I

    .line 251
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v68, v0

    if-lez v68, :cond_7

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_7

    .line 253
    invoke-virtual/range {p1 .. p1}, Lgyq;->c()V

    .line 254
    invoke-virtual/range {p1 .. p1}, Lgyq;->e()V

    .line 257
    :cond_7
    const/4 v13, 0x0

    .line 260
    .local v13, "commaFlag":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-nez v68, :cond_8

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_10

    if-nez p4, :cond_8

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->l:Lgyv;

    move-object/from16 v68, v0

    if-eqz v68, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->l:Lgyv;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget-object v0, v0, Lgyv;->a:Lgyv;

    move-object/from16 v68, v0

    if-eqz v68, :cond_10

    :cond_8
    const/16 v30, 0x1

    .line 266
    .local v30, "isWriteClassName":Z
    :goto_6
    if-eqz v30, :cond_a

    .line 267
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v41

    .line 268
    .local v41, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v41

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_a

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    move-object/from16 v68, v0

    if-eqz v68, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    move-object/from16 v68, v0

    :goto_7
    const/16 v69, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v68

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lgyy;->a(Ljava/lang/String;Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 271
    .local v60, "typeName":Ljava/lang/String;
    if-nez v60, :cond_9

    .line 272
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v60

    .line 274
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lgyq;->a(Ljava/lang/String;)V

    .line 275
    const/4 v13, 0x1

    .line 279
    .end local v41    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v60    # "typeName":Ljava/lang/String;
    :cond_a
    if-eqz v13, :cond_12

    const/16 v56, 0x2c

    .line 281
    .local v56, "seperator":C
    :goto_8
    move/from16 v38, v56

    .line 282
    .local v38, "newSeperator":C
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->c:Ljava/util/List;

    move-object/from16 v68, v0

    if-eqz v68, :cond_13

    .line 283
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->c:Ljava/util/List;

    move-object/from16 v68, v0

    invoke-interface/range {v68 .. v68}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v69

    :goto_9
    invoke-interface/range {v69 .. v69}, Ljava/util/Iterator;->hasNext()Z

    move-result v68

    if-eqz v68, :cond_13

    invoke-interface/range {v69 .. v69}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgyn;

    .line 2011
    .local v10, "beforeFilter":Lgyn;
    sget-object v68, Lgyn;->a:Ljava/lang/ThreadLocal;

    move-object/from16 v0, v68

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2012
    sget-object v68, Lgyn;->b:Ljava/lang/ThreadLocal;

    invoke-static/range {v38 .. v38}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v70

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2014
    sget-object v68, Lgyn;->a:Ljava/lang/ThreadLocal;

    const/16 v70, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2015
    sget-object v68, Lgyn;->b:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v68 .. v68}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/Character;

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v38

    .line 285
    goto :goto_9

    .line 215
    .end local v10    # "beforeFilter":Lgyn;
    .end local v13    # "commaFlag":Z
    .end local v18    # "endSeperator":C
    .end local v28    # "getters":[Lgyo;
    .end local v30    # "isWriteClassName":Z
    .end local v38    # "newSeperator":C
    .end local v39    # "newcount":I
    .end local v45    # "parent":Lgyv;
    .end local v56    # "seperator":C
    .end local v59    # "startSeperator":C
    .end local v66    # "writeAsArray":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lgyo;

    move-object/from16 v28, v0

    .restart local v28    # "getters":[Lgyo;
    goto/16 :goto_1

    .line 230
    .restart local v45    # "parent":Lgyv;
    :cond_c
    const/16 v66, 0x0

    goto/16 :goto_2

    .line 234
    .restart local v66    # "writeAsArray":Z
    :cond_d
    const/16 v59, 0x7b

    goto/16 :goto_3

    .line 235
    .restart local v59    # "startSeperator":C
    :cond_e
    const/16 v18, 0x7d

    goto/16 :goto_4

    .line 243
    .restart local v18    # "endSeperator":C
    .restart local v39    # "newcount":I
    :cond_f
    :try_start_1
    invoke-virtual/range {v44 .. v44}, Lgyy;->flush()V

    .line 244
    const/16 v39, 0x1

    goto/16 :goto_5

    .line 260
    .restart local v13    # "commaFlag":Z
    :cond_10
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 269
    .restart local v30    # "isWriteClassName":Z
    .restart local v41    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->a:Lgyw;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget-object v0, v0, Lgyw;->b:Ljava/lang/String;

    move-object/from16 v68, v0

    goto/16 :goto_7

    .line 279
    .end local v41    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    const/16 v56, 0x0

    goto/16 :goto_8

    .line 287
    .restart local v38    # "newSeperator":C
    .restart local v56    # "seperator":C
    :cond_13
    const/16 v68, 0x2c

    move/from16 v0, v38

    move/from16 v1, v68

    if-ne v0, v1, :cond_1b

    const/4 v13, 0x1

    .line 289
    :goto_a
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_1c

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-nez v68, :cond_1c

    const/4 v15, 0x1

    .line 291
    .local v15, "directWritePrefix":Z
    :goto_b
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_1d

    const/16 v61, 0x1

    .line 292
    .local v61, "useSingleQuote":Z
    :goto_c
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_1e

    const/16 v40, 0x1

    .line 294
    .local v40, "notWriteDefaultValue":Z
    :goto_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->e:Ljava/util/List;

    move-object/from16 v47, v0

    .line 295
    .local v47, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lgyt;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->g:Ljava/util/List;

    move-object/from16 v37, v0

    .line 296
    .local v37, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lgyr;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->f:Ljava/util/List;

    move-object/from16 v64, v0

    .line 297
    .local v64, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lgyz;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->h:Ljava/util/List;

    move-object/from16 v26, v0

    .line 299
    .local v26, "filters":Ljava/util/List;, "Ljava/util/List<Lgyu;>;"
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_e
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v68, v0

    move/from16 v0, v29

    move/from16 v1, v68

    if-ge v0, v1, :cond_63

    .line 300
    aget-object v24, v28, v29

    .line 301
    .local v24, "fieldSerializer":Lgyo;
    move-object/from16 v0, v24

    iget-object v0, v0, Lgyo;->a:Lgza;

    move-object/from16 v22, v0

    .line 302
    .local v22, "fieldInfo":Lgza;
    move-object/from16 v0, v22

    iget-object v0, v0, Lgza;->f:Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 303
    .local v21, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v22

    iget-object v0, v0, Lgza;->a:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 304
    .local v23, "fieldInfoName":Ljava/lang/String;
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_14

    .line 305
    move-object/from16 v0, v22

    iget-object v0, v0, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v20, v0

    .line 306
    .local v20, "field":Ljava/lang/reflect/Field;
    if-eqz v20, :cond_14

    .line 307
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lgza;->e:Z

    move/from16 v68, v0

    if-nez v68, :cond_36

    .line 313
    .end local v20    # "field":Ljava/lang/reflect/Field;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    move-object/from16 v68, v0

    if-eqz v68, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v68

    if-nez v68, :cond_36

    .line 317
    :cond_15
    const/4 v9, 0x1

    .line 319
    .local v9, "applyName":Z
    if-eqz v26, :cond_17

    .line 320
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v68

    :cond_16
    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_17

    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lgyu;

    .line 321
    .local v25, "filter":Lgyu;
    invoke-interface/range {v25 .. v25}, Lgyu;->a()Z

    move-result v69

    if-nez v69, :cond_16

    .line 322
    const/4 v9, 0x0

    .line 328
    .end local v25    # "filter":Lgyu;
    :cond_17
    if-eqz v9, :cond_36

    .line 332
    const/16 v48, 0x0

    .line 333
    .local v48, "propertyValue":Ljava/lang/Object;
    const/16 v51, 0x0

    .line 334
    .local v51, "propertyValueInt":I
    const-wide/16 v52, 0x0

    .line 335
    .local v52, "propertyValueLong":J
    const/16 v49, 0x0

    .line 337
    .local v49, "propertyValueBoolean":Z
    const/16 v50, 0x0

    .line 338
    .local v50, "propertyValueGot":Z
    const/16 v65, 0x0

    .line 339
    .local v65, "valueGot":Z
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lgza;->d:Z

    move/from16 v68, v0

    if-eqz v68, :cond_22

    .line 340
    sget-object v68, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_1f

    .line 341
    move-object/from16 v0, v22

    iget-object v0, v0, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v51

    .line 342
    const/16 v65, 0x1

    .line 358
    .end local v48    # "propertyValue":Ljava/lang/Object;
    :goto_f
    const/4 v8, 0x1

    .line 360
    .local v8, "apply":Z
    if-eqz v47, :cond_6b

    .line 361
    if-eqz v65, :cond_6a

    .line 362
    sget-object v68, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_23

    .line 363
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 364
    .local v48, "propertyValue":Ljava/lang/Integer;
    const/16 v50, 0x1

    move-object/from16 v43, v48

    .line 374
    .end local v48    # "propertyValue":Ljava/lang/Integer;
    :goto_10
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v68

    :cond_18
    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_19

    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lgyt;

    .line 375
    .local v46, "propertyFilter":Lgyt;
    invoke-interface/range {v46 .. v46}, Lgyt;->a()Z

    move-result v69

    if-nez v69, :cond_18

    .line 376
    const/4 v8, 0x0

    .line 383
    .end local v46    # "propertyFilter":Lgyt;
    :cond_19
    :goto_11
    if-eqz v8, :cond_36

    .line 387
    move-object/from16 v32, v23

    .line 389
    .local v32, "key":Ljava/lang/String;
    if-eqz v37, :cond_27

    .line 390
    if-eqz v65, :cond_1a

    if-nez v50, :cond_1a

    .line 391
    sget-object v68, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_25

    .line 392
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 393
    .restart local v48    # "propertyValue":Ljava/lang/Integer;
    const/16 v50, 0x1

    move-object/from16 v43, v48

    .line 403
    .end local v48    # "propertyValue":Ljava/lang/Integer;
    :cond_1a
    :goto_12
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v68

    :goto_13
    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_27

    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lgyr;

    .line 404
    .local v36, "nameFilter":Lgyr;
    invoke-interface/range {v36 .. v36}, Lgyr;->a()Ljava/lang/String;

    move-result-object v32

    .line 405
    goto :goto_13

    .line 287
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v15    # "directWritePrefix":Z
    .end local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "fieldInfo":Lgza;
    .end local v23    # "fieldInfoName":Ljava/lang/String;
    .end local v24    # "fieldSerializer":Lgyo;
    .end local v26    # "filters":Ljava/util/List;, "Ljava/util/List<Lgyu;>;"
    .end local v29    # "i":I
    .end local v32    # "key":Ljava/lang/String;
    .end local v36    # "nameFilter":Lgyr;
    .end local v37    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lgyr;>;"
    .end local v40    # "notWriteDefaultValue":Z
    .end local v47    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lgyt;>;"
    .end local v49    # "propertyValueBoolean":Z
    .end local v50    # "propertyValueGot":Z
    .end local v51    # "propertyValueInt":I
    .end local v52    # "propertyValueLong":J
    .end local v61    # "useSingleQuote":Z
    .end local v64    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lgyz;>;"
    .end local v65    # "valueGot":Z
    :cond_1b
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 289
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 291
    .restart local v15    # "directWritePrefix":Z
    :cond_1d
    const/16 v61, 0x0

    goto/16 :goto_c

    .line 292
    .restart local v61    # "useSingleQuote":Z
    :cond_1e
    const/16 v40, 0x0

    goto/16 :goto_d

    .line 343
    .restart local v9    # "applyName":Z
    .restart local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "fieldInfo":Lgza;
    .restart local v23    # "fieldInfoName":Ljava/lang/String;
    .restart local v24    # "fieldSerializer":Lgyo;
    .restart local v26    # "filters":Ljava/util/List;, "Ljava/util/List<Lgyu;>;"
    .restart local v29    # "i":I
    .restart local v37    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lgyr;>;"
    .restart local v40    # "notWriteDefaultValue":Z
    .restart local v47    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lgyt;>;"
    .local v48, "propertyValue":Ljava/lang/Object;
    .restart local v49    # "propertyValueBoolean":Z
    .restart local v50    # "propertyValueGot":Z
    .restart local v51    # "propertyValueInt":I
    .restart local v52    # "propertyValueLong":J
    .restart local v64    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lgyz;>;"
    .restart local v65    # "valueGot":Z
    :cond_1f
    sget-object v68, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_20

    .line 344
    move-object/from16 v0, v22

    iget-object v0, v0, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v52

    .line 345
    const/16 v65, 0x1

    goto/16 :goto_f

    .line 346
    :cond_20
    sget-object v68, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_21

    .line 347
    move-object/from16 v0, v22

    iget-object v0, v0, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v49

    .line 348
    const/16 v65, 0x1

    goto/16 :goto_f

    .line 350
    :cond_21
    move-object/from16 v0, v22

    iget-object v0, v0, Lgza;->c:Ljava/lang/reflect/Field;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    .line 351
    const/16 v50, 0x1

    goto/16 :goto_f

    .line 354
    :cond_22
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgyo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    .line 355
    const/16 v50, 0x1

    goto/16 :goto_f

    .line 365
    .end local v48    # "propertyValue":Ljava/lang/Object;
    .restart local v8    # "apply":Z
    :cond_23
    sget-object v68, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_24

    .line 366
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    .line 367
    .local v48, "propertyValue":Ljava/lang/Long;
    const/16 v50, 0x1

    move-object/from16 v43, v48

    goto/16 :goto_10

    .line 368
    .end local v48    # "propertyValue":Ljava/lang/Long;
    :cond_24
    sget-object v68, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_6a

    .line 369
    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    .line 370
    .local v48, "propertyValue":Ljava/lang/Boolean;
    const/16 v50, 0x1

    move-object/from16 v43, v48

    goto/16 :goto_10

    .line 394
    .end local v48    # "propertyValue":Ljava/lang/Boolean;
    .restart local v32    # "key":Ljava/lang/String;
    :cond_25
    sget-object v68, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_26

    .line 395
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    .line 396
    .local v48, "propertyValue":Ljava/lang/Long;
    const/16 v50, 0x1

    move-object/from16 v43, v48

    goto/16 :goto_12

    .line 397
    .end local v48    # "propertyValue":Ljava/lang/Long;
    :cond_26
    sget-object v68, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_1a

    .line 398
    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    .line 399
    .local v48, "propertyValue":Ljava/lang/Boolean;
    const/16 v50, 0x1

    move-object/from16 v43, v48

    goto/16 :goto_12

    .line 411
    .end local v48    # "propertyValue":Ljava/lang/Boolean;
    .local v43, "originalValue":Ljava/lang/Object;
    :cond_27
    if-eqz v64, :cond_2a

    .line 412
    if-eqz v65, :cond_69

    if-nez v50, :cond_69

    .line 413
    sget-object v68, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_28

    .line 414
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 415
    .local v48, "propertyValue":Ljava/lang/Integer;
    move-object/from16 v43, v48

    .line 416
    .local v43, "originalValue":Ljava/lang/Integer;
    const/16 v50, 0x1

    .line 428
    .end local v43    # "originalValue":Ljava/lang/Integer;
    .end local v48    # "propertyValue":Ljava/lang/Integer;
    :goto_14
    invoke-interface/range {v64 .. v64}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v68

    :goto_15
    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->hasNext()Z

    move-result v69

    if-eqz v69, :cond_2b

    invoke-interface/range {v68 .. v68}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lgyz;

    .line 429
    .local v63, "valueFilter":Lgyz;
    invoke-interface/range {v63 .. v63}, Lgyz;->a()Ljava/lang/Object;

    move-result-object v48

    .line 430
    .local v48, "propertyValue":Ljava/lang/Object;
    goto :goto_15

    .line 417
    .end local v48    # "propertyValue":Ljava/lang/Object;
    .end local v63    # "valueFilter":Lgyz;
    .local v43, "originalValue":Ljava/lang/Object;
    :cond_28
    sget-object v68, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_29

    .line 418
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    .line 419
    .local v48, "propertyValue":Ljava/lang/Long;
    move-object/from16 v43, v48

    .line 420
    .local v43, "originalValue":Ljava/lang/Long;
    const/16 v50, 0x1

    goto :goto_14

    .line 421
    .end local v48    # "propertyValue":Ljava/lang/Long;
    .local v43, "originalValue":Ljava/lang/Object;
    :cond_29
    sget-object v68, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_69

    .line 422
    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    .line 423
    .local v48, "propertyValue":Ljava/lang/Boolean;
    move-object/from16 v43, v48

    .line 424
    .local v43, "originalValue":Ljava/lang/Boolean;
    const/16 v50, 0x1

    goto :goto_14

    .end local v48    # "propertyValue":Ljava/lang/Boolean;
    .local v43, "originalValue":Ljava/lang/Object;
    :cond_2a
    move-object/from16 v48, v43

    .line 434
    .end local v43    # "originalValue":Ljava/lang/Object;
    :cond_2b
    if-eqz v50, :cond_44

    if-nez v48, :cond_44

    .line 435
    move-object/from16 v0, v22

    iget v0, v0, Lgza;->n:I

    move/from16 v68, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v69, v0

    or-int v68, v68, v69

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v69, v0

    or-int v57, v68, v69

    .line 437
    .local v57, "serialzeFeatures":I
    const-class v68, Ljava/lang/Boolean;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_37

    .line 438
    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 439
    .local v14, "defaultMask":I
    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v68, v0

    or-int v34, v14, v68

    .line 440
    .local v34, "mask":I
    if-nez v66, :cond_2c

    and-int v68, v57, v34

    if-nez v68, :cond_2c

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    and-int v68, v68, v34

    if-eqz v68, :cond_36

    .line 442
    :cond_2c
    and-int v68, v57, v14

    if-nez v68, :cond_2d

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    and-int v68, v68, v14

    if-eqz v68, :cond_2e

    .line 443
    :cond_2d
    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    :cond_2e
    move-object/from16 v69, v48

    .line 474
    .end local v14    # "defaultMask":I
    .end local v34    # "mask":I
    .end local v57    # "serialzeFeatures":I
    :goto_16
    if-eqz v50, :cond_31

    if-eqz v69, :cond_31

    if-eqz v40, :cond_31

    .line 475
    sget-object v68, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-eq v0, v1, :cond_2f

    sget-object v68, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-eq v0, v1, :cond_2f

    sget-object v68, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-eq v0, v1, :cond_2f

    sget-object v68, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-eq v0, v1, :cond_2f

    sget-object v68, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-eq v0, v1, :cond_2f

    sget-object v68, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_30

    :cond_2f
    move-object/from16 v0, v69

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v68, v0

    if-eqz v68, :cond_30

    move-object/from16 v0, v69

    check-cast v0, Ljava/lang/Number;

    move-object/from16 v68, v0

    .line 483
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Number;->byteValue()B

    move-result v68

    if-eqz v68, :cond_36

    .line 485
    :cond_30
    sget-object v68, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_31

    move-object/from16 v0, v69

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v68, v0

    if-eqz v68, :cond_31

    move-object/from16 v0, v69

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v68, v0

    .line 487
    invoke-virtual/range {v68 .. v68}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v68

    if-eqz v68, :cond_36

    .line 492
    :cond_31
    if-eqz v13, :cond_33

    .line 495
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v68, v0

    add-int/lit8 v39, v68, 0x1

    .line 496
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    move/from16 v0, v39

    move/from16 v1, v68

    if-le v0, v1, :cond_32

    .line 497
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v68, v0

    if-nez v68, :cond_45

    .line 498
    move-object/from16 v0, v44

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgyy;->a(I)V

    .line 504
    :cond_32
    :goto_17
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v70, v0

    const/16 v71, 0x2c

    aput-char v71, v68, v70

    .line 505
    move/from16 v0, v39

    move-object/from16 v1, v44

    iput v0, v1, Lgyy;->b:I

    .line 507
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v70, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v70

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v70, v0

    and-int v68, v68, v70

    if-eqz v68, :cond_33

    .line 508
    invoke-virtual/range {p1 .. p1}, Lgyq;->e()V

    .line 512
    :cond_33
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_46

    .line 513
    if-nez v66, :cond_34

    .line 514
    const/16 v68, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lgyy;->a(Ljava/lang/String;Z)V

    .line 517
    :cond_34
    move-object/from16 v0, p1

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lgyq;->b(Ljava/lang/Object;)V

    .line 657
    :cond_35
    :goto_18
    const/4 v13, 0x1

    .line 299
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v32    # "key":Ljava/lang/String;
    .end local v49    # "propertyValueBoolean":Z
    .end local v50    # "propertyValueGot":Z
    .end local v51    # "propertyValueInt":I
    .end local v52    # "propertyValueLong":J
    .end local v65    # "valueGot":Z
    :cond_36
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_e

    .line 445
    .restart local v8    # "apply":Z
    .restart local v9    # "applyName":Z
    .restart local v32    # "key":Ljava/lang/String;
    .restart local v49    # "propertyValueBoolean":Z
    .restart local v50    # "propertyValueGot":Z
    .restart local v51    # "propertyValueInt":I
    .restart local v52    # "propertyValueLong":J
    .restart local v57    # "serialzeFeatures":I
    .restart local v65    # "valueGot":Z
    :cond_37
    const-class v68, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_3b

    .line 446
    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 447
    .restart local v14    # "defaultMask":I
    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v68, v0

    or-int v34, v14, v68

    .line 448
    .restart local v34    # "mask":I
    if-nez v66, :cond_38

    and-int v68, v57, v34

    if-nez v68, :cond_38

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    and-int v68, v68, v34

    if-eqz v68, :cond_36

    .line 450
    :cond_38
    and-int v68, v57, v14

    if-nez v68, :cond_39

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    and-int v68, v68, v14

    if-eqz v68, :cond_3a

    .line 451
    :cond_39
    const-string/jumbo v48, ""

    :cond_3a
    move-object/from16 v69, v48

    .line 453
    goto/16 :goto_16

    .end local v14    # "defaultMask":I
    .end local v34    # "mask":I
    :cond_3b
    const-class v68, Ljava/lang/Number;

    move-object/from16 v0, v68

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v68

    if-eqz v68, :cond_3f

    .line 454
    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 455
    .restart local v14    # "defaultMask":I
    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v68, v0

    or-int v34, v14, v68

    .line 456
    .restart local v34    # "mask":I
    if-nez v66, :cond_3c

    and-int v68, v57, v34

    if-nez v68, :cond_3c

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    and-int v68, v68, v34

    if-eqz v68, :cond_36

    .line 458
    :cond_3c
    and-int v68, v57, v14

    if-nez v68, :cond_3d

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    and-int v68, v68, v14

    if-eqz v68, :cond_3e

    .line 459
    :cond_3d
    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    :cond_3e
    move-object/from16 v69, v48

    .line 461
    goto/16 :goto_16

    .end local v14    # "defaultMask":I
    .end local v34    # "mask":I
    :cond_3f
    const-class v68, Ljava/util/Collection;

    move-object/from16 v0, v68

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v68

    if-eqz v68, :cond_43

    .line 462
    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 463
    .restart local v14    # "defaultMask":I
    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v68, v0

    or-int v34, v14, v68

    .line 464
    .restart local v34    # "mask":I
    if-nez v66, :cond_40

    and-int v68, v57, v34

    if-nez v68, :cond_40

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    and-int v68, v68, v34

    if-eqz v68, :cond_36

    .line 466
    :cond_40
    and-int v68, v57, v14

    if-nez v68, :cond_41

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    and-int v68, v68, v14

    if-eqz v68, :cond_42

    .line 467
    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v48

    :cond_42
    move-object/from16 v69, v48

    .line 469
    goto/16 :goto_16

    .end local v14    # "defaultMask":I
    .end local v34    # "mask":I
    :cond_43
    if-nez v66, :cond_44

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lgyo;->b:Z

    move/from16 v68, v0

    if-nez v68, :cond_44

    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v44

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lgyy;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v68

    if-eqz v68, :cond_36

    .end local v57    # "serialzeFeatures":I
    :cond_44
    move-object/from16 v69, v48

    goto/16 :goto_16

    .line 500
    :cond_45
    invoke-virtual/range {v44 .. v44}, Lgyy;->flush()V

    .line 501
    const/16 v39, 0x1

    goto/16 :goto_17

    .line 518
    :cond_46
    move-object/from16 v0, v43

    move-object/from16 v1, v69

    if-eq v0, v1, :cond_49

    .line 519
    if-nez v66, :cond_47

    .line 520
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgyo;->a(Lgyq;)V

    .line 522
    :cond_47
    move-object/from16 v0, p1

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lgyq;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_18

    .line 687
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v13    # "commaFlag":Z
    .end local v15    # "directWritePrefix":Z
    .end local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "fieldInfo":Lgza;
    .end local v23    # "fieldInfoName":Ljava/lang/String;
    .end local v24    # "fieldSerializer":Lgyo;
    .end local v26    # "filters":Ljava/util/List;, "Ljava/util/List<Lgyu;>;"
    .end local v29    # "i":I
    .end local v30    # "isWriteClassName":Z
    .end local v32    # "key":Ljava/lang/String;
    .end local v37    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lgyr;>;"
    .end local v38    # "newSeperator":C
    .end local v39    # "newcount":I
    .end local v40    # "notWriteDefaultValue":Z
    .end local v47    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lgyt;>;"
    .end local v49    # "propertyValueBoolean":Z
    .end local v50    # "propertyValueGot":Z
    .end local v51    # "propertyValueInt":I
    .end local v52    # "propertyValueLong":J
    .end local v56    # "seperator":C
    .end local v61    # "useSingleQuote":Z
    .end local v64    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lgyz;>;"
    .end local v65    # "valueGot":Z
    :catch_0
    move-exception v16

    .line 688
    .local v16, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v19, "write javaBean error, fastjson version 1.1.70"

    .line 690
    .local v19, "errorMessage":Ljava/lang/String;
    if-eqz p3, :cond_48

    .line 691
    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v68

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string/jumbo v69, ", fieldName : "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 693
    :cond_48
    new-instance v68, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v68

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v68
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 695
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v19    # "errorMessage":Ljava/lang/String;
    :catchall_0
    move-exception v68

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    iput-object v0, v1, Lgyq;->l:Lgyv;

    .line 696
    throw v68

    .line 524
    .restart local v8    # "apply":Z
    .restart local v9    # "applyName":Z
    .restart local v13    # "commaFlag":Z
    .restart local v15    # "directWritePrefix":Z
    .restart local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "fieldInfo":Lgza;
    .restart local v23    # "fieldInfoName":Ljava/lang/String;
    .restart local v24    # "fieldSerializer":Lgyo;
    .restart local v26    # "filters":Ljava/util/List;, "Ljava/util/List<Lgyu;>;"
    .restart local v29    # "i":I
    .restart local v30    # "isWriteClassName":Z
    .restart local v32    # "key":Ljava/lang/String;
    .restart local v37    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lgyr;>;"
    .restart local v38    # "newSeperator":C
    .restart local v39    # "newcount":I
    .restart local v40    # "notWriteDefaultValue":Z
    .restart local v47    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lgyt;>;"
    .restart local v49    # "propertyValueBoolean":Z
    .restart local v50    # "propertyValueGot":Z
    .restart local v51    # "propertyValueInt":I
    .restart local v52    # "propertyValueLong":J
    .restart local v56    # "seperator":C
    .restart local v61    # "useSingleQuote":Z
    .restart local v64    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lgyz;>;"
    .restart local v65    # "valueGot":Z
    :cond_49
    if-nez v66, :cond_4b

    .line 525
    if-eqz v15, :cond_4d

    .line 528
    :try_start_3
    move-object/from16 v0, v24

    iget-object v11, v0, Lgyo;->e:[C

    .line 529
    .local v11, "c":[C
    const/16 v42, 0x0

    .line 530
    .local v42, "off":I
    array-length v0, v11

    move/from16 v33, v0

    .line 532
    .local v33, "len":I
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v68, v0

    add-int v39, v68, v33

    .line 533
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    move/from16 v0, v39

    move/from16 v1, v68

    if-le v0, v1, :cond_4a

    .line 534
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v68, v0

    if-nez v68, :cond_4c

    .line 535
    move-object/from16 v0, v44

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgyy;->a(I)V

    .line 548
    :cond_4a
    :goto_19
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v70, v0

    move/from16 v0, v42

    move-object/from16 v1, v68

    move/from16 v2, v70

    move/from16 v3, v33

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    move/from16 v0, v39

    move-object/from16 v1, v44

    iput v0, v1, Lgyy;->b:I

    .line 556
    .end local v11    # "c":[C
    .end local v33    # "len":I
    .end local v42    # "off":I
    :cond_4b
    :goto_1a
    if-eqz v65, :cond_57

    if-nez v50, :cond_57

    .line 557
    sget-object v68, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_54

    .line 560
    const/high16 v68, -0x80000000

    move/from16 v0, v51

    move/from16 v1, v68

    if-ne v0, v1, :cond_4e

    .line 561
    const-string/jumbo v68, "-2147483648"

    move-object/from16 v0, v44

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 538
    .restart local v11    # "c":[C
    .restart local v33    # "len":I
    .restart local v42    # "off":I
    :cond_4c
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v70, v0

    sub-int v55, v68, v70

    .line 539
    .local v55, "rest":I
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v70, v0

    move/from16 v0, v42

    move-object/from16 v1, v68

    move/from16 v2, v70

    move/from16 v3, v55

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    move/from16 v0, v68

    move-object/from16 v1, v44

    iput v0, v1, Lgyy;->b:I

    .line 541
    invoke-virtual/range {v44 .. v44}, Lgyy;->flush()V

    .line 542
    sub-int v33, v33, v55

    .line 543
    add-int v42, v42, v55

    .line 544
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    move/from16 v0, v33

    move/from16 v1, v68

    if-gt v0, v1, :cond_4c

    .line 545
    move/from16 v39, v33

    goto/16 :goto_19

    .line 552
    .end local v11    # "c":[C
    .end local v33    # "len":I
    .end local v42    # "off":I
    .end local v55    # "rest":I
    :cond_4d
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgyo;->a(Lgyq;)V

    goto :goto_1a

    .line 564
    :cond_4e
    if-gez v51, :cond_51

    move/from16 v0, v51

    neg-int v0, v0

    move/from16 v67, v0

    .line 565
    .local v67, "x":I
    :goto_1b
    const/16 v31, 0x0

    .line 566
    .local v31, "j":I
    :goto_1c
    sget-object v68, Lgyy;->e:[I

    aget v68, v68, v31

    move/from16 v0, v67

    move/from16 v1, v68

    if-gt v0, v1, :cond_52

    .line 567
    add-int/lit8 v58, v31, 0x1

    .line 572
    .local v58, "size":I
    if-gez v51, :cond_4f

    .line 573
    add-int/lit8 v58, v58, 0x1

    .line 576
    :cond_4f
    const/16 v27, 0x0

    .line 577
    .local v27, "flushed":Z
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v68, v0

    add-int v39, v68, v58

    .line 578
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    move/from16 v0, v39

    move/from16 v1, v68

    if-le v0, v1, :cond_50

    .line 579
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v68, v0

    if-nez v68, :cond_53

    .line 580
    move-object/from16 v0, v44

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgyy;->a(I)V

    .line 589
    :cond_50
    :goto_1d
    if-nez v27, :cond_35

    .line 590
    move/from16 v0, v51

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v70, v0

    move-wide/from16 v0, v68

    move/from16 v2, v39

    move-object/from16 v3, v70

    invoke-static {v0, v1, v2, v3}, Lgyy;->a(JI[C)V

    .line 591
    move/from16 v0, v39

    move-object/from16 v1, v44

    iput v0, v1, Lgyy;->b:I

    goto/16 :goto_18

    .end local v27    # "flushed":Z
    .end local v31    # "j":I
    .end local v58    # "size":I
    .end local v67    # "x":I
    :cond_51
    move/from16 v67, v51

    .line 564
    goto :goto_1b

    .line 565
    .restart local v31    # "j":I
    .restart local v67    # "x":I
    :cond_52
    add-int/lit8 v31, v31, 0x1

    goto :goto_1c

    .line 582
    .restart local v27    # "flushed":Z
    .restart local v58    # "size":I
    :cond_53
    move/from16 v0, v58

    new-array v12, v0, [C

    .line 583
    .local v12, "chars":[C
    move/from16 v0, v51

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move-wide/from16 v0, v68

    move/from16 v2, v58

    invoke-static {v0, v1, v2, v12}, Lgyy;->a(JI[C)V

    .line 584
    const/16 v68, 0x0

    array-length v0, v12

    move/from16 v69, v0

    move-object/from16 v0, v44

    move/from16 v1, v68

    move/from16 v2, v69

    invoke-virtual {v0, v12, v1, v2}, Lgyy;->write([CII)V

    .line 585
    const/16 v27, 0x1

    goto :goto_1d

    .line 595
    .end local v12    # "chars":[C
    .end local v27    # "flushed":Z
    .end local v31    # "j":I
    .end local v58    # "size":I
    .end local v67    # "x":I
    :cond_54
    sget-object v68, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_55

    .line 596
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->b:Lgyy;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Lgyy;->a(J)V

    goto/16 :goto_18

    .line 597
    :cond_55
    sget-object v68, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_35

    .line 598
    if-eqz v49, :cond_56

    .line 599
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->b:Lgyy;

    move-object/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    const/16 v70, 0x0

    sget-object v71, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    move-object/from16 v0, v71

    array-length v0, v0

    move/from16 v71, v0

    invoke-virtual/range {v68 .. v71}, Lgyy;->write([CII)V

    goto/16 :goto_18

    .line 601
    :cond_56
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->b:Lgyy;

    move-object/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    const/16 v70, 0x0

    sget-object v71, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    move-object/from16 v0, v71

    array-length v0, v0

    move/from16 v71, v0

    invoke-virtual/range {v68 .. v71}, Lgyy;->write([CII)V

    goto/16 :goto_18

    .line 605
    :cond_57
    if-nez v66, :cond_62

    .line 606
    const-class v68, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_5c

    .line 607
    move-object/from16 v0, v24

    iget v0, v0, Lgyo;->c:I

    move/from16 v68, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v70, v0

    or-int v57, v68, v70

    .line 608
    .restart local v57    # "serialzeFeatures":I
    if-nez v69, :cond_5a

    .line 610
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-nez v68, :cond_58

    sget-object v68, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v68

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v68, v0

    and-int v68, v68, v57

    if-eqz v68, :cond_59

    .line 613
    :cond_58
    const-string/jumbo v68, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lgyy;->b(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 2451
    :cond_59
    const-string/jumbo v68, "null"

    move-object/from16 v0, v44

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 618
    :cond_5a
    move-object/from16 v0, v69

    check-cast v0, Ljava/lang/String;

    move-object/from16 v54, v0

    .line 620
    .local v54, "propertyValueString":Ljava/lang/String;
    if-eqz v61, :cond_5b

    .line 621
    move-object/from16 v0, v44

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lgyy;->c(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 623
    :cond_5b
    const/16 v68, 0x0

    const/16 v69, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v54

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lgyy;->a(Ljava/lang/String;CZ)V

    goto/16 :goto_18

    .line 627
    .end local v54    # "propertyValueString":Ljava/lang/String;
    .end local v57    # "serialzeFeatures":I
    :cond_5c
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lgza;->j:Z

    move/from16 v68, v0

    if-eqz v68, :cond_61

    .line 628
    if-eqz v69, :cond_60

    .line 629
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v70, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v70

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v70, v0

    and-int v68, v68, v70

    if-eqz v68, :cond_5f

    .line 630
    move-object/from16 v0, v69

    check-cast v0, Ljava/lang/Enum;

    move-object/from16 v17, v0

    .line 632
    .local v17, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v35

    .line 633
    .local v35, "name":Ljava/lang/String;
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_5d

    const/16 v62, 0x1

    .line 635
    .local v62, "userSingleQuote":Z
    :goto_1e
    if-eqz v62, :cond_5e

    .line 636
    move-object/from16 v0, v44

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgyy;->c(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 633
    .end local v62    # "userSingleQuote":Z
    :cond_5d
    const/16 v62, 0x0

    goto :goto_1e

    .line 638
    .restart local v62    # "userSingleQuote":Z
    :cond_5e
    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    move/from16 v2, v68

    move/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Lgyy;->a(Ljava/lang/String;CZ)V

    goto/16 :goto_18

    .line 641
    .end local v17    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v35    # "name":Ljava/lang/String;
    .end local v62    # "userSingleQuote":Z
    :cond_5f
    move-object/from16 v0, v69

    check-cast v0, Ljava/lang/Enum;

    move-object/from16 v17, v0

    .line 642
    .restart local v17    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v68

    move-object/from16 v0, v44

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lgyy;->b(I)V

    goto/16 :goto_18

    .line 3451
    .end local v17    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_60
    const-string/jumbo v68, "null"

    move-object/from16 v0, v44

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 648
    :cond_61
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lgyo;->a(Lgyq;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 652
    :cond_62
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lgyo;->a(Lgyq;Ljava/lang/Object;)V

    goto/16 :goto_18

    .line 661
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "fieldInfo":Lgza;
    .end local v23    # "fieldInfoName":Ljava/lang/String;
    .end local v24    # "fieldSerializer":Lgyo;
    .end local v32    # "key":Ljava/lang/String;
    .end local v49    # "propertyValueBoolean":Z
    .end local v50    # "propertyValueGot":Z
    .end local v51    # "propertyValueInt":I
    .end local v52    # "propertyValueLong":J
    .end local v65    # "valueGot":Z
    :cond_63
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->d:Ljava/util/List;

    move-object/from16 v68, v0

    if-eqz v68, :cond_65

    .line 662
    if-eqz v13, :cond_64

    const/16 v7, 0x2c

    .line 663
    .local v7, "afterOperator":C
    :goto_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Lgyq;->d:Ljava/util/List;

    move-object/from16 v68, v0

    invoke-interface/range {v68 .. v68}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v69

    :goto_20
    invoke-interface/range {v69 .. v69}, Ljava/util/Iterator;->hasNext()Z

    move-result v68

    if-eqz v68, :cond_65

    invoke-interface/range {v69 .. v69}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgym;

    .line 4014
    .local v6, "afterFilter":Lgym;
    sget-object v68, Lgym;->a:Ljava/lang/ThreadLocal;

    move-object/from16 v0, v68

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4015
    sget-object v68, Lgym;->b:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v70

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4017
    sget-object v68, Lgym;->a:Ljava/lang/ThreadLocal;

    const/16 v70, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4018
    sget-object v68, Lgym;->b:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v68 .. v68}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/Character;

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Character;->charValue()C

    move-result v7

    .line 665
    goto :goto_20

    .line 662
    .end local v6    # "afterFilter":Lgym;
    .end local v7    # "afterOperator":C
    :cond_64
    const/4 v7, 0x0

    goto :goto_1f

    .line 668
    :cond_65
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v68, v0

    if-lez v68, :cond_66

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->c:I

    move/from16 v68, v0

    sget-object v69, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v69

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v69, v0

    and-int v68, v68, v69

    if-eqz v68, :cond_66

    .line 669
    invoke-virtual/range {p1 .. p1}, Lgyq;->d()V

    .line 670
    invoke-virtual/range {p1 .. p1}, Lgyq;->e()V

    .line 675
    :cond_66
    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v68, v0

    add-int/lit8 v39, v68, 0x1

    .line 676
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    move/from16 v0, v39

    move/from16 v1, v68

    if-le v0, v1, :cond_67

    .line 677
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->d:Ljava/io/Writer;

    move-object/from16 v68, v0

    if-nez v68, :cond_68

    .line 678
    move-object/from16 v0, v44

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lgyy;->a(I)V

    .line 684
    :cond_67
    :goto_21
    move-object/from16 v0, v44

    iget-object v0, v0, Lgyy;->a:[C

    move-object/from16 v68, v0

    move-object/from16 v0, v44

    iget v0, v0, Lgyy;->b:I

    move/from16 v69, v0

    aput-char v18, v68, v69

    .line 685
    move/from16 v0, v39

    move-object/from16 v1, v44

    iput v0, v1, Lgyy;->b:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 695
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    iput-object v0, v1, Lgyq;->l:Lgyv;

    goto/16 :goto_0

    .line 680
    :cond_68
    :try_start_4
    invoke-virtual/range {v44 .. v44}, Lgyy;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 681
    const/16 v39, 0x1

    goto :goto_21

    .restart local v8    # "apply":Z
    .restart local v9    # "applyName":Z
    .restart local v21    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "fieldInfo":Lgza;
    .restart local v23    # "fieldInfoName":Ljava/lang/String;
    .restart local v24    # "fieldSerializer":Lgyo;
    .restart local v32    # "key":Ljava/lang/String;
    .restart local v43    # "originalValue":Ljava/lang/Object;
    .restart local v49    # "propertyValueBoolean":Z
    .restart local v50    # "propertyValueGot":Z
    .restart local v51    # "propertyValueInt":I
    .restart local v52    # "propertyValueLong":J
    .restart local v65    # "valueGot":Z
    :cond_69
    move-object/from16 v48, v43

    goto/16 :goto_14

    .end local v32    # "key":Ljava/lang/String;
    .end local v43    # "originalValue":Ljava/lang/Object;
    :cond_6a
    move-object/from16 v43, v48

    goto/16 :goto_10

    :cond_6b
    move-object/from16 v43, v48

    goto/16 :goto_11
.end method
