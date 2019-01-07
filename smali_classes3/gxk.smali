.class public abstract Lgxk;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lgxl;
.implements Lgxn;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static final DEFAULT_TYPE_KEY:Ljava/lang/String; = "@type"

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.1.70"

.field public static defaultLocale:Ljava/util/Locale;

.field public static defaultTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lgxk;->defaultTimeZone:Ljava/util/TimeZone;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lgxk;->defaultLocale:Ljava/util/Locale;

    .line 65
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/lit8 v0, v1, 0x0

    .line 67
    .local v0, "features":I
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    .line 68
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    .line 69
    sput v0, Lgxk;->DEFAULT_PARSER_FEATURE:I

    .line 72
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    sput-object v1, Lgxk;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 78
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/lit8 v0, v1, 0x0

    .line 79
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    .line 80
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    .line 81
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    .line 84
    sput v0, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 88
    sget v0, Lgxk;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lgxk;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-object v1

    .line 96
    :cond_0
    new-instance v0, Lgxr;

    sget-object v2, Lgyb;->a:Lgyb;

    invoke-direct {v0, p0, v2, p1}, Lgxr;-><init>(Ljava/lang/String;Lgyb;I)V

    .line 97
    .local v0, "parser":Lgxr;
    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Lgxr;->e()V

    .line 101
    invoke-virtual {v0}, Lgxr;->close()V

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Lgyb;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "config"    # Lgyb;

    .prologue
    .line 373
    sget v0, Lgxk;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0}, Lgxk;->parse(Ljava/lang/String;Lgyb;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lgyb;I)Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "config"    # Lgyb;
    .param p2, "features"    # I

    .prologue
    const/4 v1, 0x0

    .line 389
    if-nez p0, :cond_0

    .line 400
    :goto_0
    return-object v1

    .line 393
    :cond_0
    new-instance v0, Lgxr;

    invoke-direct {v0, p0, p1, p2}, Lgxr;-><init>(Ljava/lang/String;Lgyb;I)V

    .line 4362
    .local v0, "parser":Lgxr;
    invoke-virtual {v0, v1}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 396
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Lgxr;->e()V

    .line 398
    invoke-virtual {v0}, Lgxr;->close()V

    goto :goto_0
.end method

.method public static varargs parse(Ljava/lang/String;Lgyb;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "config"    # Lgyb;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 377
    sget v0, Lgxk;->DEFAULT_PARSER_FEATURE:I

    .line 378
    .local v0, "featuresValue":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 379
    aget-object v2, p2, v1

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v2

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {p0, p1, v0}, Lgxk;->parse(Ljava/lang/String;Lgyb;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static final varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 115
    sget v1, Lgxk;->DEFAULT_PARSER_FEATURE:I

    .line 116
    .local v1, "featureValues":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 117
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v4, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v4

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_0
    invoke-static {p0, v1}, Lgxk;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static final varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1, p1}, Lgxk;->parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "UTF-8 not support"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, v0}, Lgxk;->parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONArray;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0

    .line 290
    :cond_0
    sget v1, Lgxk;->DEFAULT_PARSER_FEATURE:I

    .line 291
    .local v1, "featuresValue":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, p1

    if-ge v2, v6, :cond_1

    .line 292
    aget-object v6, p1, v2

    iget v6, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v6

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    :cond_1
    new-instance v4, Lgxr;

    sget-object v6, Lgyb;->a:Lgyb;

    invoke-direct {v4, p0, v6, v1}, Lgxr;-><init>(Ljava/lang/String;Lgyb;I)V

    .line 299
    .local v4, "parser":Lgxr;
    iget-object v3, v4, Lgxr;->e:Lgxt;

    .line 300
    .local v3, "lexer":Lgxt;
    invoke-virtual {v3}, Lgxt;->a()I

    move-result v5

    .line 301
    .local v5, "token":I
    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 302
    invoke-virtual {v3}, Lgxt;->e()V

    .line 303
    const/4 v0, 0x0

    .line 313
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    :goto_2
    invoke-virtual {v4}, Lgxr;->close()V

    goto :goto_0

    .line 304
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    const/16 v6, 0x14

    if-ne v5, v6, :cond_3

    .line 305
    const/4 v0, 0x0

    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_2

    .line 307
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 308
    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v4, v0}, Lgxr;->b(Ljava/util/Collection;)V

    .line 310
    invoke-virtual {v4}, Lgxr;->e()V

    goto :goto_2
