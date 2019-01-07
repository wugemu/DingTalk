.class public final Lcom/alibaba/fastjson/serializer/IntegerCodec;
.super Ljava/lang/Object;
.source "IntegerCodec.java"

# interfaces
.implements Lgyk;
.implements Lgys;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/IntegerCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public final deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "parser"    # Lgxr;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v10, 0x10

    .line 79
    iget-object v3, p1, Lgxr;->e:Lgxt;

    .line 81
    .local v3, "lexer":Lgxt;
    invoke-virtual {v3}, Lgxt;->a()I

    move-result v6

    .line 82
    .local v6, "token":I
    const/16 v9, 0x8

    if-ne v6, v9, :cond_0

    .line 83
    invoke-virtual {v3, v10}, Lgxt;->a(I)V

    .line 123
    :goto_0
    return-object v2

    .line 88
    :cond_0
    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 89
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v9, :cond_1

    const-class v9, Ljava/lang/Long;

    if-ne p2, v9, :cond_2

    .line 90
    :cond_1
    invoke-virtual {v3}, Lgxt;->r()J

    move-result-wide v4

    .line 91
    .local v4, "longValue":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 100
    .end local v4    # "longValue":J
    .local v2, "intObj":Ljava/lang/Number;
    :goto_1
    invoke-virtual {v3, v10}, Lgxt;->a(I)V

    goto :goto_0

    .line 94
    .end local v2    # "intObj":Ljava/lang/Number;
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Lgxt;->i()I

    move-result v7

    .line 95
    .local v7, "val":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "intObj":Ljava/lang/Number;
    goto :goto_1

    .line 96
    .end local v2    # "intObj":Ljava/lang/Number;
    .end local v7    # "val":I
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "int value overflow, field : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 101
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v9, 0x3

    if-ne v6, v9, :cond_6

    .line 102
    invoke-virtual {v3}, Lgxt;->s()Ljava/math/BigDecimal;

    move-result-object v0

    .line 103
    .local v0, "decimalValue":Ljava/math/BigDecimal;
    invoke-virtual {v3, v10}, Lgxt;->a(I)V

    .line 104
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v9, :cond_4

    const-class v9, Ljava/lang/Long;

    if-ne p2, v9, :cond_5

    .line 105
    :cond_4
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .restart local v2    # "intObj":Ljava/lang/Number;
    goto :goto_0

    .line 107
    .end local v2    # "intObj":Ljava/lang/Number;
    :cond_5
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 109
    .restart local v2    # "intObj":Ljava/lang/Number;
    goto :goto_0

    .line 2362
    .end local v0    # "decimalValue":Ljava/math/BigDecimal;
    .end local v2    # "intObj":Ljava/lang/Number;
    :cond_6
    invoke-virtual {p1, v2}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 113
    .local v8, "value":Ljava/lang/Object;
    :try_start_1
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v9, :cond_7

    const-class v9, Ljava/lang/Long;

    if-ne p2, v9, :cond_8

    .line 114
    :cond_7
    invoke-static {v8}, Lgzd;->j(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    .restart local v2    # "intObj":Ljava/lang/Number;
    goto :goto_0

    .line 116
    .end local v2    # "intObj":Ljava/lang/Number;
    :cond_8
    invoke-static {v8}, Lgzd;->k(Ljava/lang/Object;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .restart local v2    # "intObj":Ljava/lang/Number;
    goto :goto_0

    .line 118
    .end local v2    # "intObj":Ljava/lang/Number;
    :catch_1
    move-exception v1

    .line 119
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "cast error, field : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public final write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v1, p1, Lgyq;->b:Lgyy;

    .local v1, "out":Lgyy;
    move-object v4, p2

    .line 43
    check-cast v4, Ljava/lang/Number;

    .line 45
    .local v4, "value":Ljava/lang/Number;
    if-nez v4, :cond_2

    .line 46
    iget v5, v1, Lgyy;->c:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 47
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Lgyy;->write(I)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    const-string/jumbo v5, "null"

    invoke-virtual {v1, v5}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    instance-of v5, p2, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 55
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lgyy;->a(J)V

    .line 60
    :goto_1
    iget v5, v1, Lgyy;->c:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Byte;

    if-ne v0, v5, :cond_4

    .line 63
    const/16 v5, 0x42

    invoke-virtual {v1, v5}, Lgyy;->write(I)V

    goto :goto_0

    .line 57
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lgyy;->b(I)V

    goto :goto_1

    .line 64
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const-class v5, Ljava/lang/Short;

    if-ne v0, v5, :cond_5

    .line 65
    const/16 v5, 0x53

    invoke-virtual {v1, v5}, Lgyy;->write(I)V

    goto :goto_0

    .line 66
    :cond_5
    const-class v5, Ljava/lang/Long;

    if-ne v0, v5, :cond_0

    .line 67
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 68
    .local v2, "longValue":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    const-wide/32 v6, -0x80000000

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 69
    const-class v5, Ljava/lang/Long;

    if-eq p4, v5, :cond_0

    .line 70
    const/16 v5, 0x4c

    invoke-virtual {v1, v5}, Lgyy;->write(I)V

    goto :goto_0
.end method
