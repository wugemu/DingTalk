.class public Lcom/amap/api/mapcore/util/go;
.super Ljava/lang/Object;
.source "InstanceFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore/util/fm;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fc;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/go;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Lcom/amap/api/mapcore/util/gp;

    move-result-object v0

    .line 50
    invoke-static {v0, p2, p4, p5}, Lcom/amap/api/mapcore/util/go;->a(Lcom/amap/api/mapcore/util/gp;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 59
    :cond_0
    return-object v0

    .line 56
    :cond_1
    invoke-static {p3, p4, p5}, Lcom/amap/api/mapcore/util/go;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/amap/api/mapcore/util/fc;

    const-string/jumbo v1, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fc;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/amap/api/mapcore/util/gp;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/mapcore/util/gp;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/go;->a(Lcom/amap/api/mapcore/util/gp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/gp;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 219
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string/jumbo v1, "IFactory"

    const-string/jumbo v2, "getWrap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 241
    if-nez p0, :cond_0

    .line 255
    :goto_0
    return-object v0

    .line 244
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 245
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 246
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    const-string/jumbo v2, "IFactory"

    const-string/jumbo v3, "gIns2()"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/fm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore/util/gs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-static {p0, v2, p1}, Lcom/amap/api/mapcore/util/gs;->a(Landroid/content/Context;Ljava/io/File;Lcom/amap/api/mapcore/util/fm;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    const-string/jumbo v2, "IFactory"

    const-string/jumbo v3, "isdowned"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/amap/api/mapcore/util/gp;)Z
    .locals 1

    .prologue
    .line 196
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/gp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/gp;->d:Z

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Lcom/amap/api/mapcore/util/gp;
    .locals 4

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/go;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Lcom/amap/api/mapcore/util/gq;->a()Lcom/amap/api/mapcore/util/gq;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/amap/api/mapcore/util/gq;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fm;)Lcom/amap/api/mapcore/util/gp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    const-string/jumbo v2, "IFactory"

    const-string/jumbo v3, "gIns1"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gx;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