.end method

.method public static final parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 320
    const/4 v1, 0x0

    .line 342
    :goto_0
    return-object v1

    .line 325
    :cond_0
    new-instance v2, Lgxr;

    sget-object v4, Lgyb;->a:Lgyb;

    invoke-direct {v2, p0, v4}, Lgxr;-><init>(Ljava/lang/String;Lgyb;)V

    .line 326
    .local v2, "parser":Lgxr;
    iget-object v0, v2, Lgxr;->e:Lgxt;

    .line 327
    .local v0, "lexer":Lgxt;
    invoke-virtual {v0}, Lgxt;->a()I

    move-result v3

    .line 328
    .local v3, "token":I
    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 329
    invoke-virtual {v0}, Lgxt;->e()V

    .line 330
    const/4 v1, 0x0

    .line 340
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    invoke-virtual {v2}, Lgxr;->close()V

    goto :goto_0

    .line 331
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lgxt;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    const/4 v1, 0x0

    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_1

    .line 334
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3701
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v2, p1, v1}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 337
    invoke-virtual {v2}, Lgxr;->e()V

    goto :goto_1
.end method

.method public static final parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "types"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    if-nez p0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    .line 352
    :cond_0
    new-instance v2, Lgxr;

    sget-object v3, Lgyb;->a:Lgyb;

    invoke-direct {v2, p0, v3}, Lgxr;-><init>(Ljava/lang/String;Lgyb;)V

    .line 353
    .local v2, "parser":Lgxr;
    invoke-virtual {v2, p1}, Lgxr;->a([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v1

    .line 354
    .local v1, "objectArray":[Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 355
    const/4 v0, 0x0

    .line 360
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {v2}, Lgxr;->e()V

    .line 362
    invoke-virtual {v2}, Lgxr;->close()V

    goto :goto_0

    .line 357
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_1
.end method

.method public static final parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONObject;

    if-nez v3, :cond_0

    if-nez v2, :cond_2

    .line 149
    :cond_0
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .end local v2    # "obj":Ljava/lang/Object;
    move-object v1, v2

    .line 159
    :cond_1
    :goto_0
    return-object v1

    .line 152
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-static {v2}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 153
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    sget v3, Lgxk;->DEFAULT_PARSER_FEATURE:I

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 155
    .local v0, "autoTypeSupport":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 156
    const-string/jumbo v3, "@type"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    .end local v0    # "autoTypeSupport":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-static {p0, p1}, Lgxk;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, "obj":Ljava/lang/Object;
    instance-of v5, v3, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_0

    .line 126
    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 143
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 129
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static {v3}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 130
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    sget v5, Lgxk;->DEFAULT_PARSER_FEATURE:I

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v6, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 131
    .local v0, "autoTypeSupport":Z
    :goto_1
    if-nez v0, :cond_3

    .line 132
    array-length v5, p1

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v1, p1, v4

    .line 133
    .local v1, "feature":Lcom/alibaba/fastjson/parser/Feature;
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v1, v6, :cond_1

    .line 134
    const/4 v0, 0x1

    .line 132
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "autoTypeSupport":Z
    .end local v1    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_2
    move v0, v4

    .line 130
    goto :goto_1

    .line 139
    .restart local v0    # "autoTypeSupport":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 140
    const-string/jumbo v4, "@type"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v3, v2

    .line 143
    goto :goto_0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Lgxp;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lgxp",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "type":Lgxp;, "Lgxp<TT;>;"
    iget-object v0, p1, Lgxp;->type:Ljava/lang/reflect/Type;

    sget-object v1, Lgyb;->a:Lgyb;

    sget v2, Lgxk;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0, v1, v2, p2}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lgyb;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lgyl;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "processor"    # Lgyl;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lgyl;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lgyb;->a:Lgyb;

    sget v4, Lgxk;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lgyb;Lgyl;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lgyb;->a:Lgyb;

    sget v1, Lgxk;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lgyb;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "featureValues"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 190
    if-nez p0, :cond_0

    .line 205
    :goto_0
    return-object v2

    .line 194
    :cond_0
    array-length v4, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, p3, v3

    .line 195
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v5, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p2, v5

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_1
    new-instance v1, Lgxr;

    sget-object v3, Lgyb;->a:Lgyb;

    invoke-direct {v1, p0, v3, p2}, Lgxr;-><init>(Ljava/lang/String;Lgyb;I)V

    .line 1659
    .local v1, "parser":Lgxr;
    invoke-virtual {v1, p1, v2}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 201
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1}, Lgxr;->e()V

    .line 203
    invoke-virtual {v1}, Lgxr;->close()V

    goto :goto_0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lgyb;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lgyb;
    .param p3, "featureValues"    # I
    .param p4, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lgyb;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lgyb;Lgyl;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lgyb;Lgyl;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lgyb;
    .param p3, "processor"    # Lgyl;
    .param p4, "featureValues"    # I
    .param p5, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lgyb;",
            "Lgyl;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 216
    if-nez p0, :cond_0

    .line 244
    .end local p3    # "processor":Lgyl;
    :goto_0
    return-object v2

    .line 220
    .restart local p3    # "processor":Lgyl;
    :cond_0
    array-length v4, p5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, p5, v3

    .line 221
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v5, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p4, v5

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_1
    new-instance v1, Lgxr;

    invoke-direct {v1, p0, p2, p4}, Lgxr;-><init>(Ljava/lang/String;Lgyb;I)V

    .line 226
    .local v1, "parser":Lgxr;
    instance-of v3, p3, Lgyh;

    if-eqz v3, :cond_2

    .line 227
    invoke-virtual {v1}, Lgxr;->c()Ljava/util/List;

    move-result-object v4

    move-object v3, p3

    check-cast v3, Lgyh;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2
    instance-of v3, p3, Lgyg;

    if-eqz v3, :cond_3

    .line 231
    invoke-virtual {v1}, Lgxr;->b()Ljava/util/List;

    move-result-object v4

    move-object v3, p3

    check-cast v3, Lgyg;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_3
    instance-of v3, p3, Lgyj;

    if-eqz v3, :cond_4

    .line 235
    check-cast p3, Lgyj;

    .end local p3    # "processor":Lgyl;
    iput-object p3, v1, Lgxr;->j:Lgyj;

    .line 2659
    :cond_4
    invoke-virtual {v1, p1, v2}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 240
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1}, Lgxr;->e()V

    .line 242
    invoke-virtual {v1}, Lgxr;->close()V

    goto :goto_0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lgyl;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "processor"    # Lgyl;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lgyl;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v2, Lgyb;->a:Lgyb;

    sget v4, Lgxk;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lgyb;Lgyl;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lgyb;->a:Lgyb;

    sget v1, Lgxk;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lgyb;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .param p0, "input"    # [B
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, p1, p2}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 252
    :catch_0
    move-exception v0

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "UTF-8 not support"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .param p0, "input"    # [C
    .param p1, "length"    # I
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 258
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-object v3

    .line 262
    :cond_1
    sget v1, Lgxk;->DEFAULT_PARSER_FEATURE:I

    .line 263
    .local v1, "featureValues":I
    array-length v5, p3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, p3, v4

    .line 264
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v6, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v6

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 267
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_2
    new-instance v2, Lgxr;

    sget-object v4, Lgyb;->a:Lgyb;

    invoke-direct {v2, p0, p1, v4, v1}, Lgxr;-><init>([CILgyb;I)V

    .line 3659
    .local v2, "parser":Lgxr;
    invoke-virtual {v2, p2, v3}, Lgxr;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 270
    .local v3, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2}, Lgxr;->e()V

    .line 272
    invoke-virtual {v2}, Lgxr;->close()V

    goto :goto_0
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;

    .prologue
    .line 595
    sget-object v0, Lgyw;->a:Lgyw;

    invoke-static {p0, v0}, Lgxk;->toJSON(Ljava/lang/Object;Lgyw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final toJSON(Ljava/lang/Object;Lgyb;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "mapping"    # Lgyb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 600
    sget-object v0, Lgyw;->a:Lgyw;

    invoke-static {p0, v0}, Lgxk;->toJSON(Ljava/lang/Object;Lgyw;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toJSON(Ljava/lang/Object;Lgyw;)Ljava/lang/Object;
    .locals 24
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "config"    # Lgyw;

    .prologue
    .line 605
    if-nez p0, :cond_1

    .line 606
    const/16 p0, 0x0

    .line 691
    .end local p0    # "javaObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 609
    .restart local p0    # "javaObject":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    instance-of v0, v0, Lgxk;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 610
    check-cast p0, Lgxk;

    goto :goto_0

    .line 613
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v17, p0

    .line 614
    check-cast v17, Ljava/util/Map;

    .line 616
    .local v17, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v19

    .line 619
    .local v19, "size":I
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/util/LinkedHashMap;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 620
    new-instance v9, Ljava/util/LinkedHashMap;

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 626
    .local v9, "innerMap":Ljava/util/Map;
    :goto_1
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12, v9}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 628
    .local v12, "json":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 629
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 630
    .local v15, "key":Ljava/lang/Object;
    invoke-static {v15}, Lgzd;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 631
    .local v13, "jsonKey":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 632
    .local v14, "jsonValue":Ljava/lang/Object;
    invoke-virtual {v12, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 621
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v9    # "innerMap":Ljava/util/Map;
    .end local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "jsonKey":Ljava/lang/String;
    .end local v14    # "jsonValue":Ljava/lang/Object;
    .end local v15    # "key":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/util/TreeMap;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 622
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .restart local v9    # "innerMap":Ljava/util/Map;
    goto :goto_1

    .line 624
    .end local v9    # "innerMap":Ljava/util/Map;
    :cond_4
    new-instance v9, Ljava/util/HashMap;

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/util/HashMap;-><init>(I)V

    .restart local v9    # "innerMap":Ljava/util/Map;
    goto :goto_1

    .restart local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    move-object/from16 p0, v12

    .line 635
    goto :goto_0

    .line 638
    .end local v9    # "innerMap":Ljava/util/Map;
    .end local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v19    # "size":I
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v4, p0

    .line 639
    check-cast v4, Ljava/util/Collection;

    .line 641
    .local v4, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 643
    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 644
    .local v10, "item":Ljava/lang/Object;
    invoke-static {v10}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 645
    .restart local v14    # "jsonValue":Ljava/lang/Object;
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v10    # "item":Ljava/lang/Object;
    .end local v14    # "jsonValue":Ljava/lang/Object;
    :cond_7
    move-object/from16 p0, v2

    .line 648
    goto/16 :goto_0

    .line 651
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 653
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 654
    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "javaObject":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 657
    .restart local p0    # "javaObject":Ljava/lang/Object;
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 658
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v16

    .line 660
    .local v16, "len":I
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    move/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 662
    .restart local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v8, v0, :cond_a

    .line 663
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    .line 664
    .restart local v10    # "item":Ljava/lang/Object;
    invoke-static {v10}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 665
    .restart local v14    # "jsonValue":Ljava/lang/Object;
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 662
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v10    # "item":Ljava/lang/Object;
    .end local v14    # "jsonValue":Ljava/lang/Object;
    :cond_a
    move-object/from16 p0, v2

    .line 668
    goto/16 :goto_0

    .line 671
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v8    # "i":I
    .end local v16    # "len":I
    :cond_b
    invoke-static {v3}, Lgyb;->a(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 675
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v18

    .line 676
    .local v18, "serializer":Lgys;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v11, v18

    .line 677
    check-cast v11, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 679
    .local v11, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 681
    .restart local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v20

    .line 682
    .local v20, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 683
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 685
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v5

    .line 686
    .local v5, "e":Ljava/lang/Exception;
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v22, "toJSON error"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v20    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    move-object/from16 p0, v12

    .line 688
    goto/16 :goto_0

    .line 691
    .end local v11    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    const/16 p0, 0x0

    goto/16 :goto_0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lgyw;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lgyw;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 486
    const/4 v0, 0x0

    new-array v0, v0, [Lgyx;

    invoke-static {p0, p1, v0, p2, p3}, Lgxk;->toJSONBytes(Ljava/lang/Object;Lgyw;[Lgyx;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;Lgyw;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lgyw;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 470
    new-instance v0, Lgyy;

    const/4 v2, 0x0

    sget v3, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, v2, v3, p2}, Lgyy;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 473
    .local v0, "out":Lgyy;
    :try_start_0
    new-instance v1, Lgyq;

    invoke-direct {v1, v0, p1}, Lgyq;-><init>(Lgyy;Lgyw;)V

    .line 474
    .local v1, "serializer":Lgyq;
    invoke-virtual {v1, p0}, Lgyq;->b(Ljava/lang/Object;)V

    .line 476
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Lgyy;->a(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 478
    invoke-virtual {v0}, Lgyy;->close()V

    .line 476
    return-object v2

    .line 478
    .end local v1    # "serializer":Lgyq;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lgyy;->close()V

    .line 479
    throw v2
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lgyw;[Lgyx;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lgyw;
    .param p2, "filters"    # [Lgyx;
    .param p3, "defaultFeatures"    # I
    .param p4, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 500
    new-instance v2, Lgyy;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p3, p4}, Lgyy;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 503
    .local v2, "out":Lgyy;
    :try_start_0
    new-instance v3, Lgyq;

    invoke-direct {v3, v2, p1}, Lgyq;-><init>(Lgyy;Lgyw;)V

    .line 505
    .local v3, "serializer":Lgyq;
    if-eqz p2, :cond_6

    .line 506
    array-length v6, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v1, p2, v5

    .line 507
    .local v1, "filter":Lgyx;
    if-eqz v1, :cond_5

    .line 511
    instance-of v4, v1, Lgyu;

    if-eqz v4, :cond_0

    .line 512
    invoke-virtual {v3}, Lgyq;->i()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lgyu;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_0
    instance-of v4, v1, Lgyr;

    if-eqz v4, :cond_1

    .line 516
    invoke-virtual {v3}, Lgyq;->h()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lgyr;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_1
    instance-of v4, v1, Lgyz;

    if-eqz v4, :cond_2

    .line 520
    invoke-virtual {v3}, Lgyq;->b()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lgyz;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_2
    instance-of v4, v1, Lgyt;

    if-eqz v4, :cond_3

    .line 524
    invoke-virtual {v3}, Lgyq;->j()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lgyt;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_3
    instance-of v4, v1, Lgyn;

    if-eqz v4, :cond_4

    .line 528
    invoke-virtual {v3}, Lgyq;->f()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lgyn;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_4
    instance-of v4, v1, Lgym;

    if-eqz v4, :cond_5

    .line 532
    invoke-virtual {v3}, Lgyq;->g()Ljava/util/List;

    move-result-object v4

    check-cast v1, Lgym;

    .end local v1    # "filter":Lgyx;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 537
    :cond_6
    invoke-virtual {v3, p0}, Lgyq;->b(Ljava/lang/Object;)V

    .line 538
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Lgyy;->a(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 540
    invoke-virtual {v2}, Lgyy;->close()V

    .line 538
    return-object v4

    .line 540
    .end local v3    # "serializer":Lgyq;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lgyy;->close()V

    .line 541
    throw v4
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 435
    new-instance v0, Lgyy;

    const/4 v2, 0x0

    sget v3, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, v2, v3, p1}, Lgyy;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 438
    .local v0, "out":Lgyy;
    :try_start_0
    new-instance v1, Lgyq;

    sget-object v2, Lgyw;->a:Lgyw;

    invoke-direct {v1, v0, v2}, Lgyq;-><init>(Lgyy;Lgyw;)V

    .line 440
    .local v1, "serializer":Lgyq;
    invoke-virtual {v1, p0}, Lgyq;->b(Ljava/lang/Object;)V

    .line 442
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Lgyy;->a(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 444
    invoke-virtual {v0}, Lgyy;->close()V

    .line 442
    return-object v2

    .line 444
    .end local v1    # "serializer":Lgyq;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lgyy;->close()V

    .line 445
    throw v2
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lgyx;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filters"    # [Lgyx;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 493
    sget-object v0, Lgyw;->a:Lgyw;

    sget v1, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1, v1, p2}, Lgxk;->toJSONBytes(Ljava/lang/Object;Lgyw;[Lgyx;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 404
    sget-object v1, Lgyw;->a:Lgyw;

    sget v4, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    const/4 v0, 0x0

    new-array v5, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v0, p0

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lgxk;->toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultFeatures"    # I
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v2, 0x0

    .line 415
    sget-object v1, Lgyw;->a:Lgyw;

    move-object v0, p0

    move-object v3, v2

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lgxk;->toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lgyw;Lgyx;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lgyw;
    .param p2, "filter"    # Lgyx;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 454
    const/4 v0, 0x1

    new-array v2, v0, [Lgyx;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v3, 0x0

    sget v4, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgxk;->toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lgyw;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lgyw;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v2, 0x0

    .line 449
    sget v4, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lgxk;->toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 9
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lgyw;
    .param p2, "filters"    # [Lgyx;
    .param p3, "dateFormat"    # Ljava/lang/String;
    .param p4, "defaultFeatures"    # I
    .param p5, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 715
    new-instance v3, Lgyy;

    invoke-direct {v3, v6, p4, p5}, Lgyy;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 718
    .local v3, "out":Lgyy;
    :try_start_0
    new-instance v4, Lgyq;

    invoke-direct {v4, v3, p1}, Lgyq;-><init>(Lgyy;Lgyw;)V

    .line 719
    .local v4, "serializer":Lgyq;
    array-length v7, p5

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, p5, v6

    .line 720
    .local v1, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    const/4 v8, 0x1

    invoke-virtual {v4, v1, v8}, Lgyq;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 719
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 723
    .end local v1    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 5105
    iput-object p3, v4, Lgyq;->i:Ljava/lang/String;

    .line 5106
    iget-object v6, v4, Lgyq;->j:Ljava/text/DateFormat;

    if-eqz v6, :cond_1

    .line 5107
    const/4 v6, 0x0

    iput-object v6, v4, Lgyq;->j:Ljava/text/DateFormat;

    .line 725
    :cond_1
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lgyq;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 728
    :cond_2
    if-eqz p2, :cond_9

    .line 729
    array-length v7, p2

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_9

    aget-object v2, p2, v6

    .line 730
    .local v2, "filter":Lgyx;
    if-eqz v2, :cond_8

    .line 734
    instance-of v5, v2, Lgyu;

    if-eqz v5, :cond_3

    .line 735
    invoke-virtual {v4}, Lgyq;->i()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lgyu;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_3
    instance-of v5, v2, Lgyr;

    if-eqz v5, :cond_4

    .line 739
    invoke-virtual {v4}, Lgyq;->h()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lgyr;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_4
    instance-of v5, v2, Lgyz;

    if-eqz v5, :cond_5

    .line 743
    invoke-virtual {v4}, Lgyq;->b()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lgyz;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_5
    instance-of v5, v2, Lgyt;

    if-eqz v5, :cond_6

    .line 747
    invoke-virtual {v4}, Lgyq;->j()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lgyt;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_6
    instance-of v5, v2, Lgyn;

    if-eqz v5, :cond_7

    .line 751
    invoke-virtual {v4}, Lgyq;->f()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lgyn;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_7
    instance-of v5, v2, Lgym;

    if-eqz v5, :cond_8

    .line 755
    invoke-virtual {v4}, Lgyq;->g()Ljava/util/List;

    move-result-object v5

    check-cast v2, Lgym;

    .end local v2    # "filter":Lgyx;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_8
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    .line 760
    :cond_9
    invoke-virtual {v4, p0}, Lgyq;->b(Ljava/lang/Object;)V

    .line 762
    invoke-virtual {v3}, Lgyy;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 764
    invoke-virtual {v3}, Lgyy;->close()V

    .line 762
    return-object v5

    .line 764
    .end local v4    # "serializer":Lgyq;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lgyy;->close()V

    .line 765
    throw v5
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lgyw;
    .param p2, "filters"    # [Lgyx;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 459
    const/4 v3, 0x0

    sget v4, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgxk;->toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lgyx;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filter"    # Lgyx;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 427
    sget-object v1, Lgyw;->a:Lgyw;

    const/4 v0, 0x1

    new-array v2, v0, [Lgyx;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    sget v4, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lgxk;->toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "prettyFormat"    # Z

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    invoke-static {p0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 549
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lgxk;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 411
    sget v0, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lgxk;->toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lgyx;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filters"    # [Lgyx;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 431
    sget-object v1, Lgyw;->a:Lgyw;

    const/4 v3, 0x0

    sget v4, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lgxk;->toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "dateFormat"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 423
    sget-object v1, Lgyw;->a:Lgyw;

    const/4 v2, 0x0

    sget v4, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lgxk;->toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONStringZ(Ljava/lang/Object;Lgyw;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "mapping"    # Lgyw;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v2, 0x0

    .line 463
    sget-object v1, Lgyw;->a:Lgyw;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lgxk;->toJSONString(Ljava/lang/Object;Lgyw;[Lgyx;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toJavaObject(Lgxk;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Lgxk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxk;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 695
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lgyb;->a:Lgyb;

    invoke-static {p0, p1, v0}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 553
    new-instance v0, Lgyy;

    sget v2, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, p1, v2, p2}, Lgyy;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 556
    .local v0, "out":Lgyy;
    :try_start_0
    new-instance v1, Lgyq;

    sget-object v2, Lgyw;->a:Lgyw;

    invoke-direct {v1, v0, v2}, Lgyq;-><init>(Lgyy;Lgyw;)V

    .line 558
    .local v1, "serializer":Lgyq;
    invoke-virtual {v1, p0}, Lgyq;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    invoke-virtual {v0}, Lgyy;->close()V

    .line 561
    return-void

    .line 560
    .end local v1    # "serializer":Lgyq;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lgyy;->close()V

    .line 561
    throw v2
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 571
    new-instance v0, Lgyy;

    const/4 v1, 0x0

    sget v2, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v0, v1, v2, v3}, Lgyy;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 573
    .local v0, "out":Lgyy;
    :try_start_0
    new-instance v1, Lgyq;

    sget-object v2, Lgyw;->a:Lgyw;

    invoke-direct {v1, v0, v2}, Lgyq;-><init>(Lgyy;Lgyw;)V

    .line 574
    invoke-virtual {v1, p0}, Lgyq;->b(Ljava/lang/Object;)V

    .line 575
    invoke-virtual {v0}, Lgyy;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 577
    invoke-virtual {v0}, Lgyy;->close()V

    .line 575
    return-object v1

    .line 577
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lgyy;->close()V

    .line 578
    throw v1
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lgyb;->a()Lgyb;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgzd;->a(Ljava/lang/Object;Ljava/lang/Class;Lgyb;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lgxk;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 5
    .param p1, "appendable"    # Ljava/lang/Appendable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 582
    new-instance v1, Lgyy;

    const/4 v2, 0x0

    sget v3, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v1, v2, v3, v4}, Lgyy;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 584
    .local v1, "out":Lgyy;
    :try_start_0
    new-instance v2, Lgyq;

    sget-object v3, Lgyw;->a:Lgyw;

    invoke-direct {v2, v1, v3}, Lgyq;-><init>(Lgyy;Lgyw;)V

    invoke-virtual {v2, p0}, Lgyq;->b(Ljava/lang/Object;)V

    .line 585
    invoke-virtual {v1}, Lgyy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-virtual {v1}, Lgyy;->close()V

    .line 590
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lgyy;->close()V

    .line 590
    throw v2
.end method
