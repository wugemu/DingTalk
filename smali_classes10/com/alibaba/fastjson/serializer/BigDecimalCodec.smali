.class public Lcom/alibaba/fastjson/serializer/BigDecimalCodec;
.super Ljava/lang/Object;
.source "BigDecimalCodec.java"

# interfaces
.implements Lgyk;
.implements Lgys;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

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
.method public deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x10

    .line 68
    iget-object v1, p1, Lgxr;->e:Lgxt;

    .line 70
    .local v1, "lexer":Lgxt;
    invoke-virtual {v1}, Lgxt;->a()I

    move-result v2

    .line 71
    .local v2, "token":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 72
    const-class v5, Ljava/math/BigInteger;

    if-ne p2, v5, :cond_1

    .line 73
    invoke-virtual {v1}, Lgxt;->d()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lgxt;->a(I)V

    .line 75
    new-instance v0, Ljava/math/BigInteger;

    const/16 v5, 0xa

    invoke-direct {v0, v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 104
    .end local v3    # "val":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    invoke-virtual {v1}, Lgxt;->s()Ljava/math/BigDecimal;

    move-result-object v0

    .line 78
    .local v0, "decimal":Ljava/math/BigDecimal;
    invoke-virtual {v1, v6}, Lgxt;->a(I)V

    goto :goto_0

    .line 83
    .end local v0    # "decimal":Ljava/math/BigDecimal;
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 84
    invoke-virtual {v1}, Lgxt;->s()Ljava/math/BigDecimal;

    move-result-object v3

    .line 85
    .local v3, "val":Ljava/math/BigDecimal;
    invoke-virtual {v1, v6}, Lgxt;->a(I)V

    .line 87
    const-class v5, Ljava/math/BigInteger;

    if-ne p2, v5, :cond_3

    .line 88
    invoke-virtual {v3}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 90
    goto :goto_0

    .line 2362
    .end local v3    # "val":Ljava/math/BigDecimal;
    :cond_4
    invoke-virtual {p1, v0}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 96
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 100
    const-class v5, Ljava/math/BigInteger;

    if-ne p2, v5, :cond_5

    .line 101
    invoke-static {v4}, Lgzd;->f(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_5
    invoke-static {v4}, Lgzd;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v0, p1, Lgyq;->b:Lgyy;

    .line 43
    .local v0, "out":Lgyy;
    if-nez p2, :cond_2

    .line 44
    iget v2, v0, Lgyy;->c:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 45
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lgyy;->write(I)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    instance-of v2, p2, Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    move-object v1, p2

    .line 53
    check-cast v1, Ljava/math/BigInteger;

    .line 54
    .local v1, "val":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "val":Ljava/math/BigInteger;
    :cond_3
    move-object v1, p2

    .line 58
    check-cast v1, Ljava/math/BigDecimal;

    .line 59
    .local v1, "val":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgyy;->write(Ljava/lang/String;)V

    .line 61
    iget v2, v0, Lgyy;->c:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const-class v2, Ljava/math/BigDecimal;

    if-eq p4, v2, :cond_0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Lgyy;->write(I)V

    goto :goto_0
.end method
