.class public final Lcom/loc/e;
.super Ljava/lang/Object;
.source "APSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/e$c;,
        Lcom/loc/e$a;,
        Lcom/loc/e$b;
    }
.end annotation


# static fields
.field static g:Z


# instance fields
.field private A:Lcom/loc/h;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field a:Ljava/lang/String;

.field b:Lcom/loc/e$b;

.field c:Lcom/amap/api/location/AMapLocation;

.field d:Lcom/loc/e$a;

.field e:Landroid/content/Context;

.field f:Ljct;

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljdt;

.field j:J

.field k:J

.field l:Ljava/lang/String;

.field m:Lcom/amap/api/location/AMapLocationClientOption;

.field n:Lcom/amap/api/location/AMapLocationClientOption;

.field o:Ljava/net/ServerSocket;

.field p:Z

.field q:Ljava/net/Socket;

.field r:Z

.field s:Lcom/loc/e$c;

.field private t:Z

.field private u:Z

.field private v:J

.field private w:J

.field private x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/e;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/e;->t:Z

    iput-boolean v2, p0, Lcom/loc/e;->u:Z

    iput-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    iput-wide v4, p0, Lcom/loc/e;->v:J

    iput-wide v4, p0, Lcom/loc/e;->w:J

    iput-object v1, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-object v1, p0, Lcom/loc/e;->c:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/e;->y:J

    iput v2, p0, Lcom/loc/e;->z:I

    iput-object v1, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    iput-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/loc/e;->A:Lcom/loc/h;

    iput-object v1, p0, Lcom/loc/e;->f:Ljct;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/loc/e;->i:Ljdt;

    iput-wide v4, p0, Lcom/loc/e;->j:J

    iput-wide v4, p0, Lcom/loc/e;->k:J

    iput-object v1, p0, Lcom/loc/e;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/e;->B:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/e;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, p0, Lcom/loc/e;->o:Ljava/net/ServerSocket;

    iput-boolean v2, p0, Lcom/loc/e;->p:Z

    iput-object v1, p0, Lcom/loc/e;->q:Ljava/net/Socket;

    iput-boolean v2, p0, Lcom/loc/e;->r:Z

    iput-object v1, p0, Lcom/loc/e;->s:Lcom/loc/e$c;

    const-string/jumbo v0, "jsonp1"

    iput-object v0, p0, Lcom/loc/e;->D:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "newInstanceAMapLoc"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/loc/e;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/loc/e;Lcom/loc/h;)Lcom/loc/h;
    .locals 0

    iput-object p1, p0, Lcom/loc/e;->A:Lcom/loc/h;

    return-object p1
.end method

