.class public Lcom/uc/webview/export/cyclone/UCService;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
.end annotation


# static fields
.field private static final DEBUG_TOKEN:I

.field private static final LOG_TAG:Ljava/lang/String; = "UCService"

.field private static final MAX_CONFIG_CONTENT_LENGTH:I = 0x1000

.field private static final VERBOSE_TOKEN:I

.field private static final WARNN_TOKEN:I

.field private static s_ctx:Landroid/content/Context;

.field private static final s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/webview/export/cyclone/UCSingleton",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private static final s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/webview/export/cyclone/UCSingleton",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final s_services:Lcom/uc/webview/export/cyclone/UCSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uc/webview/export/cyclone/UCSingleton",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    const-string/jumbo v0, "v"

    const-string/jumbo v1, "UCService"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uc/webview/export/cyclone/UCService;->VERBOSE_TOKEN:I

    .line 31
    const-string/jumbo v0, "d"

    const-string/jumbo v1, "UCService"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    .line 32
    const-string/jumbo v0, "w"

    const-string/jumbo v1, "UCService"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->createToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_ctx:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/uc/webview/export/cyclone/UCSingleton;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCSingleton;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    .line 44
    new-instance v0, Lcom/uc/webview/export/cyclone/UCSingleton;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCSingleton;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_services:Lcom/uc/webview/export/cyclone/UCSingleton;

    .line 50
    new-instance v0, Lcom/uc/webview/export/cyclone/UCSingleton;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCSingleton;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;

    .line 57
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCUnSevenZip;

    const-string/jumbo v1, "com.uc.webview.export.cyclone.service.UCUnSevenZipMultiThreadImpl"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCService;->registerDefaultImpl(Ljava/lang/Class;Ljava/lang/String;)V

    .line 58
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCVmsize;

    const-string/jumbo v1, "com.uc.webview.export.cyclone.service.UCVmsizeImpl"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCService;->registerDefaultImpl(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAsciiContents(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v2, 0x0

    .line 324
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 326
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 327
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    .line 327
    return-object v2

    .line 329
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static getImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;)",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;"
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    .line 156
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    goto :goto_0
.end method

.method private static getImplQueue(Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;

    .line 162
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    goto :goto_0
.end method

.method private static getService(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_services:Lcom/uc/webview/export/cyclone/UCSingleton;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_services:Lcom/uc/webview/export/cyclone/UCSingleton;

    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCSingleton;->getInst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method public static initImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 171
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCService;->getImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v1

    .line 173
    if-nez v1, :cond_3

    .line 174
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCService;->getImplQueue(Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    .line 176
    if-eqz v10, :cond_3

    .line 177
    monitor-enter p0

    .line 178
    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/util/Pair;

    move-object v8, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v2, v1

    .line 197
    :goto_1
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 198
    sget v2, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initImpl "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-static {v2, v1, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    :try_start_2
    sget v2, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    const-string/jumbo v3, "initImpl exception"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 184
    :cond_0
    :try_start_3
    sget-object v1, Lcom/uc/webview/export/cyclone/UCService;->s_ctx:Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 185
    new-instance v2, Ljava/io/File;

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    .line 186
    const-class v1, Lcom/uc/webview/export/cyclone/service/UCDex;

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCService;->initImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/cyclone/service/UCDex;

    .line 187
    if-nez v1, :cond_1

    .line 188
    new-instance v2, Ldalvik/system/DexClassLoader;

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v1, v5, v5, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto/16 :goto_1

    .line 191
    :cond_1
    sget-object v2, Lcom/uc/webview/export/cyclone/UCService;->s_ctx:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object v6, v5

    .line 191
    invoke-interface/range {v1 .. v7}, Lcom/uc/webview/export/cyclone/service/UCDex;->createDexClassLoader(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    .line 205
    :cond_2
    :try_start_4
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCService;->getImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v1

    .line 206
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    :cond_3
    return-object v1

    :cond_4
    move-object v2, v9

    goto/16 :goto_1
.end method

.method private static registerDefaultImpl(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 309
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->VERBOSE_TOKEN:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerDefaultImpl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 312
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/uc/webview/export/cyclone/UCService;->registerService(Ljava/lang/String;Ljava/lang/Class;)V

    .line 313
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/uc/webview/export/cyclone/UCService;->registerImpl(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    const-string/jumbo v1, "w"

    const-string/jumbo v2, "UCService"

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_0

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerDefaultImpl register exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static registerImpl(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7e0

    const/4 v3, 0x0

    .line 86
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerImpl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 88
    if-nez p0, :cond_0

    .line 89
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const-string/jumbo v1, "registerImpl param null."

    invoke-direct {v0, v4, v1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 92
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 93
    if-nez v0, :cond_2

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 97
    if-nez v0, :cond_1

    .line 98
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 99
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImplQueues:Lcom/uc/webview/export/cyclone/UCSingleton;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 101
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_2
    invoke-static {p0}, Lcom/uc/webview/export/cyclone/UCService;->getImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 105
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x7e2

    const-string/jumbo v2, "registerImpl: the service has instanced. Please registers service impl before use it"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 108
    :cond_3
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 109
    return-void

    .line 110
    :cond_4
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const-string/jumbo v1, "registerImpl param null."

    invoke-direct {v0, v4, v1}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static registerImpl(Ljava/lang/Class;Lcom/uc/webview/export/cyclone/service/UCServiceInterface;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "registerImpl "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v3, v4}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 126
    if-nez p0, :cond_0

    .line 127
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x7dd

    const-string/jumbo v2, "registerImpl: serviceInterface is null."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 145
    :goto_0
    return v0

    .line 133
    :cond_1
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    .line 134
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/uc/webview/export/cyclone/service/UCServiceInterface;->getServiceVersion()I

    move-result v0

    invoke-interface {p1}, Lcom/uc/webview/export/cyclone/service/UCServiceInterface;->getServiceVersion()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 135
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_serviceImpls:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 142
    goto :goto_0

    .line 138
    :cond_3
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v1, 0x7de

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerImpl: impl"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not compatible with interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 145
    goto :goto_0
.end method

.method public static registerService(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/uc/webview/export/cyclone/service/UCServiceInterface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 63
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerService "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 65
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_services:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 66
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 67
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v2, 0x7e1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "registerService service name \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is registered by \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\' but now \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\' requested."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    sget-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_services:Lcom/uc/webview/export/cyclone/UCSingleton;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/cyclone/UCSingleton;->initInst([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public static search(Landroid/content/Context;Ljava/io/File;)I
    .locals 14

    .prologue
    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    .line 225
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/cyclone/UCService;->s_ctx:Landroid/content/Context;

    .line 227
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 231
    :goto_1
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "searching "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 234
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_9

    aget-object v0, v4, v2

    .line 235
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "."

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "/"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 243
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "cyclone.UCService."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1000

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "\\."

    const/4 v7, 0x4

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 252
    array-length v6, v1

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    .line 253
    const/4 v6, 0x2

    aget-object v6, v1, v6

    .line 256
    const/4 v7, 0x3

    aget-object v1, v1, v7

    .line 257
    sget v7, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "search config file:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "=>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 259
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    :try_start_0
    invoke-static {v6}, Lcom/uc/webview/export/cyclone/UCService;->getService(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 266
    if-nez v8, :cond_4

    .line 267
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "search service:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " not registered."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v6}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 297
    :catch_0
    move-exception v0

    .line 298
    sget v1, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    const-string/jumbo v6, "search exception"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v1, v6, v7}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    goto/16 :goto_3

    .line 271
    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCService;->getAsciiContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 273
    :cond_5
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    const-string/jumbo v1, "search config contents is null."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v6}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    goto/16 :goto_3

    .line 277
    :cond_6
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 278
    array-length v1, v6

    if-nez v1, :cond_7

    .line 279
    sget v0, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    const-string/jumbo v1, "search no impl class defined in config."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-static {v0, v1, v6}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    goto/16 :goto_3

    .line 283
    :cond_7
    sget v1, Lcom/uc/webview/export/cyclone/UCService;->DEBUG_TOKEN:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "search config contents:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Throwable;

    invoke-static {v1, v0, v9}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 285
    array-length v9, v6

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v9, :cond_2

    aget-object v0, v6, v1

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-eqz v10, :cond_8

    .line 288
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v0, v10}, Lcom/uc/webview/export/cyclone/UCService;->registerImpl(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 285
    :cond_8
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 293
    :catch_1
    move-exception v0

    .line 294
    :try_start_3
    sget v10, Lcom/uc/webview/export/cyclone/UCService;->WARNN_TOKEN:I

    const-string/jumbo v11, "search exception"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Throwable;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-static {v10, v11, v12}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 302
    :cond_9
    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 303
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 304
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    move-object p1, v0

    goto/16 :goto_1
.end method
