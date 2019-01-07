.class public final Lcoo;
.super Lcnw;
.source "FastJsonProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcnw;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    invoke-static {p0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Throwable;)V

    .line 133
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Lgxp;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
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
    .line 145
    .local p1, "type":Lgxp;, "Lgxp<TT;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lgxk;->parseObject(Ljava/lang/String;Lgxp;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Throwable;)V

    .line 150
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    .line 331
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 335
    :goto_0
    return-object v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Throwable;)V

    .line 335
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 695
    new-instance v1, Lgyy;

    invoke-direct {v1}, Lgyy;-><init>()V

    .line 697
    .local v1, "out":Lgyy;
    :try_start_0
    new-instance v2, Lgyq;

    invoke-direct {v2, v1}, Lgyq;-><init>(Lgyy;)V

    invoke-virtual {v2, p0}, Lgyq;->b(Ljava/lang/Object;)V

    .line 698
    invoke-virtual {v1}, Lgyy;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 702
    invoke-virtual {v1}, Lgyy;->close()V

    .line 704
    :goto_0
    return-object v2

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    invoke-virtual {v1}, Lgyy;->close()V

    .line 704
    const/4 v2, 0x0

    goto :goto_0

    .line 702
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lgyy;->close()V

    throw v2
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 371
    :try_start_0
    invoke-static {p0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 375
    :goto_0
    return-object v1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Throwable;)V

    .line 375
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 340
    :try_start_0
    invoke-static {p0}, Lgxk;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 344
    :goto_0
    return-object v1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Throwable;)V

    .line 344
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "javaObject"    # Ljava/lang/Object;

    .prologue
    .line 726
    :try_start_0
    invoke-static {p0}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 730
    :goto_0
    return-object v1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Throwable;)V

    .line 730
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
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
    .line 349
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0, p1}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 353
    :goto_0
    return-object v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Throwable;)V

    .line 353
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    invoke-direct {p0}, Lcoo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
