.class Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;
.super Ljava/lang/Object;
.source "OfflineMapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/offlinemap/OfflineMapManager;->remove(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    iget-object v0, v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/ax;

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ax;->c(Ljava/lang/String;)V

    .line 252
    return-void
.end method
