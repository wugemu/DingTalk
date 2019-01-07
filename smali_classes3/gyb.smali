.class public final Lgyb;
.super Ljava/lang/Object;
.source "ParserConfig.java"


# static fields
.field public static a:Lgyb;

.field private static e:[J


# instance fields
.field public final b:Lgyd;

.field public c:Ljava/lang/ClassLoader;

.field public d:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field private final f:Lgzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgzb",
            "<",
            "Lgyk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xa

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lgyb;->e:[J

    .line 75
    new-instance v0, Lgyb;

    invoke-direct {v0}, Lgyb;-><init>()V

    sput-object v0, Lgyb;->a:Lgyb;

    return-void

    .line 58
    nop

    :array_0
    .array-data 8
        -0x697c01b42c8a00caL
        -0x38a661401c18dbfaL    # -5.3210898116926836E35
        -0x20d2200cef324c8bL    # -3.0559968239287952E150
        -0x96230e6f27cc8d0L
        -0x388c51df37d896fL
        0x14db2e6fead04af0L    # 3.307156557815155E-208
        0x398f942e01920cf0L    # 1.9461954727645544E-31
        0x4a3797b30328202cL    # 3.448058737338662E49
        0x4fd10ddc6d13821fL    # 3.085523505057036E76
        0x6ae528ae28dfe381L    # 8.491419128219555E206
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lgzb;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lgzb;-><init>(I)V

    iput-object v0, p0, Lgyb;->f:Lgzb;

    .line 77
    new-instance v0, Lgyd;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lgyd;-><init>(I)V

    iput-object v0, p0, Lgyb;->b:Lgyd;

    .line 83
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lgxz;->a:Lgxz;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lgxz;->a:Lgxz;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lgxz;->a:Lgxz;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lgxz;->a:Lgxz;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lgxz;->a:Lgxz;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lgxz;->a:Lgxz;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lgxx;->a:Lgxx;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lgyb;->f:Lgzb;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lgyb;->f:Lgzb;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lgyb;->f:Lgzb;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lgyb;->f:Lgzb;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lgyb;->f:Lgzb;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lgyb;->f:Lgzb;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lgyb;->f:Lgzb;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lgyb;->f:Lgzb;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, [C

    sget-object v2, Lcom/alibaba/fastjson/serializer/ArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ArrayCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, [Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/fastjson/serializer/ArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ArrayCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lgxx;->a:Lgxx;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lgxx;->a:Lgxx;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lgxx;->a:Lgxx;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lgyb;->f:Lgzb;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lgxx;->a:Lgxx;

    invoke-virtual {v0, v1, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public static a()Lgyb;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lgyb;->a:Lgyb;

    return-object v0
.end method

.method public static a(Lgyb;Ljava/lang/Class;Lgza;)Lgyi;
    .locals 2
    .param p0, "mapping"    # Lgyb;
    .param p2, "fieldInfo"    # Lgza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgyb;",
            "Ljava/lang/Class",
            "<*>;",
            "Lgza;",
            ")",
            "Lgyi;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p2, Lgza;->f:Ljava/lang/Class;

    .line 272
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/ArrayList;

    if-eq v0, v1, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    :cond_0
    new-instance v1, Lgxy;

    invoke-direct {v1, p1, p2}, Lgxy;-><init>(Ljava/lang/Class;Lgza;)V

    .line 280
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lgxq;

    invoke-direct {v1, p1, p2}, Lgxq;-><init>(Ljava/lang/Class;Lgza;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Time;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/sql/Timestamp;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lgyk;
    .locals 6
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lgyk;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 172
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v5, p0, Lgyb;->f:Lgzb;

    invoke-virtual {v5, p2}, Lgzb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgyk;

    .line 173
    .local v2, "deserializer":Lgyk;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 234
    .end local v2    # "deserializer":Lgyk;
    .local v3, "deserializer":Lgyk;
    :goto_1
    return-object v3

    .line 177
    .end local v3    # "deserializer":Lgyk;
    .restart local v2    # "deserializer":Lgyk;
    :cond_0
    if-nez p2, :cond_1

    .line 178
    move-object p2, p1

    .line 181
    :cond_1
    iget-object v5, p0, Lgyb;->f:Lgzb;

    invoke-virtual {v5, p2}, Lgzb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deserializer":Lgyk;
    check-cast v2, Lgyk;

    .line 182
    .restart local v2    # "deserializer":Lgyk;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 183
    .end local v2    # "deserializer":Lgyk;
    .restart local v3    # "deserializer":Lgyk;
    goto :goto_1

    .line 186
    .end local v3    # "deserializer":Lgyk;
    .restart local v2    # "deserializer":Lgyk;
    :cond_2
    invoke-static {p1}, Lgyb;->a(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 187
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 188
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_3

    .line 189
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->mappingTo()Ljava/lang/Class;

    move-result-object v4

    .line 190
    .local v4, "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Void;

    if-eq v4, v5, :cond_3

    .line 191
    move-object p2, v4

    move-object p1, v4

    goto :goto_0

    .line 196
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v4    # "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v5, p2, Ljava/lang/reflect/WildcardType;

    if-nez v5, :cond_4

    instance-of v5, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v5, :cond_4

    instance-of v5, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_5

    .line 197
    :cond_4
    iget-object v5, p0, Lgyb;->f:Lgzb;

    invoke-virtual {v5, p1}, Lgzb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deserializer":Lgyk;
    check-cast v2, Lgyk;

    .line 200
    .restart local v2    # "deserializer":Lgyk;
    :cond_5
    if-eqz v2, :cond_6

    move-object v3, v2

    .line 201
    .end local v2    # "deserializer":Lgyk;
    .restart local v3    # "deserializer":Lgyk;
    goto :goto_1

    .line 204
    .end local v3    # "deserializer":Lgyk;
    .restart local v2    # "deserializer":Lgyk;
    :cond_6
    iget-object v5, p0, Lgyb;->f:Lgzb;

    invoke-virtual {v5, p2}, Lgzb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "deserializer":Lgyk;
    check-cast v2, Lgyk;

    .line 205
    .restart local v2    # "deserializer":Lgyk;
    if-eqz v2, :cond_7

    move-object v3, v2

    .line 206
    .end local v2    # "deserializer":Lgyk;
    .restart local v3    # "deserializer":Lgyk;
    goto :goto_1

    .line 209
    .end local v3    # "deserializer":Lgyk;
    .restart local v2    # "deserializer":Lgyk;
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 210
    new-instance v2, Lgxs;

    .end local v2    # "deserializer":Lgyk;
    invoke-direct {v2, p1}, Lgxs;-><init>(Ljava/lang/Class;)V

    .line 1284
    .restart local v2    # "deserializer":Lgyk;
    :goto_2
    iget-object v5, p0, Lgyb;->f:Lgzb;

    invoke-virtual {v5, p2, v2}, Lgzb;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-object v3, v2

    .line 234
    .end local v2    # "deserializer":Lgyk;
    .restart local v3    # "deserializer":Lgyk;
    goto :goto_1

    .line 211
    .end local v3    # "deserializer":Lgyk;
    .restart local v2    # "deserializer":Lgyk;
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 212
    sget-object v2, Lcom/alibaba/fastjson/serializer/ArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ArrayCodec;

    goto :goto_2

    .line 213
    :cond_9
    const-class v5, Ljava/util/Set;

    if-eq p1, v5, :cond_a

    const-class v5, Ljava/util/HashSet;

    if-eq p1, v5, :cond_a

    const-class v5, Ljava/util/Collection;

    if-eq p1, v5, :cond_a

    const-class v5, Ljava/util/List;

    if-eq p1, v5, :cond_a

    const-class v5, Ljava/util/ArrayList;

    if-ne p1, v5, :cond_b

    .line 215
    :cond_a
    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    goto :goto_2

    .line 216
    :cond_b
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 217
    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    goto :goto_2

    .line 218
    :cond_c
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 219
    sget-object v2, Lgxz;->a:Lgxz;

    goto :goto_2

    .line 220
    :cond_d
    const-class v5, Ljava/lang/Throwable;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 221
    new-instance v2, Lgye;

    .end local v2    # "deserializer":Lgyk;
    invoke-direct {v2, p0, p1}, Lgye;-><init>(Lgyb;Ljava/lang/Class;)V

    .restart local v2    # "deserializer":Lgyk;
    goto :goto_2

    .line 223
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "clazzName":Ljava/lang/String;
    const-string/jumbo v5, "android.net.Uri"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 226
    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    goto :goto_2

    .line 228
    :cond_f
    new-instance v2, Lgxv;

    .end local v2    # "deserializer":Lgyk;
    invoke-direct {v2, p0, p1, p2}, Lgxv;-><init>(Lgyb;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .restart local v2    # "deserializer":Lgyk;
    goto :goto_2
.end method

.method public final a(Ljava/lang/reflect/Type;)Lgyk;
    .locals 7
    .param p1, "type"    # Ljava/lang/reflect/Type;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 141
    :goto_0
    iget-object v5, p0, Lgyb;->f:Lgzb;

    invoke-virtual {v5, p1}, Lgzb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyk;

    .line 142
    .local v0, "derializer":Lgyk;
    if-eqz v0, :cond_0

    .line 168
    .end local v0    # "derializer":Lgyk;
    :goto_1
    return-object v0

    .line 146
    .restart local v0    # "derializer":Lgyk;
    :cond_0
    instance-of v5, p1, Ljava/lang/Class;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 147
    check-cast v5, Ljava/lang/Class;

    invoke-virtual {p0, v5, p1}, Lgyb;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_1
    instance-of v5, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_3

    move-object v5, p1

    .line 151
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 152
    .local v1, "rawType":Ljava/lang/reflect/Type;
    instance-of v5, v1, Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 153
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v1, p1}, Lgyb;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lgyk;

    move-result-object v0

    goto :goto_1

    .line 155
    .restart local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_2
    move-object p1, v1

    goto :goto_0

    .line 159
    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v5, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_4

    move-object v4, p1

    .line 160
    check-cast v4, Ljava/lang/reflect/WildcardType;

    .line 161
    .local v4, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 162
    .local v3, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 163
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 164
    .local v2, "upperBoundType":Ljava/lang/reflect/Type;
    move-object p1, v2

    goto :goto_0

    .line 168
    .end local v2    # "upperBoundType":Ljava/lang/reflect/Type;
    .end local v3    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v4    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_4
    sget-object v0, Lgxx;->a:Lgxx;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 16
    .param p1, "typeName"    # Ljava/lang/String;
    .param p3, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 308
    .local p2, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 309
    const/4 v2, 0x0

    .line 382
    :cond_0
    :goto_0
    return-object v2

    .line 312
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x80

    if-ge v11, v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-ge v11, v12, :cond_3

    .line 313
    :cond_2
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "autoType is not support. "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 319
    :cond_3
    const-wide v12, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-long v14, v11

    xor-long/2addr v12, v14

    const-wide v14, 0x100000001b3L

    mul-long v4, v12, v14

    .line 320
    .local v4, "h1":J
    const-wide v12, -0x509be9b379fdb0e6L    # -2.1176223865607047E-80

    cmp-long v11, v4, v12

    if-nez v11, :cond_4

    .line 321
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "autoType is not support. "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 324
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-long v12, v11

    xor-long/2addr v12, v4

    const-wide v14, 0x100000001b3L

    mul-long/2addr v12, v14

    const-wide v14, 0x9198507b5af98f0L

    cmp-long v11, v12, v14

    if-nez v11, :cond_5

    .line 325
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "autoType is not support. "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 328
    :cond_5
    const-wide v12, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-long v14, v11

    xor-long/2addr v12, v14

    const-wide v14, 0x100000001b3L

    mul-long/2addr v12, v14

    const/4 v11, 0x1

    .line 330
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-long v14, v11

    xor-long/2addr v12, v14

    const-wide v14, 0x100000001b3L

    mul-long/2addr v12, v14

    const/4 v11, 0x2

    .line 332
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-long v14, v11

    xor-long/2addr v12, v14

    const-wide v14, 0x100000001b3L

    mul-long v6, v12, v14

    .line 335
    .local v6, "h3":J
    move-wide v8, v6

    .line 336
    .local v8, "hash":J
    const/4 v3, 0x3

    .local v3, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v3, v11, :cond_7

    .line 337
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-long v12, v11

    xor-long/2addr v8, v12

    .line 338
    const-wide v12, 0x100000001b3L

    mul-long/2addr v8, v12

    .line 339
    sget-object v11, Lgyb;->e:[J

    invoke-static {v11, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11

    if-ltz v11, :cond_6

    invoke-static/range {p1 .. p1}, Lgzd;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    if-nez v11, :cond_6

    .line 340
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "autoType is not support. "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 336
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 344
    :cond_7
    invoke-static/range {p1 .. p1}, Lgzd;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 345
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    .line 349
    move-object/from16 v0, p0

    iget-object v11, v0, Lgyb;->f:Lgzb;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lgzb;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 350
    if-nez v2, :cond_0

    .line 354
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lgzd;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_9

    if-eqz p2, :cond_9

    const-class v11, Ljava/util/HashMap;

    if-eq v2, v11, :cond_9

    .line 360
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 361
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lgzd;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 364
    :cond_8
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "type not match. "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 368
    :cond_9
    const-class v11, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v2, v11}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 369
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lgzd;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 373
    :cond_a
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 374
    .local v10, "mask":I
    and-int v11, p3, v10

    if-nez v11, :cond_b

    sget v11, Lgxk;->DEFAULT_PARSER_FEATURE:I

    and-int/2addr v11, v10

    if-nez v11, :cond_b

    .line 377
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "autoType is not support : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 380
    :cond_b
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lgzd;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method
