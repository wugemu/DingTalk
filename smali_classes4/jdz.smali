.class public final Ljdz;
.super Ljava/lang/Object;
.source "GPSLocation.java"


# static fields
.field static l:Lcom/amap/api/location/AMapLocation;

.field static m:J

.field static n:Ljava/lang/Object;

.field static r:J

.field public static u:Z

.field public static v:Z


# instance fields
.field A:Landroid/location/GpsStatus;

.field B:Landroid/location/GpsStatus$Listener;

.field public C:Lcom/amap/api/location/AMapLocation;

.field D:Ljava/lang/String;

.field E:Z

.field F:I

.field private G:I

.field a:Landroid/os/Handler;

.field b:Landroid/content/Context;

.field c:Landroid/location/LocationManager;

.field d:Lcom/amap/api/location/AMapLocationClientOption;

.field e:J

.field f:J

.field g:Z

.field h:Ljcv;

.field i:I

.field j:I

.field k:Lcom/amap/api/location/AMapLocation;

.field o:J

.field p:F

.field q:Ljava/lang/Object;

.field s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field t:Z

.field w:J

.field x:I

.field y:Landroid/location/LocationListener;

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Ljdz;->l:Lcom/amap/api/location/AMapLocation;

    sput-wide v2, Ljdz;->m:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljdz;->n:Ljava/lang/Object;

    sput-wide v2, Ljdz;->r:J

    sput-boolean v1, Ljdz;->u:Z

    sput-boolean v1, Ljdz;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Ljdz;->e:J

    iput-wide v4, p0, Ljdz;->f:J

    iput-boolean v1, p0, Ljdz;->g:Z

    iput v1, p0, Ljdz;->G:I

    iput-object v2, p0, Ljdz;->h:Ljcv;

    const/16 v0, 0xf0

    iput v0, p0, Ljdz;->i:I

    const/16 v0, 0x50

    iput v0, p0, Ljdz;->j:I

    iput-object v2, p0, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Ljdz;->o:J

    const/4 v0, 0x0

    iput v0, p0, Ljdz;->p:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljdz;->q:Ljava/lang/Object;

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Ljdz;->s:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljdz;->t:Z

    iput-wide v4, p0, Ljdz;->w:J

    iput v1, p0, Ljdz;->x:I

    new-instance v0, Ljdz$1;

    invoke-direct {v0, p0}, Ljdz$1;-><init>(Ljdz;)V

    iput-object v0, p0, Ljdz;->y:Landroid/location/LocationListener;

    iput v1, p0, Ljdz;->z:I

    iput-object v2, p0, Ljdz;->A:Landroid/location/GpsStatus;

    new-instance v0, Ljdz$2;

    invoke-direct {v0, p0}, Ljdz$2;-><init>(Ljdz;)V

    iput-object v0, p0, Ljdz;->B:Landroid/location/GpsStatus$Listener;

    iput-object v2, p0, Ljdz;->C:Lcom/amap/api/location/AMapLocation;

    iput-object v2, p0, Ljdz;->D:Ljava/lang/String;

    iput-boolean v1, p0, Ljdz;->E:Z

    iput v1, p0, Ljdz;->F:I

    iput-object p1, p0, Ljdz;->b:Landroid/content/Context;

    iput-object p2, p0, Ljdz;->a:Landroid/os/Handler;

    iget-object v0, p0, Ljdz;->b:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Ljdz;->c:Landroid/location/LocationManager;

    new-instance v0, Ljcv;

    invoke-direct {v0}, Ljcv;-><init>()V

    iput-object v0, p0, Ljdz;->h:Ljcv;

    return-void
.end method

