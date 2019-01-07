.class public Ljdv;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdv$a;,
        Ljdv$b;,
        Ljdv$c;
    }
.end annotation


# instance fields
.field A:Ljava/lang/String;

.field private volatile B:Z

.field private C:Z

.field a:Landroid/content/Context;

.field b:Lcom/amap/api/location/AMapLocationClientOption;

.field public c:Ljdv$c;

.field d:Ljdz;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field public h:Z

.field public i:Z

.field j:Lcom/loc/h;

.field k:Landroid/os/Messenger;

.field l:Landroid/os/Messenger;

.field m:Landroid/content/Intent;

.field n:I

.field o:Ljdv$b;

.field p:Z

.field q:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field r:Ljava/lang/Object;

.field s:Ljdt;

.field t:Z

.field u:Lcom/loc/e;

.field v:Ljava/lang/String;

.field w:Landroid/content/ServiceConnection;

.field x:Z

.field y:Z

.field z:Ljdv$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, p0, Ljdv;->d:Ljdz;

    iput-boolean v2, p0, Ljdv;->e:Z

    iput-boolean v2, p0, Ljdv;->B:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    iput-boolean v2, p0, Ljdv;->g:Z

    iput-boolean v3, p0, Ljdv;->h:Z

    iput-boolean v3, p0, Ljdv;->i:Z

    iput-object v1, p0, Ljdv;->k:Landroid/os/Messenger;

    iput-object v1, p0, Ljdv;->l:Landroid/os/Messenger;

    iput-object v1, p0, Ljdv;->m:Landroid/content/Intent;

    iput v2, p0, Ljdv;->n:I

    iput-boolean v3, p0, Ljdv;->C:Z

    iput-object v1, p0, Ljdv;->o:Ljdv$b;

    iput-boolean v2, p0, Ljdv;->p:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Ljdv;->q:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljdv;->r:Ljava/lang/Object;

    iput-object v1, p0, Ljdv;->s:Ljdt;

    iput-boolean v2, p0, Ljdv;->t:Z

    iput-object v1, p0, Ljdv;->u:Lcom/loc/e;

    iput-object v1, p0, Ljdv;->v:Ljava/lang/String;

    new-instance v0, Ljdv$1;

    invoke-direct {v0, p0}, Ljdv$1;-><init>(Ljdv;)V

    iput-object v0, p0, Ljdv;->w:Landroid/content/ServiceConnection;

    iput-boolean v2, p0, Ljdv;->x:Z

    iput-boolean v2, p0, Ljdv;->y:Z

    iput-object v1, p0, Ljdv;->z:Ljdv$a;

    iput-object v1, p0, Ljdv;->A:Ljava/lang/String;

    iput-object p1, p0, Ljdv;->a:Landroid/content/Context;

    iput-object p2, p0, Ljdv;->m:Landroid/content/Intent;

    invoke-static {}, Ljdo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljdo;->b()Ljej;

    move-result-object v0

    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Ljdu;->a(Landroid/content/Context;Ljej;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljdv$c;

    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljdv$c;-><init>(Ljdv;Landroid/os/Looper;)V

    iput-object v0, p0, Ljdv;->c:Ljdv$c;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    new-instance v0, Lcom/loc/h;

    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljdv;->j:Lcom/loc/h;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    new-instance v0, Ljdv$b;

    const-string/jumbo v1, "amapLocManagerThread"

    invoke-direct {v0, v1, p0}, Ljdv$b;-><init>(Ljava/lang/String;Ljdv;)V

    iput-object v0, p0, Ljdv;->o:Ljdv$b;

    iget-object v0, p0, Ljdv;->o:Ljdv$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljdv$b;->setPriority(I)V

    iget-object v0, p0, Ljdv;->o:Ljdv$b;

    invoke-virtual {v0}, Ljdv$b;->start()V

    iget-object v0, p0, Ljdv;->o:Ljdv$b;

    invoke-virtual {v0}, Ljdv$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdv;->a(Landroid/os/Looper;)Ljdv$a;

    move-result-object v0

    iput-object v0, p0, Ljdv;->z:Ljdv$a;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    new-instance v0, Ljdz;

    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    iget-object v2, p0, Ljdv;->c:Ljdv$c;

    invoke-direct {v0, v1, v2}, Ljdz;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Ljdv;->d:Ljdz;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    iget-object v0, p0, Ljdv;->s:Ljdt;

    if-nez v0, :cond_1

    new-instance v0, Ljdt;

    invoke-direct {v0}, Ljdt;-><init>()V

    iput-object v0, p0, Ljdv;->s:Ljdt;

    :cond_1
    return-void

    :cond_2
    :try_start_5
    new-instance v0, Ljdv$c;

    invoke-direct {v0, p0}, Ljdv$c;-><init>(Ljdv;)V

    iput-object v0, p0, Ljdv;->c:Ljdv$c;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "init 1"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "init 2"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "init 5"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "init 3"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method

.method private a(Ljct;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3000
    :try_start_0
    iget-object v0, p1, Ljct;->c:Ljdc;

    .line 4000
    iget-boolean v0, v0, Ljdc;->j:Z

    .line 3000
    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const-string/jumbo v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Ljct;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Ljct;->E:I

    iget-object v1, p1, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p1, Ljct;->g:Ljde;

    iget-object v1, p1, Ljct;->a:Landroid/content/Context;

    iget-object v2, p1, Ljct;->A:Ljava/lang/String;

    iget-object v3, p1, Ljct;->B:Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ljde;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljct;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "doFirstCacheLoc"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/os/Looper;)Ljdv$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v1, p0, Ljdv;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljdv$a;

    invoke-direct {v0, p0, p1}, Ljdv$a;-><init>(Ljdv;Landroid/os/Looper;)V

    iput-object v0, p0, Ljdv;->z:Ljdv$a;

    iget-object v0, p0, Ljdv;->z:Ljdv$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/Object;J)V
    .locals 3

    iget-object v1, p0, Ljdv;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljdv;->z:Ljdv$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    instance-of v2, p2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :goto_0
    iget-object v2, p0, Ljdv;->z:Ljdv$a;

    invoke-virtual {v2, v0, p3, p4}, Ljdv$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    :cond_0
    const-string/jumbo v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljdv;->d:Ljdz;

    invoke-virtual {v0}, Ljdz;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljdx;->b(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v0

    invoke-static {v0}, Ljdx;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljdx;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    iget-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    return-void
.end method

.method private declared-synchronized a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;J)V
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljdo;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Ljdv;->a:Landroid/content/Context;

    const-string/jumbo v1, "loc"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljdu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljdv;->a:Landroid/content/Context;

    const-string/jumbo v1, "loc"

    const-string/jumbo v2, "amaplocation is null"

    invoke-static {v0, v1, v2}, Ljdu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handlerLocation part3"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    if-nez p1, :cond_3

    :try_start_3
    new-instance p1, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v5, ""

    invoke-direct {p1, v5}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string/jumbo v5, "amapLocation is null#0801"

    invoke-virtual {p1, v5}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v5, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "lbs"

    invoke-virtual {p1, v5}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    :cond_4
    new-instance v5, Lcom/amap/api/location/AMapLocationQualityReport;

    invoke-direct {v5}, Lcom/amap/api/location/AMapLocationQualityReport;-><init>()V

    iget-object v6, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/location/AMapLocationQualityReport;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)V

    iget-object v6, p0, Ljdv;->d:Ljdz;

    if-eqz v6, :cond_6

    iget-object v6, p0, Ljdv;->d:Ljdz;

    .line 1000
    iget v6, v6, Ljdz;->z:I

    .line 0
    invoke-virtual {v5, v6}, Lcom/amap/api/location/AMapLocationQualityReport;->setGPSSatellites(I)V

    iget-object v6, p0, Ljdv;->d:Ljdz;

    .line 2000
    iget-object v7, v6, Ljdz;->c:Landroid/location/LocationManager;

    if-nez v7, :cond_b

    move v2, v3

    .line 0
    :cond_5
    :goto_1
    invoke-virtual {v5, v2}, Lcom/amap/api/location/AMapLocationQualityReport;->setGpsStatus(I)V

    :cond_6
    iget-object v2, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v2}, Ljdx;->g(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/amap/api/location/AMapLocationQualityReport;->setWifiAble(Z)V

    iget-object v2, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v2}, Ljdx;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetworkType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    if-eq v2, v3, :cond_7

    const-string/jumbo v2, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move-wide p3, v0

    :cond_8
    invoke-virtual {v5, p3, p4}, Lcom/amap/api/location/AMapLocationQualityReport;->setNetUseTime(J)V

    invoke-virtual {p1, v5}, Lcom/amap/api/location/AMapLocation;->setLocationQualityReport(Lcom/amap/api/location/AMapLocationQualityReport;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v0, p0, Ljdv;->B:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljdv;->A:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loc"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "lastLocNb"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3f6

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V

    iget-object v0, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Ljdt;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Ljdt;->b(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Ljdv;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_2
    :try_start_5
    iget-boolean v0, p0, Ljdv;->p:Z

    if-eqz v0, :cond_a

    invoke-static {}, Ljdo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    iget-object v0, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v0}, Ljdu;->b(Landroid/content/Context;)V

    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljdv;->a()V

    goto/16 :goto_0

    .line 2000
    :cond_b
    iget-object v7, v6, Ljdz;->c:Landroid/location/LocationManager;

    invoke-static {v7}, Ljdz;->a(Landroid/location/LocationManager;)Z

    move-result v7

    if-nez v7, :cond_c

    move v2, v3

    goto/16 :goto_1

    :cond_c
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-ge v7, v8, :cond_e

    iget-object v7, v6, Ljdz;->c:Landroid/location/LocationManager;

    const-string/jumbo v8, "gps"

    invoke-virtual {v7, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_d
    iget-boolean v2, v6, Ljdz;->t:Z

    if-nez v2, :cond_f

    const/4 v2, 0x4

    goto/16 :goto_1

    :cond_e
    iget-object v7, v6, Ljdz;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "location_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    if-ne v7, v2, :cond_d

    const/4 v2, 0x3

    goto/16 :goto_1

    :cond_f
    move v2, v4

    goto/16 :goto_1

    .line 0
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handlerLocation part2"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private static a(Ljct;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljct;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "apsLocation:doFirstAddCache"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljdv;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ljdv;->a:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ljdv;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljdn;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, ""

    invoke-static {}, Ljdn;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljdn;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljdn;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljdv$2;

    invoke-direct {v3, p0}, Ljdv$2;-><init>(Ljdv;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-static {}, Ljdn;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljdv$3;

    invoke-direct {v3, p0}, Ljdv$3;-><init>(Ljdv;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Ljdv;->a:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Ljdv;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Ljdv;->d()V

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "showDialog"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Ljdv;Landroid/os/Bundle;)V
    .locals 18

    .prologue
    .line 0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-class v2, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v2, "loc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v4, "nb"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ljdv;->A:Ljava/lang/String;

    const-string/jumbo v4, "netUseTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljdv;->d:Ljdz;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljdv;->d:Ljdz;

    .line 8000
    const/4 v5, 0x0

    iput v5, v4, Ljdz;->x:I

    .line 0
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljdv;->d:Ljdz;

    iput-object v2, v4, Ljdz;->C:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    move-wide v4, v6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Ljdv;->d:Ljdz;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Ljdv;->d:Ljdz;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljdv;->A:Ljava/lang/String;

    .line 9000
    const-wide/16 v6, 0x7530

    iget-object v8, v9, Ljdz;->k:Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v8, :cond_2

    :cond_1
    :goto_0
    move-wide/from16 v16, v4

    move-object v4, v3

    move-object v5, v2

    move-wide/from16 v2, v16

    .line 0
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4, v2, v3}, Ljdv;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;J)V

    return-void

    .line 9000
    :cond_2
    :try_start_2
    iget-object v8, v9, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v8}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v9, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v8}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_3
    iget-object v8, v9, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v8}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v8

    iget-wide v12, v9, Ljdz;->o:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_4

    iget-wide v12, v9, Ljdz;->o:J

    const-wide/16 v14, 0x8

    cmp-long v11, v12, v14

    if-gez v11, :cond_4

    const/4 v11, 0x0

    cmpl-float v11, v8, v11

    if-nez v11, :cond_4

    iget v8, v9, Ljdz;->p:F

    iget-wide v12, v9, Ljdz;->o:J

    long-to-float v11, v12

    div-float/2addr v8, v11

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x43480000    # 200.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    iget v6, v9, Ljdz;->F:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v9, Ljdz;->F:I

    iget-object v6, v9, Ljdz;->D:Ljava/lang/String;

    if-nez v6, :cond_5

    iget v6, v9, Ljdz;->F:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_5

    const/4 v6, 0x1

    iput-boolean v6, v9, Ljdz;->E:Z

    :cond_5
    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v6, v8, v6

    if-lez v6, :cond_8

    const-wide/16 v6, 0x2710

    :cond_6
    :goto_2
    invoke-static {}, Ljdx;->b()J

    move-result-wide v12

    iget-wide v14, v9, Ljdz;->f:J

    sub-long/2addr v12, v14

    cmp-long v6, v12, v6

    if-ltz v6, :cond_c

    iget-boolean v6, v9, Ljdz;->E:Z

    if-eqz v6, :cond_7

    invoke-virtual {v9, v10}, Ljdz;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_7
    const/4 v6, 0x0

    iput-object v6, v9, Ljdz;->D:Ljava/lang/String;

    const/4 v6, 0x0

    iput v6, v9, Ljdz;->F:I

    const/4 v6, 0x0

    iput-object v6, v9, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    const-wide/16 v6, 0x0

    iput-wide v6, v9, Ljdz;->o:J

    const/4 v6, 0x0

    iput v6, v9, Ljdz;->p:F
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 0
    :catch_0
    move-exception v2

    move-object/from16 v16, v2

    move-wide v2, v4

    move-object/from16 v4, v16

    :goto_3
    const/4 v5, 0x0

    const-string/jumbo v6, "AMapLocationManager"

    const-string/jumbo v7, "doLbsLocationSuccess"

    invoke-static {v4, v6, v7}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9000
    :cond_8
    const-wide/16 v6, 0x3a98

    goto :goto_2

    :cond_9
    :try_start_3
    iget-object v6, v9, Ljdz;->D:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x0

    iput-boolean v6, v9, Ljdz;->E:Z

    const/4 v6, 0x0

    iput v6, v9, Ljdz;->F:I

    :cond_a
    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v6, v8, v6

    if-lez v6, :cond_b

    const-wide/16 v6, 0x4e20

    goto :goto_2

    :cond_b
    const-wide/16 v6, 0x7530

    goto :goto_2

    :cond_c
    iget-object v2, v9, Ljdz;->D:Ljava/lang/String;

    if-nez v2, :cond_d

    iget v2, v9, Ljdz;->F:I

    const/4 v6, 0x2

    if-lt v2, v6, :cond_d

    iput-object v10, v9, Ljdz;->D:Ljava/lang/String;

    :cond_d
    iget-object v2, v9, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 0
    :catch_1
    move-exception v4

    move-wide v2, v6

    goto :goto_3
