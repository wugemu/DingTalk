.class public Lcom/alibaba/doraemon/image/memory/references/SharedReference;
.super Ljava/lang/Object;
.source "SharedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/image/memory/references/SharedReference$NullReferenceException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sLiveObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRefCount:I

.field private final mResourceReleaser:Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "resourceReleaser":Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;, "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mValue:Ljava/lang/Object;

    .line 114
    invoke-static {p2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mResourceReleaser:Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mRefCount:I

    .line 116
    invoke-static {p1}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->addLiveReference(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method private static addLiveReference(Ljava/lang/Object;)V
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    sget-object v2, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    monitor-enter v2

    .line 127
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 128
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 129
    sget-object v1, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_0
    monitor-exit v2

    return-void

    .line 131
    :cond_0
    sget-object v1, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    .end local v0    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized decreaseRefCount()I
    .locals 1

    .prologue
    .line 212
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->ensureValid()V

    .line 213
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mRefCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 215
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mRefCount:I

    .line 216
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ensureValid()V
    .locals 1

    .prologue
    .line 224
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<TT;>;"
    invoke-static {p0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->isValid(Lcom/alibaba/doraemon/image/memory/references/SharedReference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/SharedReference$NullReferenceException;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference$NullReferenceException;-><init>()V

    throw v0

    .line 227
    :cond_0
    return-void
.end method

.method public static isValid(Lcom/alibaba/doraemon/image/memory/references/SharedReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/image/memory/references/SharedReference",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "ref":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<*>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeLiveReference(Ljava/lang/Object;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 143
    sget-object v2, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    monitor-enter v2

    .line 144
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 145
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 147
    const-string/jumbo v1, "SharedReference"

    const-string/jumbo v3, "No entry in sLiveObjects for value of type %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 148
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v1, v3}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    monitor-exit v2

    return-void

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 151
    sget-object v1, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v0    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 153
    .restart local v0    # "count":Ljava/lang/Integer;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->sLiveObjects:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addReference()V
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->ensureValid()V

    .line 188
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteReference()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<TT;>;"
    invoke-direct {p0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->decreaseRefCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mValue:Ljava/lang/Object;

    .line 200
    .local v0, "deleted":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mValue:Ljava/lang/Object;

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mResourceReleaser:Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;->release(Ljava/lang/Object;)V

    .line 203
    invoke-static {v0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->removeLiveReference(Ljava/lang/Object;)V

    .line 205
    .end local v0    # "deleted":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void

    .line 201
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRefCountTestOnly()I
    .locals 1

    .prologue
    .line 234
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValid()Z
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
