.class Lcom/amap/api/services/a/cp$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/cp;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/cp;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amap/api/services/a/cp$1;->a:Lcom/amap/api/services/a/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lcom/amap/api/services/a/cp$1;->a:Lcom/amap/api/services/a/cp;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cp$1;->a:Lcom/amap/api/services/a/cp;

    invoke-static {v0}, Lcom/amap/api/services/a/cp;->a(Lcom/amap/api/services/a/cp;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    monitor-exit v1

    .line 183
    :goto_0
    return-object v3

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/cp$1;->a:Lcom/amap/api/services/a/cp;

    invoke-static {v0}, Lcom/amap/api/services/a/cp;->b(Lcom/amap/api/services/a/cp;)V

    .line 178
    iget-object v0, p0, Lcom/amap/api/services/a/cp$1;->a:Lcom/amap/api/services/a/cp;

    invoke-static {v0}, Lcom/amap/api/services/a/cp;->c(Lcom/amap/api/services/a/cp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/amap/api/services/a/cp$1;->a:Lcom/amap/api/services/a/cp;

    invoke-static {v0}, Lcom/amap/api/services/a/cp;->d(Lcom/amap/api/services/a/cp;)V

    .line 180
    iget-object v0, p0, Lcom/amap/api/services/a/cp$1;->a:Lcom/amap/api/services/a/cp;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/services/a/cp;->a(Lcom/amap/api/services/a/cp;I)I

    .line 182
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/amap/api/services/a/cp$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