.end method

.method static synthetic a(Ljdv;Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    iget-boolean v1, p0, Ljdv;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljdv;->k:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "optBundle"

    iget-object v3, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Ljdo;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljdv;->a(ILandroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljdv;->i:Z

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;J)V

    iget-boolean v0, p0, Ljdv;->C:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljdv;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "doGpsLocationSuccess"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljdv;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Ljdv;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljdv;->e:Z

    return p1
.end method

.method private b(Ljct;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 0
    :try_start_0
    new-instance v7, Ljds;

    invoke-direct {v7}, Ljds;-><init>()V

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    .line 5000
    iput-wide v2, v7, Ljds;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljec;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljee;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Ljct;->a(Landroid/content/Context;)V

    iget-object v1, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v1}, Ljct;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    invoke-virtual {p1}, Ljct;->g()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const-wide/16 v2, 0x0

    :try_start_4
    invoke-static {}, Ljdn;->D()Z

    move-result v8

    invoke-direct {p0, p1}, Ljdv;->a(Ljct;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    if-nez v4, :cond_8

    if-nez v8, :cond_2

    move v6, v5

    :cond_2
    :try_start_5
    invoke-virtual {p1, v6}, Ljct;->a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->k()J

    move-result-wide v2

    if-nez v8, :cond_3

    invoke-static {p1, v4}, Ljdv;->a(Ljct;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    move-object v1, v4

    move v4, v5

    :goto_3
    :try_start_6
    invoke-static {}, Ljdx;->b()J

    move-result-wide v10

    .line 6000
    iput-wide v10, v7, Ljds;->b:J

    .line 7000
    iput-object v1, v7, Ljds;->c:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    .line 0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->l()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    :cond_4
    :try_start_7
    iget-object v5, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v5}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Ljdv;->j:Lcom/loc/h;

    if-eqz v5, :cond_7

    iget-object v5, p0, Ljdv;->j:Lcom/loc/h;

    iget-object v6, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->getLastLocationLifeCycle()J

    move-result-wide v10

    invoke-virtual {v5, v1, v0, v10, v11}, Lcom/loc/h;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)Lcom/amap/api/location/AMapLocation;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :goto_4
    :try_start_8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_5

    const-string/jumbo v6, "loc"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "nb"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "netUseTime"

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Ljdv;->c:Ljdv$c;

    invoke-virtual {v2, v0}, Ljdv$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    :try_start_9
    iget-object v0, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v0, v7}, Ljdt;->a(Landroid/content/Context;Ljds;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_6

    if-eqz v8, :cond_6

    :try_start_a
    invoke-virtual {p1}, Ljct;->b()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljct;->a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {p1, v0}, Ljdv;->a(Ljct;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :goto_6
    :try_start_b
    invoke-virtual {p1}, Ljct;->e()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    :goto_7
    return-object v1

    :catch_0
    move-exception v1

    :try_start_c
    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "apsLocation setAuthKey"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_8
    :try_start_d
    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "apsLocation"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {p1}, Ljct;->e()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v1

    :try_start_f
    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "apsLocation setUmidToken"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_10
    invoke-virtual {p1}, Ljct;->e()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    :goto_9
    throw v0

    :catch_4
    move-exception v1

    :try_start_11
    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "initApsBase"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    :catch_5
    move-exception v1

    :try_start_12
    const-string/jumbo v6, "AMapLocationManager"

    const-string/jumbo v9, "apsLocation:doFirstNetLocate"

    invoke-static {v1, v6, v9}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object v1, v4

    move v4, v5

    goto/16 :goto_3

    :catch_6
    move-exception v0

    :try_start_13
    const-string/jumbo v5, "AMapLocationManager"

    const-string/jumbo v6, "fixLastLocation"

    invoke-static {v0, v5, v6}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v0, v1

    goto/16 :goto_4

    :catch_7
    move-exception v0

    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "apsLocation:callback"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "apsLocation:doFirstNetLocate 2"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_7

    :catch_b
    move-exception v1

    goto :goto_9

    :catch_c
    move-exception v0

    move-object v1, v4

    goto :goto_8

    :cond_8
    move-object v1, v4

    move v4, v6

    goto/16 :goto_3
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v1, p0, Ljdv;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljdv;->z:Ljdv$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdv;->z:Ljdv$a;

    const/16 v2, 0x3f8

    invoke-virtual {v0, v2}, Ljdv$a;->removeMessages(I)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Ljdv;)V
    .locals 0

    invoke-direct {p0}, Ljdv;->d()V

    return-void
.end method

.method static synthetic b(Ljdv;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Ljdv;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Ljdv;Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v0, "loc"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v2, "lastLocNb"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_1
    sget-object v3, Lcom/loc/h;->b:Ljdf;

    if-nez v3, :cond_3

    iget-object v3, p0, Ljdv;->j:Lcom/loc/h;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ljdv;->j:Lcom/loc/h;

    invoke-virtual {v1}, Lcom/loc/h;->b()Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Ljdt;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Ljdv;->j:Lcom/loc/h;

    invoke-virtual {v1, v0, v2}, Lcom/loc/h;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljdv;->j:Lcom/loc/h;

    invoke-virtual {v0}, Lcom/loc/h;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    sget-object v1, Lcom/loc/h;->b:Ljdf;

    .line 10000
    iget-object v1, v1, Ljdf;->d:Lcom/amap/api/location/AMapLocation;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "doSaveLastLocation"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Ljdv;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Ljdv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljdv;->a()V

    :cond_1
    return-void
.end method

.method static synthetic b(Ljdv;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljdv;->C:Z

    return p1
.end method

.method static synthetic c(Ljdv;)V
    .locals 0

    invoke-direct {p0}, Ljdv;->g()V

    return-void
.end method

.method private c()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Ljdv;->k:Landroid/os/Messenger;

    if-nez v3, :cond_1

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    :cond_1
    iget-object v2, p0, Ljdv;->k:Landroid/os/Messenger;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string/jumbo v4, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1\uff0c\u5e76\u4e14manifest\u4e2dservice\u6807\u7b7e\u662f\u5426\u914d\u7f6e\u5728application\u6807\u7b7e\u5185#1001"

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-string/jumbo v4, "loc"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Ljdv;->c:Ljdv$c;

    invoke-virtual {v2, v0}, Ljdv$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const/4 v1, 0x0

    const/16 v2, 0x835

    invoke-static {v1, v2}, Ljdt;->a(Ljava/lang/String;I)V

    :cond_3
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "checkAPSManager"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.autonavi.minimap"

    invoke-static {}, Ljdn;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Ljdn;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "callAMap part1"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {}, Ljdn;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "callAMap part2"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Ljdv;)V
    .locals 0

    invoke-direct {p0}, Ljdv;->e()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const-wide/16 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-boolean v2, p0, Ljdv;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Ljdv;->B:Z

    sget-object v2, Ljdv$4;->a:[I

    iget-object v3, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x3f9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V

    const/16 v0, 0x3f8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Ljdv;->b()V

    const/16 v0, 0x3f7

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x3f7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Ljdv;->a(ILjava/lang/Object;J)V

    iget-object v2, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x7530

    :cond_2
    const/16 v2, 0x3f8

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Ljdv;)V
    .locals 0

    invoke-virtual {p0}, Ljdv;->a()V

    return-void
.end method

.method private f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v2

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v2, v3, :cond_0

    const/16 v2, 0x3f8

    const/4 v3, 0x0

    iget-object v4, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    :goto_0
    invoke-direct {p0, v2, v3, v0, v1}, Ljdv;->a(ILjava/lang/Object;J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic f(Ljdv;)V
    .locals 4

    const/16 v0, 0x3f8

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method private g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    iget-object v0, p0, Ljdv;->l:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Ljdv;->c:Ljdv$c;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Ljdv;->l:Landroid/os/Messenger;

    :cond_0
    invoke-direct {p0}, Ljdv;->h()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    iget-object v2, p0, Ljdv;->w:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "startServiceImpl"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Ljdv;)V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Ljdv;->h:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdv;->h:Z

    new-instance v0, Ljct;

    invoke-direct {v0}, Ljct;-><init>()V

    invoke-direct {p0, v0}, Ljdv;->b(Ljct;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    invoke-direct {p0}, Ljdv;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "0"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    const-string/jumbo v0, "1"

    :cond_1
    const-string/jumbo v1, "optBundle"

    iget-object v3, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Ljdo;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v1, "isCacheLoc"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljdv;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljdv;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_2
    iget-boolean v0, p0, Ljdv;->t:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljdv;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Ljdv;->y:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdv;->y:Z

    invoke-direct {p0}, Ljdv;->g()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_2
    :try_start_3
    invoke-direct {p0}, Ljdv;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdv;->y:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "optBundle"

    iget-object v2, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Ljdo;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v1, "d"

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljdv;->d:Ljdz;

    invoke-virtual {v1}, Ljdz;->b()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljdv;->a(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "doLBSLocation"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljdv;->f()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Ljdv;->y:Z

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "doLBSLocation reStartService"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Ljdv;->f()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method private h()Landroid/content/Intent;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljdv;->m:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    const-class v2, Lcom/amap/api/location/APSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ljdv;->m:Landroid/content/Intent;

    :cond_0
    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Ljdv;->m:Landroid/content/Intent;

    const-string/jumbo v2, "a"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Ljdv;->m:Landroid/content/Intent;

    const-string/jumbo v1, "b"

    iget-object v2, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v2}, Ljeb;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Ljdv;->m:Landroid/content/Intent;

    const-string/jumbo v1, "d"

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Ljdv;->m:Landroid/content/Intent;

    const-string/jumbo v1, "f"

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->isDownloadCoordinateConvertLibrary()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Ljdv;->m:Landroid/content/Intent;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v1}, Ljeb;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "startServiceImpl p2"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Ljdv;)V
    .locals 10

    .prologue
    const/4 v2, -0x1

    .line 0
    iget-object v1, p0, Ljdv;->d:Ljdz;

    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    .line 11000
    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    :cond_0
    iput-object v0, v1, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, v1, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v0, v3, :cond_1

    iget-object v0, v1, Ljdz;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, v1, Ljdz;->a:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, v1, Ljdz;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iget-object v3, v1, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v3

    if-eq v0, v3, :cond_2

    iget-object v3, v1, Ljdz;->q:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v1, Ljdz;->C:Lcom/amap/api/location/AMapLocation;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, v1, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    iput-object v0, v1, Ljdz;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    .line 0
    iget-boolean v0, p0, Ljdv;->B:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iget-object v1, p0, Ljdv;->q:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljdv;->a()V

    invoke-direct {p0}, Ljdv;->e()V

    :cond_3
    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iput-object v0, p0, Ljdv;->q:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v0, p0, Ljdv;->s:Ljdt;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljdv;->s:Ljdt;

    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljdt;->a(Landroid/content/Context;I)V

    :goto_0
    iget-object v3, p0, Ljdv;->s:Ljdt;

    iget-object v4, p0, Ljdv;->a:Landroid/content/Context;

    iget-object v0, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    .line 12000
    :try_start_1
    sget-object v1, Ljdt$1;->a:[I

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move v1, v2

    :goto_1
    iget v0, v3, Ljdt;->e:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v1, :cond_6

    :cond_4
    :goto_2
    return-void

    .line 11000
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 0
    :cond_5
    iget-object v0, p0, Ljdv;->s:Ljdt;

    iget-object v1, p0, Ljdv;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljdt;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 12000
    :pswitch_0
    const/4 v0, 0x4

    move v1, v0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x5

    move v1, v0

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    move v1, v0

    goto :goto_1

    :cond_6
    :try_start_2
    iget v0, v3, Ljdt;->e:I

    if-eq v0, v2, :cond_7

    iget v0, v3, Ljdt;->e:I

    if-eq v0, v1, :cond_7

    invoke-static {}, Ljdx;->b()J

    move-result-wide v6

    iget-wide v8, v3, Ljdt;->f:J

    sub-long/2addr v6, v8

    iget-object v0, v3, Ljdt;->a:Landroid/util/SparseArray;

    iget v2, v3, Ljdt;->e:I

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, v3, Ljdt;->a:Landroid/util/SparseArray;

    iget v2, v3, Ljdt;->e:I

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_7
    const-string/jumbo v0, "pref"

    iget-object v2, v3, Ljdt;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-wide/16 v6, 0x0

    invoke-static {v4, v0, v2, v6, v7}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljdx;->b()J

    move-result-wide v6

    sub-long v4, v6, v4

    iput-wide v4, v3, Ljdt;->f:J

    iput v1, v3, Ljdt;->e:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "setLocationMode"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic i(Ljdv;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ljdv;->k:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Ljdv;->n:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "optBundle"

    iget-object v2, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Ljdo;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljdv;->a(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Ljdv;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljdv;->n:I

    iget v0, p0, Ljdv;->n:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "startAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Ljdv;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "optBundle"

    iget-object v2, p0, Ljdv;->b:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Ljdo;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Ljdv;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "stopAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    iget-object v0, p0, Ljdv;->d:Ljdz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdv;->d:Ljdz;

    invoke-virtual {v0}, Ljdz;->a()V

    :cond_0
    invoke-direct {p0}, Ljdv;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdv;->B:Z

    const/4 v0, 0x0

    iput v0, p0, Ljdv;->n:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "stopLocation"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(ILandroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Ljdv;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljdv;->a:Landroid/content/Context;

    invoke-static {v0}, Ljdo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljdv;->v:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "c"

    iget-object v1, p0, Ljdv;->v:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Ljdv;->l:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Ljdv;->k:Landroid/os/Messenger;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljdv;->k:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/os/RemoteException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sending message to a Handler on a dead thread"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Ljdv;->k:Landroid/os/Messenger;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljdv;->e:Z

    :cond_4
    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "sendLocMessage"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljdv;->j:Lcom/loc/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljdv;->j:Lcom/loc/h;

    invoke-virtual {v1}, Lcom/loc/h;->b()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v3, "getLastKnownLocation"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Ljdv;->e:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x3f3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdv;->p:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x3ea

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x3fa

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAssistantLocation()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLocation()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "startLocation"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAssistantLocation()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x3f1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "stopLocation"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x3ed

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Ljdv;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