.method private a(Landroid/os/Messenger;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Ljdn;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/loc/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/e$a;->removeMessages(I)V

    invoke-static {}, Ljdn;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/e$a;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/e$a;->removeMessages(I)V

    invoke-static {}, Ljdn;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljdn;->d()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/e$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "checkConfig"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "sendMessage"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "loc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "nb"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "netUseTime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/loc/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v0, p1}, Ljct;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isKillProcess()Z

    move-result v0

    sput-boolean v0, Lcom/loc/e;->g:Z

    iget-object v0, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    iget-object v1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    iget-object v1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    iget-object v1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/e;->w:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/e;->c:Lcom/amap/api/location/AMapLocation;

    :cond_2
    iput-object p1, p0, Lcom/loc/e;->m:Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "setExtra"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/e;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/loc/e;->z:I

    invoke-static {}, Ljdn;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/loc/e;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/e;->z:I

    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v0}, Ljct;->d()V

    iget-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/4 v1, 0x4

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/e$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doGpsFusion"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/e;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/loc/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/e;Landroid/os/Messenger;)V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/loc/e;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Ljdn;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/loc/e;->f:Ljct;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 15000
    :try_start_2
    iget-object v1, v0, Ljct;->h:Lcom/loc/bw;

    if-eqz v1, :cond_0

    iget-object v0, v0, Ljct;->h:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "bindOtherService"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 0
    :catch_2
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doCallOtherSer"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/e;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 0
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/loc/e;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/e;->u:Z

    invoke-direct {p0, p1}, Lcom/loc/e;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Ljdn;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/e;->f:Ljct;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 8000
    :try_start_2
    iget-object v1, v0, Ljct;->h:Lcom/loc/bw;

    if-eqz v1, :cond_2

    iget-object v0, v0, Ljct;->h:Lcom/loc/bw;

    invoke-virtual {v0}, Lcom/loc/bw;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 0
    :cond_2
    :goto_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/loc/e;->a(Landroid/os/Messenger;)V

    iget-wide v0, p0, Lcom/loc/e;->y:J

    invoke-static {v0, v1}, Ljdn;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "isCacheLoc"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/e;->y:J

    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v0}, Ljct;->d()V

    :cond_3
    invoke-direct {p0}, Lcom/loc/e;->e()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doInitAuth"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8000
    :catch_1
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "bindAMapService"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/e;Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/loc/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/loc/e;Ljava/net/Socket;)V
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget v3, Ljdo;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {p0, v1}, Lcom/loc/e;->a(Ljava/io/BufferedReader;)V

    invoke-direct {p0}, Lcom/loc/e;->d()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v0

    :try_start_3
    sput v3, Ljdo;->f:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/loc/e;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invokeSocketLocation part3"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invokeSocketLocation part4"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invokeSocketLocation part2"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_9
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invokeSocketLocation part3"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :goto_1
    :try_start_b
    throw v0

    :catch_4
    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "({\'package\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "APSServiceCore"

    const-string/jumbo v5, "invokeSocketLocation"

    invoke-static {v0, v4, v5}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    sput v3, Ljdo;->f:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    :try_start_e
    invoke-direct {p0, v2}, Lcom/loc/e;->b(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_10
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invokeSocketLocation part3"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_11
    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invokeSocketLocation part2"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_13
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "invokeSocketLocation part3"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    :goto_3
    :try_start_15
    throw v0

    :catch_9
    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_4
    sput v3, Ljdo;->f:I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1

    :try_start_16
    invoke-direct {p0, v2}, Lcom/loc/e;->b(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    :goto_5
    :try_start_18
    throw v0

    :catch_a
    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1

    goto :goto_5

    :catch_b
    move-exception v2

    :try_start_19
    const-string/jumbo v3, "APSServiceCore"

    const-string/jumbo v4, "invokeSocketLocation part2"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_5

    :catch_c
    move-exception v1

    :try_start_1b
    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    :goto_6
    :try_start_1d
    throw v0

    :catch_d
    move-exception v1

    const-string/jumbo v2, "APSServiceCore"

    const-string/jumbo v3, "invokeSocketLocation part3"

    invoke-static {v1, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_e
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x7530

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-le v3, v7, :cond_3

    aget-object v2, v2, v7

    const-string/jumbo v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-le v3, v7, :cond_3

    aget-object v2, v2, v7

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v2, v3

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-le v5, v7, :cond_1

    const-string/jumbo v5, "to"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v2, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    const-string/jumbo v5, "callback"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v4, v4, v7

    iput-object v4, p0, Lcom/loc/e;->D:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    sput v0, Ljdo;->f:I

    return-void
.end method

.method private b(Landroid/os/Messenger;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Ljct;->b(Landroid/content/Context;)V

    invoke-static {}, Ljdn;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "ngpsAble"

    invoke-static {}, Ljdn;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/loc/e;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    invoke-static {}, Ljdn;->r()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "initAuth"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/e;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljdn;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v0}, Ljct;->d()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/4 v1, 0x5

    invoke-static {}, Ljdn;->d()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/e$a;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Ljdx;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v0}, Ljct;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doOffFusion"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/loc/e;Landroid/os/Messenger;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/loc/e;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 20

    .prologue
    .line 0
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/loc/e;->b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->h:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->h:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljdx;->b()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v6, 0x320

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/e;->B:Z

    if-nez v2, :cond_3

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/e;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#0901"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loc/e;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->l()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/loc/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    const/4 v2, 0x0

    const/16 v3, 0x82b

    invoke-static {v2, v3}, Ljdt;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "APSServiceCore"

    const-string/jumbo v4, "doLocation"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Ljdx;->b()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/loc/e;->w:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x258

    cmp-long v2, v6, v8

    if-gez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->l()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/loc/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/loc/e;->b(Landroid/os/Messenger;)V

    invoke-static {}, Ljdn;->C()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/loc/e;->a(Landroid/os/Messenger;)V

    :cond_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/loc/e;->y:J

    invoke-static {v2, v3}, Ljdn;->a(J)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_6

    :cond_5
    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/loc/e;->y:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v2}, Ljct;->d()V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/loc/e;->e()V

    goto/16 :goto_0

    :cond_7
    new-instance v8, Ljds;

    invoke-direct {v8}, Ljds;-><init>()V

    invoke-static {}, Ljdx;->b()J

    move-result-wide v6

    .line 9000
    iput-wide v6, v8, Ljds;->a:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v2}, Ljct;->c()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v2

    const/4 v6, 0x6

    if-eq v2, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->k()J

    move-result-wide v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    .line 10000
    iput-object v2, v8, Ljds;->c:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    .line 0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/e;->f:Ljct;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    .line 11000
    iget-object v7, v6, Ljct;->I:Ljcv;

    iget-boolean v9, v6, Ljct;->w:Z

    .line 12000
    iput-boolean v9, v7, Ljcv;->d:Z

    .line 11000
    iget-object v6, v6, Ljct;->I:Ljcv;

    .line 13000
    invoke-static {}, Ljdx;->b()J

    move-result-wide v10

    iget-wide v12, v6, Ljcv;->f:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x7530

    cmp-long v7, v10, v12

    if-lez v7, :cond_f

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {}, Ljdx;->b()J

    move-result-wide v10

    iput-wide v10, v6, Ljcv;->f:J

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    .line 0
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v6, v4

    :goto_3
    :try_start_3
    invoke-static {}, Ljdx;->b()J

    move-result-wide v4

    .line 14000
    iput-wide v4, v8, Ljds;->b:J

    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Ljdx;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/loc/e;->w:J

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-nez v2, :cond_c

    const/16 v2, 0x8

    const-string/jumbo v4, "loc is null#0801"

    invoke-static {v2, v4}, Lcom/loc/e;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->l()Ljava/lang/String;

    move-result-object v5

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/e;->A:Lcom/loc/h;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/e;->A:Lcom/loc/h;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLastLocationLifeCycle()J

    move-result-wide v10

    invoke-virtual {v4, v9, v5, v10, v11}, Lcom/loc/h;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)Lcom/amap/api/location/AMapLocation;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    :cond_e
    move-object v4, v2

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    :try_start_5
    invoke-direct/range {v2 .. v7}, Lcom/loc/e;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v2, v8}, Ljdt;->a(Landroid/content/Context;Ljds;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 13000
    :cond_f
    :try_start_6
    invoke-static {}, Ljdx;->b()J

    move-result-wide v10

    iput-wide v10, v6, Ljcv;->f:J

    iget-object v7, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v7}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {v2}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v7

    if-nez v7, :cond_11

    :cond_10
    invoke-static {}, Ljdx;->b()J

    move-result-wide v10

    iput-wide v10, v6, Ljcv;->b:J

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v10

    iget-object v7, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v7}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-nez v7, :cond_12

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v7

    const/high16 v9, 0x43960000    # 300.0f

    cmpg-float v7, v7, v9

    if-ltz v7, :cond_a

    :cond_12
    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getProvider()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "gps"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()I

    move-result v7

    iget-object v9, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v9}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()I

    move-result v9

    if-ne v7, v9, :cond_1e

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getBuildingId()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v9}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getBuildingId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getBuildingId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    :cond_13
    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v7

    iput v7, v6, Ljcv;->e:I

    iget-object v7, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v2, v7}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v7

    iget-object v9, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v9}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v9

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v10

    sub-float v11, v10, v9

    invoke-static {}, Ljdx;->b()J

    move-result-wide v12

    iget-wide v14, v6, Ljcv;->b:J

    sub-long v14, v12, v14

    const/high16 v16, 0x42ca0000    # 101.0f

    cmpg-float v16, v9, v16

    if-gez v16, :cond_14

    const v16, 0x43958000    # 299.0f

    cmpl-float v16, v10, v16

    if-gtz v16, :cond_15

    :cond_14
    const v16, 0x43958000    # 299.0f

    cmpl-float v16, v9, v16

    if-lez v16, :cond_18

    const v16, 0x43958000    # 299.0f

    cmpl-float v16, v10, v16

    if-lez v16, :cond_18

    :cond_15
    iget-wide v10, v6, Ljcv;->c:J

    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-nez v7, :cond_17

    iput-wide v12, v6, Ljcv;->c:J

    :cond_16
    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v6, v2}, Ljcv;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v2

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_2

    :cond_17
    iget-wide v10, v6, Ljcv;->c:J

    sub-long v10, v12, v10

    const-wide/16 v14, 0x7530

    cmp-long v7, v10, v14

    if-lez v7, :cond_16

    iput-wide v12, v6, Ljcv;->b:J

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v10, 0x0

    iput-wide v10, v6, Ljcv;->c:J

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_2

    :cond_18
    const/high16 v16, 0x42c80000    # 100.0f

    cmpg-float v16, v10, v16

    if-gez v16, :cond_19

    const v16, 0x43958000    # 299.0f

    cmpl-float v16, v9, v16

    if-lez v16, :cond_19

    iput-wide v12, v6, Ljcv;->b:J

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v10, 0x0

    iput-wide v10, v6, Ljcv;->c:J

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_2

    :cond_19
    const v16, 0x43958000    # 299.0f

    cmpg-float v16, v10, v16

    if-gtz v16, :cond_1a

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Ljcv;->c:J

    :cond_1a
    const/high16 v16, 0x41200000    # 10.0f

    cmpg-float v16, v7, v16

    if-gez v16, :cond_1d

    float-to-double v0, v7

    move-wide/from16 v16, v0

    const-wide v18, 0x3fb999999999999aL    # 0.1

    cmpl-double v7, v16, v18

    if-lez v7, :cond_1d

    const/high16 v7, 0x40a00000    # 5.0f

    cmpl-float v7, v10, v7

    if-lez v7, :cond_1d

    const/high16 v7, -0x3c6a0000    # -300.0f

    cmpl-float v7, v11, v7

    if-ltz v7, :cond_1b

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v6, v2}, Ljcv;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v2

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_2

    :cond_1b
    div-float v7, v9, v10

    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_1c

    iput-wide v12, v6, Ljcv;->b:J

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_2

    :cond_1c
    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v6, v2}, Ljcv;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v2

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_2

    :cond_1d
    const/high16 v7, 0x43960000    # 300.0f

    cmpl-float v7, v11, v7

    if-ltz v7, :cond_1e

    const-wide/16 v10, 0x7530

    cmp-long v7, v14, v10

    if-gez v7, :cond_1e

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v6, v2}, Ljcv;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v2

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_2

    :cond_1e
    invoke-static {}, Ljdx;->b()J

    move-result-wide v10

    iput-wide v10, v6, Ljcv;->b:J

    iput-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, v6, Ljcv;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 0
    :catch_1
    move-exception v2

    const/4 v6, 0x0

    const/16 v7, 0x821

    :try_start_7
    invoke-static {v6, v7}, Ljdt;->a(Ljava/lang/String;I)V

    const/16 v6, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "loc error : "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "#0801"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/loc/e;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string/jumbo v6, "APSServiceCore"

    const-string/jumbo v7, "run part2"

    invoke-static {v2, v6, v7}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-wide v6, v4

    goto/16 :goto_3

    :catch_2
    move-exception v3

    const-string/jumbo v4, "APSServiceCore"

    const-string/jumbo v9, "fixLastLocation"

    invoke-static {v3, v4, v9}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-object v4, v2

    goto/16 :goto_4
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/loc/e;->q:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v1, v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Content-Length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/e;->g:Z

    return-void
