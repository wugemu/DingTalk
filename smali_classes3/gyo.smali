.class public final Lgyo;
.super Ljava/lang/Object;
.source "FieldSerializer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgyo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lgyo;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lgza;

.field public final b:Z

.field public final c:I

.field protected final d:Ljava/lang/String;

.field public e:[C

.field private f:Lgyo$a;


# direct methods
.method public constructor <init>(Lgza;)V
    .locals 12
    .param p1, "fieldInfo"    # Lgza;

    .prologue
    const/16 v11, 0x22

    const/4 v7, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lgyo;->a:Lgza;

    .line 41
    const/4 v5, 0x0

    .line 42
    .local v5, "writeNull":Z
    invoke-virtual {p1}, Lgza;->a()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 43
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v2, 0x0

    .line 44
    .local v2, "format":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 45
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v1, v8, v6

    .line 46
    .local v1, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v1, v10, :cond_0

    .line 47
    const/4 v5, 0x1

    .line 45
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 55
    const/4 v2, 0x0

    .line 58
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v6

    iput v6, p0, Lgyo;->c:I

    .line 62
    :goto_1
    iput-boolean v5, p0, Lgyo;->b:Z

    .line 63
    iput-object v2, p0, Lgyo;->d:Ljava/lang/String;

    .line 65
    iget-object v3, p1, Lgza;->a:Ljava/lang/String;

    .line 66
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 67
    .local v4, "nameLen":I
    add-int/lit8 v6, v4, 0x3

    new-array v6, v6, [C

    iput-object v6, p0, Lgyo;->e:[C

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v8, p0, Lgyo;->e:[C

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v6, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 69
    iget-object v6, p0, Lgyo;->e:[C

    aput-char v11, v6, v7

    .line 70
    iget-object v6, p0, Lgyo;->e:[C

    add-int/lit8 v7, v4, 0x1

    aput-char v11, v6, v7

    .line 71
    iget-object v6, p0, Lgyo;->e:[C

    add-int/lit8 v7, v4, 0x2

    const/16 v8, 0x3a

    aput-char v8, v6, v7

    .line 72
    return-void

    .line 60
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameLen":I
    :cond_3
    iput v7, p0, Lgyo;->c:I

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 92
    :try_start_0
    iget-object v3, p0, Lgyo;->a:Lgza;

    .line 1351
    iget-boolean v4, v3, Lgza;->d:Z

    if-eqz v4, :cond_0

    .line 1352
    iget-object v3, v3, Lgza;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-object v3

    .line 1355
    :cond_0
    iget-object v3, v3, Lgza;->b:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgyo;->a:Lgza;

    iget-object v3, v3, Lgza;->b:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgyo;->a:Lgza;

    iget-object v1, v3, Lgza;->b:Ljava/lang/reflect/Method;

    :goto_1
    check-cast v1, Ljava/lang/reflect/Member;

    .line 98
    .local v1, "member":Ljava/lang/reflect/Member;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "qualifiedName":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "get property error\u3002 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 94
    .end local v1    # "member":Ljava/lang/reflect/Member;
    .end local v2    # "qualifiedName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lgyo;->a:Lgza;

    iget-object v1, v3, Lgza;->c:Ljava/lang/reflect/Field;

    goto :goto_1
.end method

.method public final a(Lgyq;)V
    .locals 5
    .param p1, "serializer"    # Lgyq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 75
    iget-object v1, p1, Lgyq;->b:Lgyy;

    .line 77
    .local v1, "out":Lgyy;
    iget v0, v1, Lgyy;->c:I

    .line 79
    .local v0, "featurs":I
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 80
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lgyo;->e:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lgyo;->e:[C

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lgyy;->write([CII)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v2, p0, Lgyo;->a:Lgza;

    iget-object v2, v2, Lgza;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgyy;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Lgyq;Ljava/lang/Object;)V
    .locals 9
    .param p1, "serializer"    # Lgyq;
    .param p2, "propertyValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 105
    iget-object v5, p0, Lgyo;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 106
    iget-object v6, p0, Lgyo;->d:Ljava/lang/String;

    .line 2298
    instance-of v5, p2, Ljava/util/Date;

    if-eqz v5, :cond_1

    .line 2299
    invoke-virtual {p1}, Lgyq;->a()Ljava/text/DateFormat;

    move-result-object v5

    .line 2300
    if-nez v5, :cond_0

    .line 2301
    new-instance v5, Ljava/text/SimpleDateFormat;

    iget-object v7, p1, Lgyq;->n:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2302
    iget-object v6, p1, Lgyq;->m:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2304
    :cond_0
    check-cast p2, Ljava/util/Date;

    .end local p2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 2305
    iget-object v6, p1, Lgyq;->b:Lgyy;

    invoke-virtual {v6, v5}, Lgyy;->b(Ljava/lang/String;)V

    .line 2306
    :goto_0
    return-void

    .line 2308
    .restart local p2    # "propertyValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, p2}, Lgyq;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v5, p0, Lgyo;->f:Lgyo$a;

    if-nez v5, :cond_3

    .line 113
    if-nez p2, :cond_4

    .line 114
    iget-object v5, p0, Lgyo;->a:Lgza;

    iget-object v1, v5, Lgza;->f:Ljava/lang/Class;

    .line 119
    .local v1, "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    iget-object v5, p1, Lgyq;->a:Lgyw;

    invoke-virtual {v5, v1}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v0

    .line 120
    .local v0, "fieldSerializer":Lgys;
    new-instance v5, Lgyo$a;

    invoke-direct {v5, v0, v1}, Lgyo$a;-><init>(Lgys;Ljava/lang/Class;)V

    iput-object v5, p0, Lgyo;->f:Lgyo$a;

    .line 123
    .end local v0    # "fieldSerializer":Lgys;
    .end local v1    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget-object v2, p0, Lgyo;->f:Lgyo$a;

    .line 125
    .local v2, "runtimeInfo":Lgyo$a;
    if-nez p2, :cond_8

    .line 126
    iget v5, p0, Lgyo;->c:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    const-class v5, Ljava/lang/Number;

    iget-object v6, v2, Lgyo$a;->b:Ljava/lang/Class;

    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    iget-object v5, p1, Lgyq;->b:Lgyy;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lgyy;->write(I)V

    goto :goto_0

    .line 116
    .end local v2    # "runtimeInfo":Lgyo$a;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 130
    .end local v1    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "runtimeInfo":Lgyo$a;
    :cond_5
    iget v5, p0, Lgyo;->c:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    const-class v5, Ljava/lang/Boolean;

    iget-object v6, v2, Lgyo$a;->b:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    .line 132
    iget-object v5, p1, Lgyq;->b:Lgyy;

    const-string/jumbo v6, "false"

    invoke-virtual {v5, v6}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_6
    iget v5, p0, Lgyo;->c:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    const-class v5, Ljava/util/Collection;

    iget-object v6, v2, Lgyo$a;->b:Ljava/lang/Class;

    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 136
    iget-object v5, p1, Lgyq;->b:Lgyy;

    const-string/jumbo v6, "[]"

    invoke-virtual {v5, v6}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_7
    iget-object v5, v2, Lgyo$a;->a:Lgys;

    const/4 v6, 0x0

    iget-object v7, p0, Lgyo;->a:Lgza;

    iget-object v7, v7, Lgza;->a:Ljava/lang/String;

    iget-object v8, v2, Lgyo$a;->b:Ljava/lang/Class;

    invoke-interface {v5, p1, v6, v7, v8}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 144
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 145
    .local v3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, v2, Lgyo$a;->b:Ljava/lang/Class;

    if-ne v3, v5, :cond_9

    .line 146
    iget-object v5, v2, Lgyo$a;->a:Lgys;

    iget-object v6, p0, Lgyo;->a:Lgza;

    iget-object v6, v6, Lgza;->a:Ljava/lang/String;

    iget-object v7, p0, Lgyo;->a:Lgza;

    iget-object v7, v7, Lgza;->g:Ljava/lang/reflect/Type;

    invoke-interface {v5, p1, p2, v6, v7}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 150
    :cond_9
    iget-object v5, p1, Lgyq;->a:Lgyw;

    invoke-virtual {v5, v3}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v4

    .line 151
    .local v4, "valueSerializer":Lgys;
    iget-object v5, p0, Lgyo;->a:Lgza;

    iget-object v5, v5, Lgza;->a:Ljava/lang/String;

    iget-object v6, p0, Lgyo;->a:Lgza;

    iget-object v6, v6, Lgza;->g:Ljava/lang/reflect/Type;

    invoke-interface {v4, p1, p2, v5, v6}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 29
    check-cast p1, Lgyo;

    .line 3166
    iget-object v0, p0, Lgyo;->a:Lgza;

    iget-object v1, p1, Lgyo;->a:Lgza;

    invoke-virtual {v0, v1}, Lgza;->a(Lgza;)I

    move-result v0

    .line 29
    return v0
.end method
