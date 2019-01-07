.class public Lcom/alibaba/alimei/orm/internal/DatabasePool;
.super Ljava/lang/Object;
.source "DatabasePool.java"


# static fields
.field private static sInstance:Lcom/alibaba/alimei/orm/internal/DatabasePool;


# instance fields
.field private final mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/orm/IDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->sInstance:Lcom/alibaba/alimei/orm/internal/DatabasePool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->mCacheMap:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/alibaba/alimei/orm/internal/DatabasePool;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->sInstance:Lcom/alibaba/alimei/orm/internal/DatabasePool;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/alibaba/alimei/orm/internal/DatabasePool;

    invoke-direct {v0}, Lcom/alibaba/alimei/orm/internal/DatabasePool;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->sInstance:Lcom/alibaba/alimei/orm/internal/DatabasePool;

    .line 24
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->sInstance:Lcom/alibaba/alimei/orm/internal/DatabasePool;

    return-object v0
.end method


# virtual methods
.method public getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/IDatabase;

    return-object v0
.end method

.method public getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/IDatabase;

    goto :goto_0
.end method

.method public declared-synchronized initializeDatabase(Landroid/content/Context;Lcom/alibaba/alimei/orm/Configuration;)Lcom/alibaba/alimei/orm/IDatabase;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/alibaba/alimei/orm/Configuration;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/orm/IDatabase;

    .line 40
    .local v0, "cache":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/alibaba/alimei/orm/internal/e;

    .end local v0    # "cache":Lcom/alibaba/alimei/orm/IDatabase;
    invoke-direct {v0}, Lcom/alibaba/alimei/orm/internal/e;-><init>()V

    .line 42
    .restart local v0    # "cache":Lcom/alibaba/alimei/orm/IDatabase;
    iget-object v1, p0, Lcom/alibaba/alimei/orm/internal/DatabasePool;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/orm/IDatabase;->initialized(Landroid/content/Context;Lcom/alibaba/alimei/orm/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-object v0

    .line 39
    .end local v0    # "cache":Lcom/alibaba/alimei/orm/IDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
