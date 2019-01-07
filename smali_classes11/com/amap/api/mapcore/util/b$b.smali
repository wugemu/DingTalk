.class Lcom/amap/api/mapcore/util/b$b;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/eq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/b;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/b;)V
    .locals 0

    .prologue
    .line 3492
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$b;->a:Lcom/amap/api/mapcore/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/b;Lcom/amap/api/mapcore/util/b$1;)V
    .locals 0

    .prologue
    .line 3492
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/b$b;-><init>(Lcom/amap/api/mapcore/util/b;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3497
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$b;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    if-eqz v0, :cond_0

    .line 3498
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$b;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$b;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aq;->floor_indexs:[I

    aget v1, v1, p1

    iput v1, v0, Lcom/amap/api/mapcore/util/aq;->activeFloorIndex:I

    .line 3499
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$b;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$b;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aq;->floor_names:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Lcom/amap/api/mapcore/util/aq;->activeFloorName:Ljava/lang/String;

    .line 3501
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$b;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$b;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/b;->i:Lcom/amap/api/mapcore/util/aq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/b;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3506
    :cond_0
    :goto_0
    return-void

    .line 3502
    :catch_0
    move-exception v0

    .line 3503
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
