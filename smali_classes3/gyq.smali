.class public final Lgyq;
.super Ljava/lang/Object;
.source "JSONSerializer.java"


# instance fields
.field public final a:Lgyw;

.field public final b:Lgyy;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgyn;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgym;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgyt;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgyz;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgyr;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgyu;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/text/DateFormat;

.field public k:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lgyv;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lgyv;

.field public m:Ljava/util/TimeZone;

.field public n:Ljava/util/Locale;

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lgyy;

    const/4 v1, 0x0

    sget v2, Lgxk;->DEFAULT_GENERATE_FEATURE:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v0, v1, v2, v3}, Lgyy;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    sget-object v1, Lgyw;->a:Lgyw;

    invoke-direct {p0, v0, v1}, Lgyq;-><init>(Lgyy;Lgyw;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lgyy;)V
    .locals 1
    .param p1, "out"    # Lgyy;

    .prologue
    .line 66
    sget-object v0, Lgyw;->a:Lgyw;

    invoke-direct {p0, p1, v0}, Lgyq;-><init>(Lgyy;Lgyw;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lgyy;Lgyw;)V
    .locals 2
    .param p1, "out"    # Lgyy;
    .param p2, "config"    # Lgyw;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lgyq;->c:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lgyq;->d:Ljava/util/List;

    .line 44
    iput-object v1, p0, Lgyq;->e:Ljava/util/List;

    .line 45
    iput-object v1, p0, Lgyq;->f:Ljava/util/List;

    .line 46
    iput-object v1, p0, Lgyq;->g:Ljava/util/List;

    .line 47
    iput-object v1, p0, Lgyq;->h:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lgyq;->o:I

    .line 54
    iput-object v1, p0, Lgyq;->k:Ljava/util/IdentityHashMap;

    .line 57
    sget-object v0, Lgxk;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lgyq;->m:Ljava/util/TimeZone;

    .line 58
    sget-object v0, Lgxk;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lgyq;->n:Ljava/util/Locale;

    .line 74
    iput-object p1, p0, Lgyq;->b:Lgyy;

    .line 75
    iput-object p2, p0, Lgyq;->a:Lgyw;

    .line 76
    sget-object v0, Lgxk;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lgyq;->m:Ljava/util/TimeZone;

    .line 77
    return-void
.end method