.end method

.method static synthetic c(Lcom/loc/e;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    iget-wide v2, p0, Lcom/loc/e;->v:J

    invoke-static {v0, v2, v3}, Ljdn;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljdx;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/e;->v:J

    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v0}, Ljct;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doNGps"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v2}, Ljdx;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v0}, Ljct;->c()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "getSocketLocResult"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\',\'error_code\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\'error\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "({\'package\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\'precision\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\'x\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/e;->x:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "},\'version_code\':\'3.7.0\',\'version\':\'3.7.0\'})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private e()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/loc/e;->f:Ljct;

    .line 6000
    iget-object v6, v1, Ljct;->f:Ljda;

    iget-object v0, v1, Ljct;->a:Landroid/content/Context;

    iget-object v2, v1, Ljct;->r:Ljdj;

    iget-object v3, v1, Ljct;->c:Ljdc;

    iget-object v4, v1, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, v1, Ljct;->b:Landroid/net/ConnectivityManager;

    .line 7000
    invoke-static {}, Ljdn;->v()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljdo;->a(Lcom/amap/api/location/AMapLocationClientOption;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, v6, Ljda;->a:Ljava/lang/Object;

    if-nez v4, :cond_0

    iput-object v0, v6, Ljda;->l:Landroid/content/Context;

    iput-object v2, v6, Ljda;->h:Ljdj;

    iput-object v3, v6, Ljda;->i:Ljdc;

    iput-object v1, v6, Ljda;->j:Landroid/net/ConnectivityManager;

    iget-boolean v1, v6, Ljda;->b:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    iput-wide v2, v6, Ljda;->k:J

    const-string/jumbo v1, "Collection"

    const-string/jumbo v2, "1.0.0"

    invoke-static {v1, v2}, Ljdo;->a(Ljava/lang/String;Ljava/lang/String;)Ljej;

    move-result-object v1

    invoke-static {v0, v1}, Ljdt;->a(Landroid/content/Context;Ljej;)Z

    move-result v2

    iput-boolean v2, v6, Ljda;->b:Z

    iget-boolean v2, v6, Ljda;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_2

    :try_start_2
    iget-object v2, v6, Ljda;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    invoke-static/range {v0 .. v5}, Ljbr;->a(Landroid/content/Context;Ljej;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Ljda;->a:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    :try_start_3
    iget-boolean v0, v6, Ljda;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljda;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljda;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljdn;->v()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Ljda;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, v6, Ljda;->b:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "initCollection"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 0
    :catch_1
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "startColl"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7000
    :cond_3
    :try_start_6
    invoke-virtual {v6}, Ljda;->b()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :try_start_7
    invoke-virtual {v6}, Ljda;->f()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    iget-object v0, v6, Ljda;->a:Ljava/lang/Object;

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_9
    const-string/jumbo v1, "CollectionManager"

    const-string/jumbo v2, "start3rdCM"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/e;->q:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/e;->q:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/e;->o:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/e;->o:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/e;->s:Lcom/loc/e$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/e;->s:Lcom/loc/e$c;

    invoke-virtual {v0}, Lcom/loc/e$c;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    iput-object v4, p0, Lcom/loc/e;->s:Lcom/loc/e$c;

    iput-object v4, p0, Lcom/loc/e;->o:Ljava/net/ServerSocket;

    iput-boolean v3, p0, Lcom/loc/e;->p:Z

    iput-boolean v3, p0, Lcom/loc/e;->r:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doStopScocket 1"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "doStopScocket 2"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method a(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 0
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/e;->t:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Ljdo;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "optBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljdo;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/e;->t:Z

    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    iget-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljct;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v0}, Ljct;->a()V

    iget-object v0, p0, Lcom/loc/e;->n:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0, v0}, Lcom/loc/e;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v1, p0, Lcom/loc/e;->f:Ljct;

    .line 1000
    iget-object v0, v1, Ljct;->i:Lcom/loc/cb;

    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/cb;

    iget-object v2, v1, Ljct;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loc/cb;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Ljct;->i:Lcom/loc/cb;

    :cond_2
    iget-object v0, v1, Ljct;->F:Lcom/loc/bz;

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/bz;

    iget-object v2, v1, Ljct;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loc/bz;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Ljct;->F:Lcom/loc/bz;

    :cond_3
    iget-object v0, v1, Ljct;->h:Lcom/loc/bw;

    if-nez v0, :cond_4

    new-instance v0, Lcom/loc/bw;

    iget-object v2, v1, Ljct;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loc/bw;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Ljct;->h:Lcom/loc/bw;

    :cond_4
    iget-object v0, v1, Ljct;->e:Ljdb;

    iget-object v2, v1, Ljct;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljdb;->a(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljct;->f()V

    iget-object v0, v1, Ljct;->c:Ljdc;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljdc;->a(Z)V

    iget-object v0, v1, Ljct;->c:Ljdc;

    .line 2000
    iget-object v0, v0, Ljdc;->c:Ljava/util/ArrayList;

    .line 1000
    iput-object v0, v1, Ljct;->k:Ljava/util/ArrayList;

    iget-object v0, v1, Ljct;->d:Lcom/loc/ce;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljct;->h()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/loc/ce;->a(ZZ)V

    iget-object v2, v1, Ljct;->g:Ljde;

    iget-object v0, v1, Ljct;->a:Landroid/content/Context;

    .line 3000
    iget-boolean v3, v2, Ljde;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_5

    :try_start_1
    invoke-virtual {v2}, Ljde;->a()V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljde;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, v2, Ljde;->b:Z

    .line 1000
    :cond_5
    iget-object v0, v1, Ljct;->h:Lcom/loc/bw;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 4000
    :try_start_3
    iget-object v2, v0, Lcom/loc/bw;->e:Landroid/content/ServiceConnection;

    if-nez v2, :cond_6

    new-instance v2, Lcom/loc/bw$1;

    invoke-direct {v2, v0}, Lcom/loc/bw$1;-><init>(Lcom/loc/bw;)V

    iput-object v2, v0, Lcom/loc/bw;->e:Landroid/content/ServiceConnection;

    :cond_6
    iget-object v2, v0, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    if-nez v2, :cond_7

    new-instance v2, Lcom/loc/bw$2;

    invoke-direct {v2, v0}, Lcom/loc/bw$2;-><init>(Lcom/loc/bw;)V

    iput-object v2, v0, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    :cond_7
    iget-object v2, v0, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;

    if-nez v2, :cond_8

    new-instance v2, Lcom/loc/bw$3;

    invoke-direct {v2, v0}, Lcom/loc/bw$3;-><init>(Lcom/loc/bw;)V

    iput-object v2, v0, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1000
    :cond_8
    :goto_2
    :try_start_4
    iget-object v0, v1, Ljct;->a:Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, v1, Ljct;->q:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_3
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, v1, Ljct;->D:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 0
    :catch_0
    move-exception v0

    iput-boolean v5, p0, Lcom/loc/e;->B:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/e;->C:Ljava/lang/String;

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "init"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3000
    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v3, "Cache"

    const-string/jumbo v4, "loadDB"

    invoke-static {v0, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4000
    :catch_2
    move-exception v0

    const-string/jumbo v2, "ConnectionServiceManager"

    const-string/jumbo v3, "init"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method b(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const-string/jumbo v0, "optBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljdo;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/loc/e;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :try_start_0
    const-string/jumbo v0, "d"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljee;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "APSManager"

    const-string/jumbo v3, "doLocation setUmidToken"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "APSManager"

    const-string/jumbo v3, "parseBundle"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 0
    :try_start_0
    iget-object v1, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/e;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/loc/e;->f:Ljct;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v1}, Ljct;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/loc/e$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    const-class v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "quitSafely"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/e;->d:Lcom/loc/e$a;

    iget-object v1, p0, Lcom/loc/e;->A:Lcom/loc/h;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/loc/e;->A:Lcom/loc/h;

    invoke-virtual {v1}, Lcom/loc/h;->c()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/e;->A:Lcom/loc/h;

    :cond_3
    invoke-virtual {p0}, Lcom/loc/e;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/e;->t:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/e;->u:Z

    iget-object v1, p0, Lcom/loc/e;->f:Ljct;

    invoke-virtual {v1}, Ljct;->e()V

    iget-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v1}, Ljdt;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/loc/e;->i:Ljdt;

    if-eqz v1, :cond_6

    iget-wide v2, p0, Lcom/loc/e;->j:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_6

    iget-wide v2, p0, Lcom/loc/e;->k:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_6

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/e;->j:J

    sub-long v6, v2, v4

    iget-object v1, p0, Lcom/loc/e;->i:Ljdt;

    iget-object v2, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljdt;->c(Landroid/content/Context;)I

    move-result v2

    iget-object v1, p0, Lcom/loc/e;->i:Ljdt;

    iget-object v3, p0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljdt;->d(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/loc/e;->e:Landroid/content/Context;

    iget-wide v4, p0, Lcom/loc/e;->k:J

    invoke-static/range {v1 .. v7}, Ljdt;->a(Landroid/content/Context;IIJJ)V

    iget-object v1, p0, Lcom/loc/e;->i:Ljdt;

    iget-object v2, p0, Lcom/loc/e;->e:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 5000
    :goto_1
    :try_start_3
    iget-object v3, v1, Ljdt;->d:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    const-string/jumbo v3, "pref"

    iget-object v4, v1, Ljdt;->d:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 0
    :catch_0
    move-exception v1

    :try_start_4
    iget-object v1, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    invoke-virtual {v1}, Lcom/loc/e$b;->quit()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "threadDestroy"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/loc/e;->b:Lcom/loc/e$b;

    invoke-virtual {v1}, Lcom/loc/e$b;->quit()Z

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :cond_6
    invoke-static {}, Ljeq;->a()V

    sget-boolean v0, Lcom/loc/e;->g:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2
.end method
