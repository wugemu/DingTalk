.class public final Lgyw;
.super Ljava/lang/Object;
.source "SerializeConfig.java"


# static fields
.field public static final a:Lgyw;


# instance fields
.field public b:Ljava/lang/String;

.field private final c:Lgzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgzb",
            "<",
            "Lgys;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lgyw;

    invoke-direct {v0}, Lgyw;-><init>()V

    sput-object v0, Lgyw;->a:Lgyw;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string/jumbo v0, "@type"

    iput-object v0, p0, Lgyw;->b:Ljava/lang/String;

    .line 80
    new-instance v0, Lgzb;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lgzb;-><init>(I)V

    iput-object v0, p0, Lgyw;->c:Lgzb;

    .line 82
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, [Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/fastjson/serializer/ArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ArrayCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lgyw;->c:Lgzb;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 106
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lgys;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lgys;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgzb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgys;

    .line 111
    .local v11, "writer":Lgys;
    if-nez v11, :cond_0

    .line 113
    const-class v12, Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    new-instance v11, Lcom/alibaba/fastjson/serializer/MapSerializer;

    .end local v11    # "writer":Lgys;
    invoke-direct {v11}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    .restart local v11    # "writer":Lgys;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 180
    :goto_0
    if-nez v11, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgzb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "writer":Lgys;
    check-cast v11, Lgys;

    .restart local v11    # "writer":Lgys;
    :cond_0
    move-object v10, v11

    .line 184
    :goto_1
    return-object v10

    .line 115
    :cond_1
    const-class v12, Ljava/util/AbstractSequentialList;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_2
    const-class v12, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    new-instance v11, Lcom/alibaba/fastjson/serializer/ListSerializer;

    .end local v11    # "writer":Lgys;
    invoke-direct {v11}, Lcom/alibaba/fastjson/serializer/ListSerializer;-><init>()V

    .restart local v11    # "writer":Lgys;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_3
    const-class v12, Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_4
    const-class v12, Ljava/util/Date;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_5
    const-class v12, Lgxl;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 125
    :cond_6
    const-class v12, Lgyp;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 126
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 127
    :cond_7
    const-class v12, Lgxn;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 129
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-nez v12, :cond_9

    .line 130
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .local v8, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v8, :cond_a

    const-class v12, Ljava/lang/Object;

    if-eq v8, v12, :cond_a

    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 131
    .end local v8    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    new-instance v11, Lcom/alibaba/fastjson/serializer/EnumSerializer;

    .end local v11    # "writer":Lgys;
    invoke-direct {v11}, Lcom/alibaba/fastjson/serializer/EnumSerializer;-><init>()V

    .restart local v11    # "writer":Lgys;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 132
    .restart local v8    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 133
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 134
    .local v3, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v2

    .line 135
    .local v2, "compObjectSerializer":Lgys;
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    new-instance v11, Lcom/alibaba/fastjson/serializer/ArraySerializer;

    .end local v11    # "writer":Lgys;
    invoke-direct {v11, v3, v2}, Lcom/alibaba/fastjson/serializer/ArraySerializer;-><init>(Ljava/lang/Class;Lgys;)V

    .restart local v11    # "writer":Lgys;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 136
    .end local v2    # "compObjectSerializer":Lgys;
    .end local v3    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    const-class v12, Ljava/lang/Throwable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 137
    new-instance v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v12}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 138
    .local v7, "serializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget v12, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v12, v13

    iput v12, v7, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 139
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    move-object v11, v7

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v7}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 140
    .end local v7    # "serializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :cond_c
    const-class v12, Ljava/util/TimeZone;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 142
    :cond_d
    const-class v12, Ljava/nio/charset/Charset;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 144
    :cond_e
    const-class v12, Ljava/util/Enumeration;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 146
    :cond_f
    const-class v12, Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    sget-object v11, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    :cond_10
    const/4 v4, 0x0

    .line 150
    .local v4, "isCglibProxy":Z
    const/4 v5, 0x0

    .line 151
    .local v5, "isJavassistProxy":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v14, :cond_12

    aget-object v6, v13, v12

    .line 152
    .local v6, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "net.sf.cglib.proxy.Factory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    .line 153
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "org.springframework.cglib.proxy.Factory"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 154
    :cond_11
    const/4 v4, 0x1

    .line 162
    .end local v6    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    :goto_3
    if-nez v4, :cond_13

    if-eqz v5, :cond_16

    .line 163
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    .line 165
    .local v9, "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v10

    .line 166
    .local v10, "superWriter":Lgys;
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v10}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 156
    .end local v9    # "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "superWriter":Lgys;
    .restart local v6    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_14
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "javassist.util.proxy.ProxyObject"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 157
    const/4 v5, 0x1

    .line 158
    goto :goto_3

    .line 151
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 170
    .end local v6    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "className":Ljava/lang/String;
    const-string/jumbo v12, "android.net.Uri$"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 173
    sget-object v11, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    .line 177
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lgyw;->c:Lgzb;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 175
    :cond_17
    new-instance v11, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .end local v11    # "writer":Lgys;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v12}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .restart local v11    # "writer":Lgys;
    goto :goto_4
.end method