.method public static a(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "serializer"    # Lgyq;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    .prologue
    .line 333
    iget-object v1, p0, Lgyq;->f:Ljava/util/List;

    .line 334
    .local v1, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lgyz;>;"
    if-eqz v1, :cond_1

    .line 335
    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 336
    invoke-static {p2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyz;

    .line 339
    .local v0, "valueFilter":Lgyz;
    invoke-interface {v0}, Lgyz;->a()Ljava/lang/Object;

    move-result-object p3

    .line 340
    goto :goto_0

    .line 343
    .end local v0    # "valueFilter":Lgyz;
    :cond_1
    return-object p3
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 347
    iget-object v1, p0, Lgyq;->g:Ljava/util/List;

    .line 348
    .local v1, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lgyr;>;"
    if-eqz v1, :cond_1

    .line 349
    if-eqz p2, :cond_0

    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 350
    invoke-static {p2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 352
    .end local p2    # "key":Ljava/lang/Object;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyr;

    .line 353
    .local v0, "nameFilter":Lgyr;
    invoke-interface {v0}, Lgyr;->a()Ljava/lang/String;

    move-result-object p2

    .line 354
    .local p2, "key":Ljava/lang/String;
    goto :goto_0

    .line 357
    .end local v0    # "nameFilter":Lgyr;
    .end local p2    # "key":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public final a()Ljava/text/DateFormat;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lgyq;->j:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lgyq;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lgyq;->i:Ljava/lang/String;

    iget-object v2, p0, Lgyq;->n:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lgyq;->j:Ljava/text/DateFormat;

    .line 90
    iget-object v0, p0, Lgyq;->j:Ljava/text/DateFormat;

    iget-object v1, p0, Lgyq;->m:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lgyq;->j:Ljava/text/DateFormat;

    return-object v0
.end method

.method public final a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 230
    iget-object v0, p0, Lgyq;->b:Lgyy;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lgyy;->a(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 231
    return-void
.end method

.method public final a(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "parent"    # Lgyv;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "features"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lgyq;->b:Lgyy;

    iget v0, v0, Lgyy;->c:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lgyv;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lgyv;-><init>(Lgyv;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lgyq;->l:Lgyv;

    .line 114
    iget-object v0, p0, Lgyq;->k:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lgyq;->k:Ljava/util/IdentityHashMap;

    .line 117
    :cond_0
    iget-object v0, p0, Lgyq;->k:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lgyq;->l:Lgyv;

    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lgyq;->l:Lgyv;

    .line 123
    .local v0, "context":Lgyv;
    iget-object v1, v0, Lgyv;->b:Ljava/lang/Object;

    .line 125
    .local v1, "current":Ljava/lang/Object;
    if-ne p1, v1, :cond_0

    .line 126
    iget-object v6, p0, Lgyq;->b:Lgyy;

    const-string/jumbo v7, "{\"$ref\":\"@\"}"

    invoke-virtual {v6, v7}, Lgyy;->write(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v2, v0, Lgyv;->a:Lgyv;

    .line 132
    .local v2, "parentContext":Lgyv;
    if-eqz v2, :cond_1

    .line 133
    iget-object v6, v2, Lgyv;->b:Ljava/lang/Object;

    if-ne p1, v6, :cond_1

    .line 134
    iget-object v6, p0, Lgyq;->b:Lgyy;

    const-string/jumbo v7, "{\"$ref\":\"..\"}"

    invoke-virtual {v6, v7}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    move-object v5, v0

    .line 141
    .local v5, "rootContext":Lgyv;
    :goto_1
    iget-object v6, v5, Lgyv;->a:Lgyv;

    if-eqz v6, :cond_2

    .line 144
    iget-object v5, v5, Lgyv;->a:Lgyv;

    goto :goto_1

    .line 147
    :cond_2
    iget-object v6, v5, Lgyv;->b:Ljava/lang/Object;

    if-ne p1, v6, :cond_3

    .line 148
    iget-object v6, p0, Lgyq;->b:Lgyy;

    const-string/jumbo v7, "{\"$ref\":\"$\"}"

    invoke-virtual {v6, v7}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v6, p0, Lgyq;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgyv;

    .line 154
    .local v4, "refContext":Lgyv;
    invoke-virtual {v4}, Lgyv;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "path":Ljava/lang/String;
    iget-object v6, p0, Lgyq;->b:Lgyy;

    const-string/jumbo v7, "{\"$ref\":\""

    invoke-virtual {v6, v7}, Lgyy;->write(Ljava/lang/String;)V

    .line 157
    iget-object v6, p0, Lgyq;->b:Lgyy;

    invoke-virtual {v6, v3}, Lgyy;->write(Ljava/lang/String;)V

    .line 158
    iget-object v6, p0, Lgyq;->b:Lgyy;

    const-string/jumbo v7, "\"}"

    invoke-virtual {v6, v7}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .param p3, "fieldType"    # Ljava/lang/reflect/Type;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    :try_start_0
    iget-object v3, p0, Lgyq;->b:Lgyy;

    .line 2451
    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Lgyy;->write(Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 289
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lgyq;->a:Lgyw;

    invoke-virtual {v3, v0}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v2

    .line 291
    .local v2, "writer":Lgys;
    const/4 v3, 0x0

    invoke-interface {v2, p0, p1, p2, v3}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "writer":Lgys;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 312
    if-nez p1, :cond_1

    .line 313
    iget-object v0, p0, Lgyq;->b:Lgyy;

    iget v0, v0, Lgyy;->c:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lgyq;->b:Lgyy;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lgyy;->b(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lgyq;->b:Lgyy;

    .line 3451
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lgyq;->b:Lgyy;

    iget v0, v0, Lgyy;->c:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lgyq;->b:Lgyy;

    invoke-virtual {v0, p1}, Lgyy;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lgyq;->b:Lgyy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lgyy;->a(Ljava/lang/String;CZ)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 361
    iget-object v1, p0, Lgyq;->h:Ljava/util/List;

    .line 363
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lgyu;>;"
    if-nez v1, :cond_1

    .line 377
    .end local p2    # "key":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 367
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p2    # "key":Ljava/lang/Object;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyu;

    .line 368
    .local v0, "filter":Lgyu;
    if-eqz p2, :cond_3

    instance-of v4, p2, Ljava/lang/String;

    if-nez v4, :cond_3

    .line 369
    invoke-static {p2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 372
    :cond_3
    invoke-interface {v0}, Lgyu;->a()Z

    move-result v4

    if-nez v4, :cond_2

    .line 373
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgyz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lgyq;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgyq;->f:Ljava/util/List;

    .line 167
    :cond_0
    iget-object v0, p0, Lgyq;->f:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    iget-object v3, p0, Lgyq;->b:Lgyy;

    .line 1451
    const-string/jumbo v4, "null"

    invoke-virtual {v3, v4}, Lgyy;->write(Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 259
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lgyq;->a:Lgyw;

    invoke-virtual {v3, v0}, Lgyw;->a(Ljava/lang/Class;)Lgys;

    move-result-object v2

    .line 262
    .local v2, "writer":Lgys;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, p0, p1, v3, v4}, Lgys;->write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "propertyValue"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 381
    iget-object v1, p0, Lgyq;->e:Ljava/util/List;

    .line 383
    .local v1, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lgyt;>;"
    if-nez v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v2

    .line 387
    :cond_1
    if-eqz p2, :cond_2

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_2

    .line 388
    invoke-static {p2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyt;

    .line 392
    .local v0, "propertyFilter":Lgyt;
    invoke-interface {v0}, Lgyt;->a()Z

    move-result v4

    if-nez v4, :cond_3

    .line 393
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lgyq;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgyq;->o:I

    .line 172
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lgyq;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgyq;->o:I

    .line 176
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 179
    iget-object v1, p0, Lgyq;->b:Lgyy;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgyy;->write(I)V

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lgyq;->o:I

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lgyq;->b:Lgyy;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lgyy;->write(I)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgyn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lgyq;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgyq;->c:Ljava/util/List;

    .line 190
    :cond_0
    iget-object v0, p0, Lgyq;->c:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgym;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lgyq;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgyq;->d:Ljava/util/List;

    .line 198
    :cond_0
    iget-object v0, p0, Lgyq;->d:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgyr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lgyq;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgyq;->g:Ljava/util/List;

    .line 206
    :cond_0
    iget-object v0, p0, Lgyq;->g:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgyu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lgyq;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgyq;->h:Ljava/util/List;

    .line 214
    :cond_0
    iget-object v0, p0, Lgyq;->h:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgyt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lgyq;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgyq;->e:Ljava/util/List;

    .line 222
    :cond_0
    iget-object v0, p0, Lgyq;->e:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lgyq;->b:Lgyy;

    invoke-virtual {v0}, Lgyy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
