.class Lcom/amap/api/mapcore/util/q$1;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/q;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/q;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/amap/api/mapcore/util/q$1;->a:Lcom/amap/api/mapcore/util/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q$1;->a:Lcom/amap/api/mapcore/util/q;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