.method static synthetic a(Ljdz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ljdz;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljdz;Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljdz;->a(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method static synthetic a(Ljdz;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    iget v1, p0, Ljdz;->i:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Ljdo;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    :cond_0
    return-void
.end method

.method static a(Landroid/location/LocationManager;)Z
    .locals 2

    :try_start_0
    sget-boolean v0, Ljdz;->u:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ljdz;->v:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ljdz;->v:Z

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Ljdz;->u:Z

    sget-boolean v0, Ljdz;->v:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v0, Ljdz;->v:Z

    goto :goto_0
.end method

.method static synthetic b(Ljdz;)J
    .locals 2

    iget-wide v0, p0, Ljdz;->e:J

    return-wide v0
.end method

.method private b(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljdz;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Ljdz;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Ljdz;Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljdo;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdz;->b:Landroid/content/Context;

    new-instance v1, Lcom/amap/api/location/DPoint;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {v0, v1}, Ljdp;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Ljdz;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljdz;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ljdz;Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    :try_start_0
    iget v0, p0, Ljdz;->z:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Ljdz;->z:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic d(Ljdz;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 6

    .prologue
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    .line 0
    invoke-static {p1}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-object p1

    .line 0
    :cond_1
    iget v0, p0, Ljdz;->G:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p1, v2}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    :cond_5
    iget-object v0, p0, Ljdz;->h:Ljcv;

    .line 1000
    invoke-static {p1}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    iget-wide v4, v0, Ljcv;->h:J

    sub-long/2addr v2, v4

    invoke-static {}, Ljdx;->b()J

    move-result-wide v4

    iput-wide v4, v0, Ljcv;->h:J

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-object v1, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    iget-object v2, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    if-eq v1, v2, :cond_6

    const-string/jumbo v1, "gps"

    iget-object v2, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iget-object v1, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_7

    iget-object v1, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    iget-object v1, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    cmp-long v1, v4, v2

    if-ltz v1, :cond_8

    iget-object v1, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v4

    add-float/2addr v1, v4

    long-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    iget-object v2, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    invoke-static {p1, v2}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v4, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    const v3, 0x453b8000    # 3000.0f

    add-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_8

    iget-object p1, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    goto/16 :goto_0

    :cond_8
    iput-object p1, v0, Ljcv;->g:Lcom/amap/api/location/AMapLocation;

    goto/16 :goto_0
.end method

.method static synthetic d(Ljdz;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljdz;->E:Z

    return v0
.end method

.method static synthetic e(Ljdz;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljdz;->F:I

    return v0
.end method

.method static synthetic e(Ljdz;Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    invoke-static {p1}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iput-wide v0, p0, Ljdz;->f:J

    sget-object v1, Ljdz;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    sput-wide v2, Ljdz;->m:J

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    sput-object v0, Ljdz;->l:Lcom/amap/api/location/AMapLocation;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Ljdz;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljdz;->G:I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic f(Ljdz;Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Ljdo;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljdz;->b:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "colde"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Ljdo;->l:Z

    iget-object v0, p0, Ljdz;->b:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "colde"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Ljdz;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Ljdz;->y:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljdz;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Ljdz;->y:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Ljdz;->B:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljdz;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Ljdz;->B:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, p0, Ljdz;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljdz;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_3
    iput v4, p0, Ljdz;->z:I

    iput-wide v2, p0, Ljdz;->e:J

    iput-wide v2, p0, Ljdz;->w:J

    iput-wide v2, p0, Ljdz;->f:J

    iput v4, p0, Ljdz;->G:I

    iput v4, p0, Ljdz;->x:I

    iget-object v0, p0, Ljdz;->h:Ljcv;

    invoke-virtual {v0}, Ljcv;->a()V

    iput-object v5, p0, Ljdz;->k:Lcom/amap/api/location/AMapLocation;

    iput-wide v2, p0, Ljdz;->o:J

    const/4 v0, 0x0

    iput v0, p0, Ljdz;->p:F

    iput-object v5, p0, Ljdz;->D:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method a(IILjava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Ljdz;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    invoke-virtual {v1, p3}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Ljdz;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method a(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v1, p0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Ljdz;->b(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ljdz;->w:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Ljdz;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iput-wide v0, p0, Ljdz;->w:J

    invoke-direct {p0, p1}, Ljdz;->b(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v3, 0x8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljdx;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Ljdz;->D:Ljava/lang/String;

    invoke-static {v2}, Ljdx;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Ljdz;->D:Ljava/lang/String;

    invoke-static {v1, p1}, Ljdx;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ljdz;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xaf0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
