.class public final Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CLOSEABLE_RELEASER:Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGCPath:Ljava/lang/String;

.field private mIsClosed:Z

.field private final mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/image/memory/references/SharedReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    sput-object v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->TAG:Ljava/lang/Class;

    .line 64
    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference$1;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference$1;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->DEFAULT_CLOSEABLE_RELEASER:Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/doraemon/image/memory/references/SharedReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/image/memory/references/SharedReference",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    .local p1, "sharedReference":Lcom/alibaba/doraemon/image/memory/references/SharedReference;, "Lcom/alibaba/doraemon/image/memory/references/SharedReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mIsClosed:Z

    .line 87
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->addReference()V

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "resourceReleaser":Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;, "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mIsClosed:Z

    .line 93
    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;-><init>(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    .line 94
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;Ljava/lang/String;)V
    .locals 1
    .param p3, "gcPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "resourceReleaser":Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;, "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mIsClosed:Z

    .line 99
    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;-><init>(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    .line 100
    iput-object p3, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mGCPath:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static cloneOrNull(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<TT;>;)",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "ref":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->cloneOrNull()Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cloneOrNull(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "refs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;>;"
    if-nez p0, :cond_1

    .line 264
    const/4 v1, 0x0

    .line 270
    :cond_0
    return-object v1

    .line 266
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    .line 268
    .local v0, "ref":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    invoke-static {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->cloneOrNull(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static closeSafely(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "ref":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<*>;"
    if-eqz p0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->close()V

    .line 282
    :cond_0
    return-void
.end method

.method public static closeSafely(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "references":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/alibaba/doraemon/image/memory/references/CloseableReference<*>;>;"
    if-eqz p0, :cond_0

    .line 291
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    .line 292
    .local v0, "ref":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<*>;"
    invoke-static {v0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->closeSafely(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)V

    goto :goto_0

    .line 295
    .end local v0    # "ref":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<*>;"
    :cond_0
    return-void
.end method

.method public static isValid(Lcom/alibaba/doraemon/image/memory/references/CloseableReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "ref":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<*>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of(Ljava/io/Closeable;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "t":Ljava/io/Closeable;, "TT;"
    if-nez p0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    sget-object v1, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->DEFAULT_CLOSEABLE_RELEASER:Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;-><init>(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)V

    goto :goto_0
.end method

.method public static of(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
            "<TT;>;)",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "t":Ljava/lang/Object;, "TT;"
    .local p1, "resourceReleaser":Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;, "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser<TT;>;"
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;-><init>(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;)V

    goto :goto_0
.end method

.method public static of(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;Ljava/lang/String;)Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    .locals 1
    .param p2, "gcPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "t":Ljava/lang/Object;, "TT;"
    .local p1, "resourceReleaser":Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;, "Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser<TT;>;"
    if-nez p0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;-><init>(Ljava/lang/Object;Lcom/alibaba/doraemon/image/memory/references/ResourceReleaser;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized clone()Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->isValid()Z

    move-result v0

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 181
    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;-><init>(Lcom/alibaba/doraemon/image/memory/references/SharedReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->clone()Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized cloneOrNull()Lcom/alibaba/doraemon/image/memory/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/doraemon/image/memory/references/CloseableReference",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;

    iget-object v1, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;-><init>(Lcom/alibaba/doraemon/image/memory/references/SharedReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 157
    monitor-exit p0

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mIsClosed:Z

    .line 160
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->deleteReference()V

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :try_start_1
    iget-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 203
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 216
    :goto_0
    return-void

    .line 205
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    :try_start_3
    sget-object v0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->TAG:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Finalized without closing: %x %x (type = %s) (gc = %s)"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 208
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    .line 209
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    .line 210
    invoke-virtual {v4}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mGCPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mGCPath:Ljava/lang/String;

    :goto_1
    aput-object v0, v3, v4

    .line 207
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/doraemon/DoraemonLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0

    .line 210
    :cond_1
    :try_start_6
    const-string/jumbo v0, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method public final declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mIsClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkState(Z)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUnderlyingReferenceTestOnly()Lcom/alibaba/doraemon/image/memory/references/SharedReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/doraemon/image/memory/references/SharedReference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getValueHash()I
    .locals 1

    .prologue
    .line 233
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mSharedReference:Lcom/alibaba/doraemon/image/memory/references/SharedReference;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/image/memory/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

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

.method public final declared-synchronized isValid()Z
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/CloseableReference;, "Lcom/alibaba/doraemon/image/memory/references/CloseableReference<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/image/memory/references/CloseableReference;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

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
