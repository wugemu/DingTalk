.class Lcom/amap/api/mapcore/util/b$17;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/b;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/eo;

.field final synthetic b:Lcom/amap/api/mapcore/util/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/eo;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$17;->b:Lcom/amap/api/mapcore/util/b;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/b$17;->a:Lcom/amap/api/mapcore/util/eo;

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
    .line 889
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$17;->b:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->h(Lcom/amap/api/mapcore/util/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 895
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$17;->b:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$17;->b:Lcom/amap/api/mapcore/util/b;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$17;->b:Lcom/amap/api/mapcore/util/b;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/b;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$17;->a:Lcom/amap/api/mapcore/util/eo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eo;->a(Z)V

    goto :goto_0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
