.class public final Ljct;
.super Ljava/lang/Object;
.source "APS.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljct$a;
    }
.end annotation


# static fields
.field static H:I

.field public static K:Z

.field private static O:Z

.field private static P:I


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/StringBuilder;

.field C:Z

.field public D:Z

.field E:I

.field public F:Lcom/loc/bz;

.field G:Z

.field public I:Ljcv;

.field J:Ljava/lang/String;

.field L:Landroid/content/IntentFilter;

.field private M:I

.field private N:Ljava/lang/String;

.field private Q:Z

.field public a:Landroid/content/Context;

.field public b:Landroid/net/ConnectivityManager;

.field public c:Ljdc;

.field public d:Lcom/loc/ce;

.field public e:Ljdb;

.field public f:Ljda;

.field public g:Ljde;

.field public h:Lcom/loc/bw;

.field public i:Lcom/loc/cb;

.field j:Ljdl;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljct$a;

.field public m:Lcom/amap/api/location/AMapLocationClientOption;

.field n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field o:J

.field p:Ljdm;

.field public q:Z

.field public r:Ljdj;

.field s:Ljava/lang/StringBuilder;

.field t:Z

.field u:Z

.field v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field public w:Z

.field x:Z

.field y:Landroid/net/wifi/WifiInfo;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-boolean v0, Ljct;->O:Z

    sput v1, Ljct;->P:I

    sput v1, Ljct;->H:I

    const/4 v0, 0x1

    sput-boolean v0, Ljct;->K:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljct;->a:Landroid/content/Context;

    iput-object v2, p0, Ljct;->b:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Ljct;->c:Ljdc;

    iput-object v2, p0, Ljct;->d:Lcom/loc/ce;

    iput-object v2, p0, Ljct;->e:Ljdb;

    iput-object v2, p0, Ljct;->f:Ljda;

    iput-object v2, p0, Ljct;->g:Ljde;

    iput-object v2, p0, Ljct;->h:Lcom/loc/bw;

    iput-object v2, p0, Ljct;->i:Lcom/loc/cb;

    iput-object v2, p0, Ljct;->j:Ljdl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Ljct;->l:Ljct$a;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v2, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljct;->o:J

    iput v3, p0, Ljct;->M:I

    iput-object v2, p0, Ljct;->p:Ljdm;

    iput-boolean v3, p0, Ljct;->q:Z

    iput-object v2, p0, Ljct;->N:Ljava/lang/String;

    iput-object v2, p0, Ljct;->r:Ljdj;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    iput-boolean v4, p0, Ljct;->t:Z

    iput-boolean v4, p0, Ljct;->u:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Ljct;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-boolean v4, p0, Ljct;->w:Z

    iput-boolean v3, p0, Ljct;->x:Z

    iput-object v2, p0, Ljct;->y:Landroid/net/wifi/WifiInfo;

    iput-boolean v4, p0, Ljct;->z:Z

    iput-object v2, p0, Ljct;->A:Ljava/lang/String;

    iput-object v2, p0, Ljct;->B:Ljava/lang/StringBuilder;

    iput-boolean v3, p0, Ljct;->C:Z

    iput-boolean v3, p0, Ljct;->D:Z

    const/16 v0, 0xc

    iput v0, p0, Ljct;->E:I

    iput-boolean v4, p0, Ljct;->Q:Z

    iput-object v2, p0, Ljct;->F:Lcom/loc/bz;

    iput-boolean v3, p0, Ljct;->G:Z

    iput-object v2, p0, Ljct;->I:Ljcv;

    iput-object v2, p0, Ljct;->J:Ljava/lang/String;

    iput-object v2, p0, Ljct;->L:Landroid/content/IntentFilter;

    return-void
.end method

.method static a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    const/16 v1, 0xf

    if-ne p0, v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x867

    invoke-static {v1, v2}, Ljdt;->a(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Ljcn;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v5, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p2, Ljcn;->a:[B

    if-eqz v1, :cond_0

    iget-object v1, p2, Ljcn;->a:[B

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p2, Ljcn;->d:Ljava/lang/String;

    const/16 v1, 0x7f9

    invoke-static {v0, v1}, Ljdt;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v1, Ljdl;

    invoke-direct {v1}, Ljdl;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Ljcn;->a:[B

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v3, "\"status\":\"0\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Ljdl;->a(Ljava/lang/String;Landroid/content/Context;Ljcn;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    iget-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1, v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "checkResponseEntity"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ljct;->s:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "check response exception ex is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#0403"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v1, "</body></html>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Ljct;->c:Ljdc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljct;->c:Ljdc;

    iget-object v1, p0, Ljct;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Ljdc;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u60a8\u8fde\u63a5\u7684\u662f\u4e00\u4e2a\u9700\u8981\u767b\u5f55\u7684\u7f51\u7edc\uff0c\u8bf7\u786e\u8ba4\u5df2\u7ecf\u767b\u5165\u7f51\u7edc#0501"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x803

    invoke-static {v0, v1}, Ljdt;->a(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8bf7\u6c42\u53ef\u80fd\u88ab\u52ab\u6301\u4e86#0502"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x804

    invoke-static {v0, v1}, Ljdt;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move-object p1, v0

    goto/16 :goto_0
.end method

.method private a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 37
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v5, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string/jumbo v4, ""

    invoke-direct {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->p:Ljdm;

    if-nez v4, :cond_0

    new-instance v4, Ljdm;

    invoke-direct {v4}, Ljdm;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Ljct;->p:Ljdm;

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v4, :cond_1

    new-instance v4, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v4}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ljct;->p:Ljdm;

    move-object/from16 v0, p0

    iget-object v14, v0, Ljct;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Ljct;->d:Lcom/loc/ce;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljct;->c:Ljdc;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljct;->b:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljct;->i:Lcom/loc/cb;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->f:Ljda;

    invoke-virtual {v4}, Ljda;->g()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v9, v0, Ljct;->J:Ljava/lang/String;

    .line 35000
    const-string/jumbo v4, "0"

    const-string/jumbo v21, "0"

    const-string/jumbo v22, "0"

    const-string/jumbo v23, "0"

    const-string/jumbo v24, "0"

    invoke-static {v14}, Ljeb;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-static {}, Ljdx;->f()I

    move-result v26

    const-string/jumbo v8, ""

    const-string/jumbo v7, ""

    const-string/jumbo v6, ""

    iput-object v9, v13, Ljdm;->L:Ljava/lang/String;

    const-string/jumbo v10, "api_serverSDK_130905"

    const-string/jumbo v9, "S128DF1572465B890OE3F7A13167KLEI"

    if-nez v11, :cond_35

    const-string/jumbo v10, "UC_nlp_20131029"

    const-string/jumbo v9, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    move-object v11, v9

    move-object v12, v10

    :goto_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 36000
    move-object/from16 v0, v16

    iget v0, v0, Lcom/loc/ce;->a:I

    move/from16 v29, v0

    .line 37000
    move-object/from16 v0, v16

    iget v9, v0, Lcom/loc/ce;->a:I

    and-int/lit8 v30, v9, 0x3

    .line 38000
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    .line 39000
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    .line 40000
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/loc/ce;->d:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    .line 41000
    move-object/from16 v0, v17

    iget-object v0, v0, Ljdc;->c:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    .line 35000
    const/4 v10, 0x2

    move/from16 v0, v30

    if-ne v0, v10, :cond_34

    const-string/jumbo v4, "1"

    move-object v10, v4

    :goto_1
    if-eqz v9, :cond_5

    sget-object v4, Ljdo;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :try_start_1
    invoke-static {v14}, Ljee;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljdo;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    :try_start_2
    sget-object v4, Ljdo;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "888888888888888"

    sput-object v4, Ljdo;->d:Ljava/lang/String;

    :cond_3
    sget-object v4, Ljdo;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljdo;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    :try_start_4
    sget-object v4, Ljdo;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "888888888888888"

    sput-object v4, Ljdo;->e:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    const/4 v4, 0x0

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v4

    :goto_4
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljdc;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljdc;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v34

    invoke-static {v4}, Ljdx;->a(Landroid/net/NetworkInfo;)I

    move-result v4

    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v4, v0, :cond_33

    invoke-static {v9}, Ljdx;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v7

    if-eqz v34, :cond_12

    .line 42000
    move-object/from16 v0, v17

    iget-boolean v4, v0, Ljdc;->q:Z

    .line 35000
    if-eqz v4, :cond_12

    const-string/jumbo v4, "2"

    move-object v8, v4

    move-object v9, v7

    :goto_5
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v30, :pswitch_data_0

    move-object v4, v6

    :goto_6
    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v7, v4

    :goto_7
    and-int/lit8 v4, v29, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_16

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v13, Ljdm;->C:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v13, Ljdm;->C:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43000
    :goto_8
    move-object/from16 v0, v17

    iget-boolean v4, v0, Ljdc;->q:Z

    .line 35000
    if-eqz v4, :cond_18

    if-eqz v34, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljdc;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljdc;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    const/16 v6, -0x80

    if-ge v4, v6, :cond_17

    const/4 v4, 0x0

    :cond_6
    :goto_9
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v4

    const/16 v6, 0x20

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v6, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :goto_a
    const/16 v17, 0x20

    move/from16 v0, v17

    if-lt v6, v0, :cond_7

    :try_start_8
    const-string/jumbo v4, "unkwn"

    :cond_7
    const-string/jumbo v6, "*"

    const-string/jumbo v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v33, :cond_9

    iget-object v4, v13, Ljdm;->F:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, v13, Ljdm;->F:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v13, Ljdm;->F:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_b
    if-nez v15, :cond_19

    const/4 v4, 0x2

    iput-short v4, v13, Ljdm;->b:S

    :goto_c
    iput-object v12, v13, Ljdm;->c:Ljava/lang/String;

    iput-object v11, v13, Ljdm;->d:Ljava/lang/String;

    invoke-static {}, Ljdx;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Ljdm;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "android"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljdx;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Ljdm;->g:Ljava/lang/String;

    invoke-static {v14}, Ljdx;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Ljdm;->h:Ljava/lang/String;

    iput-object v10, v13, Ljdm;->i:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v0, v13, Ljdm;->j:Ljava/lang/String;

    const-string/jumbo v4, "0"

    iput-object v4, v13, Ljdm;->k:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v0, v13, Ljdm;->l:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v13, Ljdm;->m:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v13, Ljdm;->n:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v0, v13, Ljdm;->o:Ljava/lang/String;

    sget-object v4, Ljdo;->d:Ljava/lang/String;

    iput-object v4, v13, Ljdm;->p:Ljava/lang/String;

    sget-object v4, Ljdo;->e:Ljava/lang/String;

    iput-object v4, v13, Ljdm;->q:Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Ljdm;->s:Ljava/lang/String;

    invoke-static {v14}, Ljdx;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Ljdm;->t:Ljava/lang/String;

    const-string/jumbo v4, "3.7.0"

    iput-object v4, v13, Ljdm;->v:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v13, Ljdm;->w:Ljava/lang/String;

    const-string/jumbo v4, ""

    iput-object v4, v13, Ljdm;->u:Ljava/lang/String;

    iput-object v9, v13, Ljdm;->x:Ljava/lang/String;

    iput-object v8, v13, Ljdm;->y:Ljava/lang/String;

    move/from16 v0, v29

    iput v0, v13, Ljdm;->z:I

    iput-object v7, v13, Ljdm;->A:Ljava/lang/String;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Ljdm;->B:Ljava/lang/String;

    .line 44000
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/loc/ce;->c:Ljava/lang/String;

    .line 35000
    iput-object v4, v13, Ljdm;->D:Ljava/lang/String;

    invoke-static {}, Ljdc;->e()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Ljdm;->H:Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Ljdm;->E:Ljava/lang/String;

    if-eqz v19, :cond_a

    .line 45000
    invoke-virtual/range {v19 .. v19}, Lcom/loc/cb;->c()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {v19 .. v19}, Lcom/loc/cb;->a()V

    :goto_d
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/loc/cb;->a:Ljava/util/ArrayList;

    .line 35000
    iput-object v4, v13, Ljdm;->G:Ljava/util/ArrayList;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    :cond_a
    :try_start_9
    sget-object v4, Ljdm;->K:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v14}, Ljee;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljdm;->K:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    :cond_b
    :goto_e
    :try_start_a
    sget-object v4, Ljdm;->M:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v14}, Ljee;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljdm;->M:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    :cond_c
    :goto_f
    const/4 v4, 0x0

    :try_start_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 0
    move-object/from16 v0, p0

    iget-object v6, v0, Ljct;->e:Ljdb;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->d:Lcom/loc/ce;

    .line 46000
    iget-object v7, v4, Lcom/loc/ce;->b:Ljava/util/ArrayList;

    iget v4, v4, Lcom/loc/ce;->a:I

    and-int/lit8 v4, v4, 0x3

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    packed-switch v4, :pswitch_data_1

    const-string/jumbo v4, "resetCdmaData"

    invoke-virtual {v6, v4}, Ljdb;->a(Ljava/lang/String;)V

    .line 0
    :cond_d
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->p:Ljdm;

    invoke-virtual {v4}, Ljdm;->a()[B
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v4

    invoke-static {}, Ljdx;->b()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Ljct;->o:J

    :try_start_c
    move-object/from16 v0, p0

    iget-object v6, v0, Ljct;->a:Landroid/content/Context;

    invoke-static {v6}, Ljdo;->d(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Ljct;->r:Ljdj;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljct;->a:Landroid/content/Context;

    invoke-static {}, Ljdo;->a()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v6, v7, v4, v8, v0}, Ljdj;->a(Landroid/content/Context;[BLjava/lang/String;Z)Ljdk;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->a:Landroid/content/Context;

    invoke-static {v4}, Ljdh;->a(Landroid/content/Context;)Ljdh;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    move-result-object v8

    .line 47000
    const/4 v4, 0x0

    :try_start_d
    iput-boolean v4, v8, Ljdh;->c:Z

    invoke-virtual {v8}, Ljdh;->a()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    move-result v4

    if-nez v4, :cond_1c

    .line 0
    :cond_e
    :goto_11
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->r:Ljdj;

    .line 50000
    invoke-static {}, Ljdx;->b()J

    move-result-wide v8

    iget-boolean v6, v4, Ljdj;->c:Z

    invoke-static {v7, v6}, Ljch;->a(Ljcm;Z)Ljcn;

    move-result-object v7

    invoke-static {}, Ljdx;->b()J

    move-result-wide v10

    sub-long v8, v10, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    iput v6, v4, Ljdj;->b:I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 0
    const-string/jumbo v4, ""

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->a:Landroid/content/Context;

    invoke-static {v4}, Ljdh;->a(Landroid/content/Context;)Ljdh;

    move-result-object v4

    .line 51001
    iget-boolean v6, v4, Ljdh;->c:Z

    if-eqz v6, :cond_f

    iget-object v4, v4, Ljdh;->a:Landroid/content/Context;

    const-string/jumbo v6, "pref"

    const-string/jumbo v8, "dns_faile_count_total"

    const-wide/16 v10, 0x0

    invoke-static {v4, v6, v8, v10, v11}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 0
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->r:Ljdj;

    .line 51002
    iget v4, v4, Ljdj;->b:I

    .line 0
    int-to-long v8, v4

    invoke-virtual {v5, v8, v9}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(J)V

    iget-object v4, v7, Ljcn;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->s:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "#csid:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v7, Ljcn;->c:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v4, v7, Ljcn;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    :cond_11
    move-object v6, v4

    if-nez p1, :cond_30

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Ljct;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Ljcn;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v4

    if-eqz v4, :cond_25

    move-object v5, v4

    :goto_12
    return-object v5

    .line 35000
    :catch_0
    move-exception v4

    :try_start_f
    const-string/jumbo v34, "APS"

    const-string/jumbo v35, "getApsReq part4"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v4, v0, v1}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_2

    .line 0
    :catch_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljct;->s:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "get parames error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "#0301"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/16 v5, 0x7ef

    invoke-static {v4, v5}, Ljdt;->a(Ljava/lang/String;I)V

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    goto :goto_12

    .line 35000
    :catch_2
    move-exception v4

    :try_start_10
    const-string/jumbo v34, "APS"

    const-string/jumbo v35, "getApsReq part2"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v4, v0, v1}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_3
    move-exception v18

    const-string/jumbo v34, "APS"

    const-string/jumbo v35, "getApsReq part"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    const-string/jumbo v4, "1"

    move-object v8, v4

    move-object v9, v7

    goto/16 :goto_5

    :pswitch_0
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcz;

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<mcc>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</mcc>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<mnc>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</mnc>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<lac>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</lac>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<cellid>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "</cellid>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<signal>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, v4, Ljcz;->j:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</signal>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    move v7, v4

    :goto_13
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v7, v4, :cond_14

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcz;

    iget v0, v4, Ljcz;->c:I

    move/from16 v30, v0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v36, ","

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Ljcz;->d:I

    move/from16 v30, v0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v36, ","

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Ljcz;->j:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v7, v4, :cond_13

    const-string/jumbo v4, "*"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_13

    :cond_14
    move-object v4, v6

    goto/16 :goto_6

    :pswitch_1
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcz;

    const/4 v6, 0x0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<mcc>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</mcc>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<sid>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->g:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</sid>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<nid>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->h:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</nid>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<bid>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->i:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</bid>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Ljcz;->f:I

    if-lez v6, :cond_15

    iget v6, v4, Ljcz;->e:I

    if-lez v6, :cond_15

    const-string/jumbo v6, "<lon>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</lon>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<lat>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Ljcz;->e:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</lat>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string/jumbo v6, "<signal>"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, v4, Ljcz;->j:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "</signal>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_16
    iget-object v4, v13, Ljdm;->C:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_8

    :cond_17
    const/16 v6, 0x7f

    if-le v4, v6, :cond_6

    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_18
    invoke-virtual/range {v17 .. v17}, Ljdc;->b()V

    iget-object v4, v13, Ljdm;->F:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, v13, Ljdm;->F:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_b

    :cond_19
    const/4 v4, 0x0

    iput-short v4, v13, Ljdm;->b:S

    goto/16 :goto_c

    .line 45000
    :cond_1a
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/loc/cb;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_d

    .line 46000
    :pswitch_2
    const-string/jumbo v4, "resetCdmaData"

    invoke-virtual {v6, v4}, Ljdb;->a(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_3
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljcz;

    iget v7, v4, Ljcz;->f:I

    if-lez v7, :cond_1b

    iget v7, v4, Ljcz;->e:I

    if-lez v7, :cond_1b

    invoke-virtual {v6}, Ljdb;->a()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v6, v6, Ljdb;->a:Ljava/lang/Object;

    const-string/jumbo v7, "setCdmaLatLon"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v4, Ljcz;->e:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v4, v4, Ljcz;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v6, v7, v8}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    :cond_1b
    const-string/jumbo v4, "resetCdmaData"

    invoke-virtual {v6, v4}, Ljdb;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_10

    .line 47000
    :cond_1c
    if-eqz v7, :cond_e

    :try_start_11
    iput-object v7, v8, Ljdh;->e:Ljdk;

    .line 48000
    iget-object v4, v7, Ljdk;->g:Ljava/lang/String;

    .line 47000
    const/4 v6, 0x0

    const-string/jumbo v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "https"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "http://abroad.apilocate.amap.com/mobile/binary"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v8}, Ljdh;->b()Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, v8, Ljdh;->d:Z

    if-eqz v6, :cond_31

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_31

    const/4 v4, 0x0

    iput-boolean v4, v8, Ljdh;->d:Z

    iget-object v4, v8, Ljdh;->a:Landroid/content/Context;

    const-string/jumbo v6, "ip"

    const-string/jumbo v9, "last_ip"

    const-string/jumbo v10, ""

    invoke-static {v4, v6, v9, v10}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :goto_14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v8, Ljdh;->a:Landroid/content/Context;

    const-string/jumbo v9, "ip"

    const-string/jumbo v10, "last_ip"
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    const/4 v11, 0x0

    :try_start_12
    invoke-virtual {v4, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v10, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Ljdw;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5

    :goto_15
    :try_start_13
    const-string/jumbo v4, "http://apilocatesrc.amap.com/mobile/binary"

    const-string/jumbo v9, "apilocatesrc.amap.com"

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Ljdk;->g:Ljava/lang/String;

    .line 49000
    iget-object v4, v7, Ljdk;->f:Ljava/util/Map;

    .line 47000
    const-string/jumbo v6, "host"

    const-string/jumbo v9, "apilocatesrc.amap.com"

    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    iput-boolean v4, v8, Ljdh;->c:Z

    goto/16 :goto_11

    :catch_4
    move-exception v4

    goto/16 :goto_11

    :catch_5
    move-exception v4

    const-string/jumbo v9, "SPUtil"

    const-string/jumbo v10, "setPrefsInt"

    invoke-static {v4, v9, v10}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_15

    .line 0
    :catch_6
    move-exception v5

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->a:Landroid/content/Context;

    invoke-static {v4}, Ljdh;->a(Landroid/content/Context;)Ljdh;

    move-result-object v4

    .line 51000
    :try_start_14
    invoke-virtual {v4}, Ljdh;->a()Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7

    move-result v6

    if-nez v6, :cond_1e

    .line 0
    :cond_1d
    :goto_16
    const-string/jumbo v4, "APS"

    const-string/jumbo v6, "getApsLoc req"

    invoke-static {v5, v4, v6}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "/mobile/binary"

    invoke-static {v4, v5}, Ljdt;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->a:Landroid/content/Context;

    invoke-static {v4}, Ljdx;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38\uff0c\u672a\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc#0401"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 51000
    :cond_1e
    :try_start_15
    iget v6, v4, Ljdh;->f:I

    const/4 v7, 0x5

    if-gt v6, v7, :cond_1d

    iget-boolean v6, v4, Ljdh;->c:Z

    if-eqz v6, :cond_1d

    iget-object v6, v4, Ljdh;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v6, :cond_1f

    invoke-static {}, Ljeq;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iput-object v6, v4, Ljdh;->b:Ljava/util/concurrent/ExecutorService;

    :cond_1f
    iget-object v6, v4, Ljdh;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v6, v4, Ljdh;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Ljdh$a;

    iget-object v8, v4, Ljdh;->e:Ljdk;

    invoke-direct {v7, v4, v8}, Ljdh$a;-><init>(Ljdh;Ljdk;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7

    goto :goto_16

    :catch_7
    move-exception v4

    goto :goto_16

    .line 0
    :cond_20
    instance-of v4, v5, Lcom/loc/j;

    if-eqz v4, :cond_24

    move-object v4, v5

    check-cast v4, Lcom/loc/j;

    invoke-virtual {v4}, Lcom/loc/j;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "\u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u7f51\u7edc\u5f02\u5e38\uff0c\u72b6\u6001\u7801\u9519\u8bef#0404"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v5, Lcom/loc/j;

    invoke-virtual {v5}, Lcom/loc/j;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_21
    check-cast v5, Lcom/loc/j;

    invoke-virtual {v5}, Lcom/loc/j;->e()I

    move-result v4

    const/16 v5, 0x17

    if-eq v4, v5, :cond_22

    invoke-static {}, Ljdx;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljct;->o:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-gez v4, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8fde\u63a5\u8d85\u65f6#0402"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :cond_25
    iget-object v4, v7, Ljcn;->a:[B

    invoke-static {v4}, Ljdd;->a([B)[B

    move-result-object v4

    if-nez v4, :cond_26

    const/4 v4, 0x5

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u89e3\u5bc6\u6570\u636e\u5931\u8d25#0503"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    const/16 v4, 0x805

    invoke-static {v6, v4}, Ljdt;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    :cond_26
    move-object/from16 v0, p0

    iget-object v7, v0, Ljct;->j:Ljdl;

    invoke-virtual {v7, v5, v4}, Ljdl;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;[B)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v5

    invoke-static {v5}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ljct;->N:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->N:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    const/16 v4, 0x80e

    invoke-static {v6, v4}, Ljdt;->a(Ljava/lang/String;I)V

    :goto_18
    const/4 v4, 0x6

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Ljct;->s:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "location faile retype:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " rdesc:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->N:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string/jumbo v4, ""

    :goto_19
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "#0601"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_27
    const/16 v4, 0x80d

    invoke-static {v6, v4}, Ljdt;->a(Ljava/lang/String;I)V

    goto :goto_18

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->N:Ljava/lang/String;

    goto :goto_19

    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->i:Lcom/loc/cb;

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->i:Lcom/loc/cb;

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v7

    :try_start_16
    const-string/jumbo v8, "-1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_2e

    .line 51003
    iget-boolean v6, v4, Lcom/loc/cb;->c:Z

    if-nez v6, :cond_2b

    invoke-virtual {v4}, Lcom/loc/cb;->c()Z

    move-result v6

    if-eqz v6, :cond_2b

    iget-object v6, v4, Lcom/loc/cb;->d:Lcom/loc/cb$a;

    if-nez v6, :cond_2a

    new-instance v6, Lcom/loc/cb$a;

    invoke-direct {v6, v4}, Lcom/loc/cb$a;-><init>(Lcom/loc/cb;)V

    iput-object v6, v4, Lcom/loc/cb;->d:Lcom/loc/cb$a;

    :cond_2a
    iget-object v6, v4, Lcom/loc/cb;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object v7, v4, Lcom/loc/cb;->d:Lcom/loc/cb$a;

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/loc/cb;->c:Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_8

    .line 0
    :cond_2b
    :goto_1a
    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v4

    if-nez v4, :cond_2d

    const-string/jumbo v4, "-5"

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string/jumbo v4, "1"

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string/jumbo v4, "2"

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string/jumbo v4, "14"

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string/jumbo v4, "24"

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string/jumbo v4, "-1"

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_2c
    const/4 v4, 0x5

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_2d
    :goto_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ljct;->u:Z

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setOffset(Z)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Ljct;->t:Z

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljct;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->f(Ljava/lang/String;)V

    move-object v4, v5

    :goto_1c
    const-string/jumbo v5, "new"

    invoke-virtual {v4, v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Ljct;->J:Ljava/lang/String;

    move-object v5, v4

    goto/16 :goto_12

    :cond_2e
    :try_start_17
    invoke-virtual {v4}, Lcom/loc/cb;->b()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8

    goto/16 :goto_1a

    :catch_8
    move-exception v4

    const-string/jumbo v6, "BeaconManager"

    const-string/jumbo v7, "checkLocationType"

    invoke-static {v4, v6, v7}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_2f
    const/4 v4, 0x6

    invoke-virtual {v5, v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    goto :goto_1b

    :catch_9
    move-exception v4

    goto/16 :goto_f

    :catch_a
    move-exception v4

    goto/16 :goto_e

    :catch_b
    move-exception v17

    goto/16 :goto_a

    .line 35000
    :catch_c
    move-exception v4

    goto/16 :goto_3

    :cond_30
    move-object v4, v5

    goto :goto_1c

    :cond_31
    move-object v6, v4

    goto/16 :goto_14

    :cond_32
    move-object v7, v6

    goto/16 :goto_7

    :cond_33
    move-object v9, v8

    move-object v8, v7

    goto/16 :goto_5

    :cond_34
    move-object v10, v4

    goto/16 :goto_1

    :cond_35
    move-object v11, v9

    move-object v12, v10

    goto/16 :goto_0

    .line 46000
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v0, p0, Ljct;->d:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljct;->c:Ljdc;

    invoke-virtual {v0}, Ljdc;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget v0, Ljct;->P:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Ljdn;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput v0, Ljct;->P:I

    invoke-static {p0}, Ljdn;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initAuth"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/16 v9, 0x849

    const/16 v8, 0xc

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 0
    const-string/jumbo v4, ""

    const-string/jumbo v5, "network"

    iget-object v0, p0, Ljct;->d:Lcom/loc/ce;

    .line 27000
    iget v0, v0, Lcom/loc/ce;->a:I

    and-int/lit8 v0, v0, 0x3

    .line 0
    iget-object v1, p0, Ljct;->d:Lcom/loc/ce;

    invoke-virtual {v1}, Lcom/loc/ce;->a()Ljcz;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v6, p0, Ljct;->k:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Ljct;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_0
    iget-object v0, p0, Ljct;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-static {v0, v1}, Ljdx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Ljct;->b:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    invoke-static {v0}, Ljdx;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iput v8, p0, Ljct;->E:I

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5b9a\u4f4d\u6743\u9650\u88ab\u7981\u7528,\u8bf7\u6388\u4e88\u5e94\u7528\u5b9a\u4f4d\u6743\u9650#1201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Ljdt;->a(Ljava/lang/String;I)V

    :goto_0
    return-object v4

    :cond_2
    invoke-static {}, Ljdx;->c()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iput v8, p0, Ljct;->E:I

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u5b9a\u4f4d\u670d\u52a1\u5f00\u5173#1206"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Ljdt;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljct;->d:Lcom/loc/ce;

    .line 28000
    iget-object v0, v0, Lcom/loc/ce;->n:Ljava/lang/String;

    .line 0
    iget-object v1, p0, Ljct;->c:Ljdc;

    .line 29000
    iget-object v1, v1, Ljdc;->o:Ljava/lang/String;

    .line 0
    iget-object v2, p0, Ljct;->c:Ljdc;

    iget-object v3, p0, Ljct;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Ljdc;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Ljct;->c:Ljdc;

    invoke-virtual {v2}, Ljdc;->f()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_6

    :cond_4
    iput v8, p0, Ljct;->E:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u57fa\u7ad9\u4e0e\u83b7\u53d6WIFI\u7684\u6743\u9650\u90fd\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v7, v9}, Ljdt;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e3a\u7a7a\uff0c\u5e76\u4e14\u83b7\u53d6WIFI\u6743\u9650\u88ab\u7981\u7528,\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1203"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_8

    iput v8, p0, Ljct;->E:I

    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 30000
    iget-boolean v0, v0, Ljdc;->q:Z

    .line 0
    if-nez v0, :cond_7

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WIFI\u5f00\u5173\u5173\u95ed\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1204"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v7, v9}, Ljdt;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u7684WIFI\u5217\u8868\u4e3a\u7a7a\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1205"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    invoke-static {v0}, Ljdx;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 31000
    iget-boolean v0, v0, Ljdc;->q:Z

    .line 0
    if-nez v0, :cond_9

    const/16 v0, 0x12

    iput v0, p0, Ljct;->E:I

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u98de\u884c\u6a21\u5f0f\u4e0b\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5173\u95ed\u98de\u884c\u6a21\u5f0f\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x854

    invoke-static {v7, v0}, Ljdt;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 32000
    iget-boolean v0, v0, Ljdc;->q:Z

    .line 0
    if-nez v0, :cond_a

    iget-object v0, p0, Ljct;->d:Lcom/loc/ce;

    invoke-virtual {v0}, Lcom/loc/ce;->d()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x13

    iput v0, p0, Ljct;->E:I

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6ca1\u6709\u68c0\u67e5\u5230SIM\u5361\uff0c\u5e76\u4e14WIFI\u5f00\u5173\u5173\u95ed\uff0c\u8bf7\u6253\u5f00WIFI\u5f00\u5173\u6216\u8005\u63d2\u5165SIM\u5361#1901"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x855

    invoke-static {v7, v0}, Ljdt;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 33000
    iget-boolean v0, v0, Ljdc;->q:Z

    .line 0
    if-nez v0, :cond_b

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e3a\u7a7a\uff0c\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u60a8\u6253\u5f00WIFI\u5f00\u5173\u5728\u53d1\u8d77\u5b9a\u4f4d#1301"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v0, 0xd

    iput v0, p0, Ljct;->E:I

    const/16 v0, 0x853

    invoke-static {v7, v0}, Ljdt;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e0eWIFI\u4e3a\u7a7a\uff0c\u8bf7\u79fb\u52a8\u5230\u6709WIFI\u7684\u533a\u57df\uff0c\u82e5\u786e\u5b9a\u5f53\u524d\u533a\u57df\u6709WIFI\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6388\u4e88APP\u5b9a\u4f4d\u6743\u9650#1302"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    iget-object v6, p0, Ljct;->c:Ljdc;

    invoke-virtual {v6}, Ljdc;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iput-object v6, p0, Ljct;->y:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Ljct;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v6}, Ljdc;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v6

    iput-boolean v6, p0, Ljct;->z:Z

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xb

    iput v0, p0, Ljct;->E:I

    const/16 v0, 0x83f

    invoke-static {v7, v0}, Ljdt;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "get cgi failure#1101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    move-object v0, v4

    :cond_e
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljdx;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    move-object v4, v0

    goto/16 :goto_0

    :pswitch_0
    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v1, Ljcz;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ljcz;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ljcz;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ljcz;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Ljct;->z:Z

    if-eqz v0, :cond_12

    :cond_11
    const-string/jumbo v0, "cgiwifi"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_12
    const-string/jumbo v0, "cgi"

    goto :goto_5

    :pswitch_1
    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v1, Ljcz;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ljcz;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ljcz;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ljcz;->h:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Ljcz;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Ljct;->z:Z

    if-eqz v0, :cond_14

    :cond_13
    const-string/jumbo v0, "cgiwifi"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_14
    const-string/jumbo v0, "cgi"

    goto :goto_6

    :pswitch_2
    iget-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Ljct;->z:Z

    if-eqz v0, :cond_1b

    :cond_15
    move v1, v3

    :goto_7
    iget-boolean v0, p0, Ljct;->z:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    iput v0, p0, Ljct;->E:I

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14WIFI\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#0201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v7, v0}, Ljdt;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_18

    const/4 v0, 0x2

    iput v0, p0, Ljct;->E:I

    iget-boolean v0, p0, Ljct;->z:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e6

    invoke-static {v7, v0}, Ljdt;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v6, p0, Ljct;->c:Ljdc;

    invoke-virtual {v6}, Ljdc;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v7, v0}, Ljdt;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "#%s#"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_19
    const-string/jumbo v1, "network"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v0, ""

    const/4 v1, 0x2

    iput v1, p0, Ljct;->E:I

    iget-object v1, p0, Ljct;->c:Ljdc;

    .line 34000
    iget-boolean v1, v1, Ljdc;->q:Z

    .line 0
    if-nez v1, :cond_1a

    iget-object v1, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00WIFI\u5f00\u5173#0203"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const/16 v1, 0x7e6

    invoke-static {v7, v1}, Ljdt;->a(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_1a
    iget-object v1, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u6ca1\u6709\u641c\u7d22\u5230WIFI\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1b
    move v1, v2

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(DD)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 7

    :try_start_0
    iget-object v0, p0, Ljct;->r:Ljdj;

    iget-object v1, p0, Ljct;->a:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljdj;->a(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\"status\":\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljct;->j:Ljdl;

    invoke-virtual {v1, v0}, Ljdl;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLatitude(D)V

    invoke-virtual {v0, p3, p4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null#0101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x7db

    invoke-static {v0, v1}, Ljdt;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iget-object v1, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 51006
    iget-boolean v0, v0, Ljdc;->j:Z

    .line 0
    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const-string/jumbo v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljct;->a()V

    iget-object v0, p0, Ljct;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Ljct;->E:I

    iget-object v1, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljct;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    invoke-static {v6}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljct;->g:Ljde;

    iget-object v1, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51007
    iput-object v1, v0, Ljde;->f:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Ljct;->g:Ljde;

    iget-object v1, p0, Ljct;->d:Lcom/loc/ce;

    invoke-virtual {v1}, Lcom/loc/ce;->a()Ljcz;

    move-result-object v1

    .line 51008
    iput-object v1, v0, Ljde;->g:Ljcz;

    .line 0
    invoke-virtual {p0, v6}, Ljct;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ljct;->e:Ljdb;

    iget-object v1, p0, Ljct;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljdb;->a(Landroid/content/Context;)V

    iget-object v0, p0, Ljct;->e:Ljdb;

    iget-object v1, p0, Ljct;->g:Ljde;

    iget-object v2, p0, Ljct;->A:Ljava/lang/String;

    iget-object v4, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0}, Ljct;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Ljdb;->a(Ljde;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {}, Ljdj;->a()Ljdj;

    move-result-object v0

    iput-object v0, p0, Ljct;->r:Ljdj;

    iget-object v0, p0, Ljct;->r:Ljdj;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Ljct;->r:Ljdj;

    iget-object v0, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v2

    iget-object v0, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v0

    sget-object v4, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Ljdj;->a(JZLcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Ljct;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-static {v0, v1}, Ljdx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Ljct;->b:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Ljct;->p:Ljdm;

    if-nez v0, :cond_2

    new-instance v0, Ljdm;

    invoke-direct {v0}, Ljdm;-><init>()V

    iput-object v0, p0, Ljct;->p:Ljdm;

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljcv;

    invoke-direct {v0}, Ljcv;-><init>()V

    iput-object v0, p0, Ljct;->I:Ljcv;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljct;->a:Landroid/content/Context;

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    invoke-static {v0}, Ljdn;->e(Landroid/content/Context;)V

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    invoke-static {v0}, Ljdx;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Ljct;->c:Ljdc;

    if-nez v0, :cond_2

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Ljdx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Ljdc;

    iget-object v2, p0, Ljct;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Ljdc;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Ljct;->c:Ljdc;

    :cond_2
    iget-object v0, p0, Ljct;->d:Lcom/loc/ce;

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/ce;

    iget-object v1, p0, Ljct;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/ce;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljct;->d:Lcom/loc/ce;

    :cond_3
    iget-object v0, p0, Ljct;->e:Ljdb;

    if-nez v0, :cond_4

    new-instance v0, Ljdb;

    invoke-direct {v0}, Ljdb;-><init>()V

    iput-object v0, p0, Ljct;->e:Ljdb;

    :cond_4
    iget-object v0, p0, Ljct;->f:Ljda;

    if-nez v0, :cond_5

    new-instance v0, Ljda;

    invoke-direct {v0}, Ljda;-><init>()V

    iput-object v0, p0, Ljct;->f:Ljda;

    :cond_5
    iget-object v0, p0, Ljct;->g:Ljde;

    if-nez v0, :cond_6

    new-instance v0, Ljde;

    invoke-direct {v0}, Ljde;-><init>()V

    iput-object v0, p0, Ljct;->g:Ljde;

    :cond_6
    iget-object v0, p0, Ljct;->j:Ljdl;

    if-nez v0, :cond_0

    new-instance v0, Ljdl;

    invoke-direct {v0}, Ljdl;-><init>()V

    iput-object v0, p0, Ljct;->j:Ljdl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initBase"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 0
    iput-object p1, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v2, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-object v2, p0, Ljct;->c:Ljdc;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljct;->c:Ljdc;

    iget-object v3, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    iget-object v3, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiScan()Z

    move-result v3

    iget-object v4, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v4

    .line 1000
    iput-boolean v3, v2, Ljdc;->l:Z

    iput-boolean v4, v2, Ljdc;->m:Z

    .line 0
    :cond_1
    iget-object v2, p0, Ljct;->r:Ljdj;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljct;->r:Ljdj;

    iget-object v3, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    iget-object v3, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v3

    sget-object v6, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v3, v6}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v0, v3}, Ljdj;->a(JZLcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)V

    :cond_3
    iget-object v0, p0, Ljct;->g:Ljde;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljct;->g:Ljde;

    iget-object v2, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    .line 2000
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v3

    iput-boolean v3, v0, Ljde;->j:Z

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v3

    iput-boolean v3, v0, Ljde;->i:Z

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v3

    iput-boolean v3, v0, Ljde;->d:Z

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ljde;->k:Ljava/lang/String;

    .line 0
    :cond_4
    iget-object v0, p0, Ljct;->j:Ljdl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljct;->j:Ljdl;

    iget-object v2, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    .line 3000
    if-nez v2, :cond_9

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, v0, Ljdl;->a:Lcom/amap/api/location/AMapLocationClientOption;

    .line 0
    :cond_5
    :goto_0
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    :try_start_0
    iget-object v2, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    iget-object v2, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    :try_start_1
    iget-object v3, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    :try_start_2
    iget-object v4, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    iget-object v4, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v4

    iput-boolean v4, p0, Ljct;->x:Z

    iget-object v4, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v4

    iput-boolean v4, p0, Ljct;->G:Z

    iget-boolean v4, p0, Ljct;->u:Z

    if-ne v3, v4, :cond_6

    iget-boolean v4, p0, Ljct;->t:Z

    if-ne v2, v4, :cond_6

    iget-boolean v4, p0, Ljct;->w:Z

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Ljct;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-eq v0, v4, :cond_8

    :cond_6
    :try_start_3
    iget-object v4, p0, Ljct;->g:Ljde;

    if-eqz v4, :cond_7

    iget-object v4, p0, Ljct;->g:Ljde;

    .line 4000
    const-wide/16 v6, 0x0

    iput-wide v6, v4, Ljde;->e:J

    const/4 v5, 0x0

    iput-object v5, v4, Ljde;->f:Ljava/lang/String;

    .line 0
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljct;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljct;->Q:Z

    iget-object v4, p0, Ljct;->I:Ljcv;

    if-eqz v4, :cond_8

    iget-object v4, p0, Ljct;->I:Ljcv;

    invoke-virtual {v4}, Ljcv;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_8
    :goto_1
    iput-boolean v3, p0, Ljct;->u:Z

    iput-boolean v2, p0, Ljct;->t:Z

    iput-boolean v1, p0, Ljct;->w:Z

    iput-object v0, p0, Ljct;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-void

    .line 3000
    :cond_9
    iput-object v2, v0, Ljdl;->a:Lcom/amap/api/location/AMapLocationClientOption;

    goto :goto_0

    .line 0
    :catch_0
    move-exception v4

    :try_start_4
    const-string/jumbo v5, "APS"

    const-string/jumbo v6, "cleanCache"

    invoke-static {v4, v5, v6}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v2

    move v2, v1

    move v3, v1

    goto :goto_1

    :catch_3
    move-exception v3

    move v3, v1

    goto :goto_1
.end method

.method a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_0
    iget-object v0, p0, Ljct;->e:Ljdb;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljct;->e:Ljdb;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdb;->a(Lorg/json/JSONObject;)V

    :cond_1
    iget-object v0, p0, Ljct;->e:Ljdb;

    invoke-virtual {v0}, Ljdb;->b()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-static {p1}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljct;->g:Ljde;

    iget-object v1, p0, Ljct;->A:Ljava/lang/String;

    iget-object v2, p0, Ljct;->B:Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljct;->a:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljde;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final c()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 0
    invoke-virtual {p0}, Ljct;->b()V

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null#0101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Ljct;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljct;->M:I

    iget v0, p0, Ljct;->M:I

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Ljct;->f:Ljda;

    invoke-virtual {v0}, Ljda;->f()V

    iget-object v0, p0, Ljct;->c:Ljdc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljct;->c:Ljdc;

    iget-boolean v1, p0, Ljct;->q:Z

    .line 5000
    iget-object v2, v0, Ljdc;->i:Landroid/content/Context;

    iget-object v0, v0, Ljdc;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-nez v1, :cond_5

    .line 0
    :cond_1
    :goto_1
    iget-object v0, p0, Ljct;->f:Ljda;

    .line 6000
    invoke-virtual {v0}, Ljda;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v0, v0, Ljda;->a:Ljava/lang/Object;

    const-string/jumbo v1, "getColUpHist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9

    .line 0
    :cond_2
    :goto_2
    iget-object v0, p0, Ljct;->e:Ljdb;

    .line 7000
    :try_start_1
    invoke-virtual {v0}, Ljdb;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Ljdb;->a:Ljava/lang/Object;

    const-string/jumbo v1, "getOffDlHist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 0
    :cond_3
    :goto_3
    iget-wide v0, p0, Ljct;->o:J

    iget-boolean v2, p0, Ljct;->Q:Z

    if-nez v2, :cond_7

    iput-boolean v8, p0, Ljct;->Q:Z

    move v0, v9

    :goto_4
    if-eqz v0, :cond_9

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ljct;->w:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljdn;->b(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_4
    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto :goto_0

    .line 5000
    :cond_5
    invoke-static {}, Ljdx;->c()I

    move-result v0

    const/16 v1, 0x11

    if-le v0, v1, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android.provider.Settings$Global"

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v9

    const-string/jumbo v3, "wifi_scan_always_enabled"

    aput-object v3, v0, v8

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v3, v9

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    :try_start_2
    const-string/jumbo v4, "getInt"

    invoke-static {v2, v4, v0, v3}, Ljdr;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v3, "wifi_scan_always_enabled"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    const-string/jumbo v3, "putInt"

    invoke-static {v2, v3, v0, v1}, Ljdr;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiManagerWrapper"

    const-string/jumbo v2, "enableWifiAlwaysScan"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7000
    :cond_6
    :try_start_3
    iget-object v1, v0, Ljdb;->a:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, v0, Ljdb;->a:Ljava/lang/Object;

    const-string/jumbo v2, "stopOff"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljdb;->b:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 0
    :cond_7
    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    const-wide/16 v0, 0x0

    iget-object v2, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v2}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Ljdx;->a()J

    move-result-wide v0

    iget-object v2, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :cond_8
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1d

    move v0, v8

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Ljct;->F:Lcom/loc/bz;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Ljct;->G:Z

    if-eqz v0, :cond_d

    iget-object v1, p0, Ljct;->F:Lcom/loc/bz;

    .line 8000
    iget-object v0, v1, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/loc/bz;->e:Z

    if-nez v0, :cond_c

    iput-boolean v8, v1, Lcom/loc/bz;->e:Z

    :try_start_4
    iget-object v0, v1, Lcom/loc/bz;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    iget-object v2, v1, Lcom/loc/bz;->b:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/loc/bz;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_a
    :goto_5
    :try_start_5
    iget-object v0, v1, Lcom/loc/bz;->c:Landroid/hardware/Sensor;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    iget-object v2, v1, Lcom/loc/bz;->c:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/loc/bz;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_b
    :goto_6
    :try_start_6
    iget-object v0, v1, Lcom/loc/bz;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    iget-object v2, v1, Lcom/loc/bz;->d:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/loc/bz;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 0
    :cond_c
    :goto_7
    :try_start_7
    iget-object v0, p0, Ljct;->c:Ljdc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljdc;->a(Z)V

    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 9000
    iget-object v0, v0, Ljdc;->c:Ljava/util/ArrayList;

    .line 0
    iput-object v0, p0, Ljct;->k:Ljava/util/ArrayList;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    iget-object v0, p0, Ljct;->d:Lcom/loc/ce;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljct;->h()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/loc/ce;->a(ZZ)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    invoke-direct {p0}, Ljct;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljct;->A:Ljava/lang/String;

    iget-object v0, p0, Ljct;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Ljct;->h:Lcom/loc/bw;

    .line 10000
    invoke-static {}, Ljdn;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/loc/bw;->a()V

    const/4 v0, 0x4

    :goto_a
    if-lez v0, :cond_e

    iget-boolean v2, v1, Lcom/loc/bw;->c:Z

    if-nez v2, :cond_e

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 8000
    :catch_2
    move-exception v0

    const-string/jumbo v2, "AMapSensorManager"

    const-string/jumbo v3, "registerListener mPressure"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v0

    const-string/jumbo v2, "AMapSensorManager"

    const-string/jumbo v3, "registerListener mRotationVector"

    invoke-static {v0, v2, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_4
    move-exception v0

    const-string/jumbo v1, "AMapSensorManager"

    const-string/jumbo v2, "registerListener mAcceleroMeterVector"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 0
    :cond_d
    iget-object v0, p0, Ljct;->F:Lcom/loc/bz;

    invoke-virtual {v0}, Lcom/loc/bz;->a()V

    goto :goto_7

    :catch_5
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "getLocation getScanResultsParam"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_6
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "getLocation getCgiListParam"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 10000
    :cond_e
    iget-boolean v0, v1, Lcom/loc/bw;->c:Z

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/loc/bw;->c()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 0
    :goto_b
    iput-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    .line 10000
    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    .line 0
    :cond_10
    iget v0, p0, Ljct;->E:I

    iget-object v1, p0, Ljct;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Ljct;->e:Ljdb;

    iget-object v0, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v2, p0, Ljct;->A:Ljava/lang/String;

    .line 11000
    :try_start_9
    invoke-virtual {v1}, Ljdb;->a()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-boolean v3, v1, Ljdb;->b:Z

    if-nez v3, :cond_13

    if-nez v0, :cond_12

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    :cond_12
    invoke-static {v0}, Ljdo;->a(Lcom/amap/api/location/AMapLocationClientOption;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, v1, Ljdb;->a:Ljava/lang/Object;

    const-string/jumbo v4, "startOff"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, v1, Ljdb;->b:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 0
    :cond_13
    :goto_c
    iget-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljct;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 12000
    iget-boolean v0, v0, Ljdc;->j:Z

    .line 0
    if-eqz v0, :cond_14

    const/16 v0, 0xf

    const-string/jumbo v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Ljct;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setMock(Z)V

    goto/16 :goto_0

    .line 11000
    :catch_7
    move-exception v0

    const-string/jumbo v1, "OffLineLocManager"

    const-string/jumbo v2, "getLocation:isOffLineLoc"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 0
    :cond_14
    iget-wide v0, p0, Ljct;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    move v2, v8

    :goto_d
    iget-object v0, p0, Ljct;->g:Ljde;

    iget-object v1, p0, Ljct;->d:Lcom/loc/ce;

    iget-object v3, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v4, p0, Ljct;->c:Ljdc;

    iget-object v5, p0, Ljct;->B:Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljct;->A:Ljava/lang/String;

    iget-object v7, p0, Ljct;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v7}, Ljde;->a(Lcom/loc/ce;ZLcom/autonavi/aps/amapapi/model/AMapLocationServer;Ljdc;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v0}, Ljct;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    :cond_15
    :goto_e
    iget-object v0, p0, Ljct;->g:Ljde;

    iget-object v1, p0, Ljct;->A:Ljava/lang/String;

    iget-object v2, p0, Ljct;->B:Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v4, p0, Ljct;->a:Landroid/content/Context;

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljde;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V

    iget-object v0, p0, Ljct;->e:Ljdb;

    iget-object v1, p0, Ljct;->A:Ljava/lang/String;

    iget-object v2, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    .line 15000
    :try_start_a
    invoke-static {v2}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Ljdb;->c:Landroid/content/Context;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    if-nez v3, :cond_1b

    .line 0
    :cond_16
    :goto_f
    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Ljct;->e:Ljdb;

    iget-object v1, p0, Ljct;->g:Ljde;

    iget-object v2, p0, Ljct;->A:Ljava/lang/String;

    iget-object v3, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0}, Ljct;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual/range {v0 .. v6}, Ljdb;->a(Ljde;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_17
    iget-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljct;->G:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljct;->F:Lcom/loc/bz;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Ljct;->F:Lcom/loc/bz;

    .line 16000
    iget-wide v2, v1, Lcom/loc/bz;->f:D

    .line 0
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setAltitude(D)V

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Ljct;->F:Lcom/loc/bz;

    .line 17000
    iget v1, v1, Lcom/loc/bz;->h:F

    .line 0
    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setBearing(F)V

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Ljct;->F:Lcom/loc/bz;

    .line 18000
    iget-wide v2, v1, Lcom/loc/bz;->n:D

    .line 0
    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setSpeed(F)V

    :goto_10
    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ljct;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    move v2, v8

    goto/16 :goto_d

    :cond_19
    move v2, v9

    goto/16 :goto_d

    :cond_1a
    invoke-direct {p0, v9, v8}, Ljct;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->e(Ljava/lang/String;)V

    iget-object v0, p0, Ljct;->g:Ljde;

    iget-object v1, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13000
    iput-object v1, v0, Ljde;->f:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Ljct;->g:Ljde;

    iget-object v1, p0, Ljct;->d:Lcom/loc/ce;

    invoke-virtual {v1}, Lcom/loc/ce;->a()Ljcz;

    move-result-object v1

    .line 14000
    iput-object v1, v0, Ljde;->g:Ljcz;

    .line 0
    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {p0, v0}, Ljct;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    goto/16 :goto_e

    .line 15000
    :cond_1b
    :try_start_b
    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0}, Ljdb;->a()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v0, Ljdb;->a:Ljava/lang/Object;

    const-string/jumbo v7, "updateHM"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v0, v0, Ljdb;->c:Landroid/content/Context;

    aput-object v0, v8, v10

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v6, v7, v8}, Ljdr;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_f

    :catch_8
    move-exception v0

    goto/16 :goto_f

    .line 0
    :cond_1c
    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setAltitude(D)V

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v11}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setBearing(F)V

    iget-object v0, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v11}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setSpeed(F)V

    goto/16 :goto_10

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :cond_1d
    move v0, v9

    goto/16 :goto_4
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljct;->a(Landroid/content/Context;)V

    iget-object v0, p0, Ljct;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p0, v0}, Ljct;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    invoke-virtual {p0}, Ljct;->g()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljct;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljct;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "doFusionLocation"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 0
    iput-object v2, p0, Ljct;->J:Ljava/lang/String;

    iput-boolean v10, p0, Ljct;->C:Z

    iput-boolean v10, p0, Ljct;->D:Z

    iget-object v0, p0, Ljct;->f:Ljda;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljct;->f:Ljda;

    invoke-virtual {v0}, Ljda;->a()V

    iget-object v0, p0, Ljct;->f:Ljda;

    iput-object v2, v0, Ljda;->a:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ljct;->h:Lcom/loc/bw;

    if-eqz v0, :cond_4

    iget-object v1, p0, Ljct;->h:Lcom/loc/bw;

    .line 19000
    :try_start_0
    iget-boolean v0, v1, Lcom/loc/bw;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/loc/bw;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/loc/bw;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-boolean v0, v1, Lcom/loc/bw;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/loc/bw;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    iget-boolean v0, v1, Lcom/loc/bw;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/loc/bw;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iput-object v2, v1, Lcom/loc/bw;->d:Ljea;

    iput-object v2, v1, Lcom/loc/bw;->a:Landroid/content/Context;

    iput-object v2, v1, Lcom/loc/bw;->d:Ljea;

    iput-object v2, v1, Lcom/loc/bw;->e:Landroid/content/ServiceConnection;

    iput-object v2, v1, Lcom/loc/bw;->f:Landroid/content/ServiceConnection;

    iput-object v2, v1, Lcom/loc/bw;->g:Landroid/content/ServiceConnection;

    iput-boolean v5, v1, Lcom/loc/bw;->b:Z

    iput-boolean v10, v1, Lcom/loc/bw;->c:Z

    iput-boolean v10, v1, Lcom/loc/bw;->h:Z

    iput-boolean v10, v1, Lcom/loc/bw;->i:Z

    iput-boolean v10, v1, Lcom/loc/bw;->j:Z

    iput-boolean v10, v1, Lcom/loc/bw;->m:Z

    iput-boolean v10, v1, Lcom/loc/bw;->l:Z

    iput-boolean v10, v1, Lcom/loc/bw;->k:Z

    .line 0
    :cond_4
    iget-object v0, p0, Ljct;->g:Ljde;

    if-eqz v0, :cond_6

    iget-object v3, p0, Ljct;->g:Ljde;

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    .line 20000
    :try_start_1
    invoke-virtual {v3}, Ljde;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_5

    :try_start_2
    const-string/jumbo v1, "hmdb"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    const-string/jumbo v0, "hist"

    invoke-static {v1, v0}, Ljdx;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, v3, Ljde;->b:Z

    const/4 v0, 0x0

    iput-object v0, v3, Ljde;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, v3, Ljde;->h:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 0
    :cond_6
    :goto_2
    iget-object v0, p0, Ljct;->I:Ljcv;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljct;->I:Ljcv;

    invoke-virtual {v0}, Ljcv;->a()V

    :cond_7
    iget-object v0, p0, Ljct;->j:Ljdl;

    if-eqz v0, :cond_8

    iput-object v2, p0, Ljct;->j:Ljdl;

    :cond_8
    invoke-static {}, Ljdx;->g()V

    :try_start_5
    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljct;->l:Ljct$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    iget-object v1, p0, Ljct;->l:Ljct$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_9
    iput-object v2, p0, Ljct;->l:Ljct$a;

    :goto_3
    iget-object v0, p0, Ljct;->d:Lcom/loc/ce;

    if-eqz v0, :cond_c

    iget-object v1, p0, Ljct;->d:Lcom/loc/ce;

    .line 21000
    iget-object v0, v1, Lcom/loc/ce;->g:Ljcy;

    .line 22000
    iget-object v3, v0, Ljcy;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iput-wide v12, v0, Ljcy;->b:J

    .line 21000
    iput-wide v12, v1, Lcom/loc/ce;->k:J

    iget-object v3, v1, Lcom/loc/ce;->s:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, v1, Lcom/loc/ce;->r:Z

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v0, v1, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/loc/ce;->m:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_a

    :try_start_7
    iget-object v0, v1, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    iget-object v3, v1, Lcom/loc/ce;->m:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_a
    :goto_4
    iput-object v2, v1, Lcom/loc/ce;->m:Landroid/telephony/PhoneStateListener;

    iget-object v0, v1, Lcom/loc/ce;->q:Landroid/os/HandlerThread;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/loc/ce;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, v1, Lcom/loc/ce;->q:Landroid/os/HandlerThread;

    :cond_b
    const/16 v0, -0x71

    iput v0, v1, Lcom/loc/ce;->e:I

    iput-object v2, v1, Lcom/loc/ce;->f:Landroid/telephony/TelephonyManager;

    iput-object v2, v1, Lcom/loc/ce;->h:Ljava/lang/Object;

    .line 0
    :cond_c
    iget-object v0, p0, Ljct;->c:Ljdc;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 23000
    invoke-virtual {v0}, Ljdc;->b()V

    iget-object v0, v0, Ljdc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 0
    :cond_d
    iget-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_e
    iget-object v0, p0, Ljct;->F:Lcom/loc/bz;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljct;->F:Lcom/loc/bz;

    .line 24000
    :try_start_8
    invoke-virtual {v0}, Lcom/loc/bz;->a()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/bz;->b:Landroid/hardware/Sensor;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/bz;->c:Landroid/hardware/Sensor;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/bz;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/bz;->d:Landroid/hardware/Sensor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/bz;->e:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 0
    :cond_f
    :goto_5
    iput-object v2, p0, Ljct;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-object v2, p0, Ljct;->a:Landroid/content/Context;

    iget-object v0, p0, Ljct;->e:Ljdb;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljct;->e:Ljdb;

    .line 25000
    const-string/jumbo v1, "stopOff"

    invoke-virtual {v0, v1}, Ljdb;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "destroy"

    invoke-virtual {v0, v1}, Ljdb;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljdb;->b()V

    iput-boolean v10, v0, Ljdb;->b:Z

    iput-object v2, v0, Ljdb;->a:Ljava/lang/Object;

    .line 0
    :cond_10
    iput-object v2, p0, Ljct;->B:Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljct;->i:Lcom/loc/cb;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljct;->i:Lcom/loc/cb;

    .line 26000
    invoke-virtual {v0}, Lcom/loc/cb;->b()V

    iput-object v2, v0, Lcom/loc/cb;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 0
    :cond_11
    return-void

    .line 19000
    :catch_0
    move-exception v0

    const-string/jumbo v3, "ConnectionServiceManager"

    const-string/jumbo v4, "unbindService"

    invoke-static {v0, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 20000
    :cond_12
    :try_start_9
    const-string/jumbo v0, "time<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljdx;->a()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "hist"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Ljde;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_13
    :goto_6
    if-eqz v1, :cond_5

    :try_start_b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Cache"

    const-string/jumbo v3, "destroy part"

    invoke-static {v0, v1, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_c
    const-string/jumbo v4, "DB"

    const-string/jumbo v5, "clearHist"

    invoke-static {v0, v4, v5}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string/jumbo v4, "no such table"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_7
    :try_start_d
    const-string/jumbo v4, "DB"

    const-string/jumbo v5, "clearHist p2"

    invoke-static {v0, v4, v5}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v1, :cond_5

    :try_start_e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_14
    throw v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    .line 0
    :catch_4
    move-exception v0

    :try_start_f
    const-string/jumbo v1, "APS"

    const-string/jumbo v3, "destroy"

    invoke-static {v0, v1, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    iput-object v2, p0, Ljct;->l:Ljct$a;

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    iput-object v2, p0, Ljct;->l:Ljct$a;

    throw v0

    .line 21000
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_5
    move-exception v0

    const-string/jumbo v3, "CgiManager"

    const-string/jumbo v4, "destroy"

    invoke-static {v0, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 24000
    :catch_6
    move-exception v0

    const-string/jumbo v1, "AMapSensorManager"

    const-string/jumbo v3, "destroy"

    invoke-static {v0, v1, v3}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 20000
    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_7
.end method

.method public f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    iget-object v0, p0, Ljct;->l:Ljct$a;

    if-nez v0, :cond_0

    new-instance v0, Ljct$a;

    invoke-direct {v0, p0}, Ljct$a;-><init>(Ljct;)V

    iput-object v0, p0, Ljct;->l:Ljct$a;

    :cond_0
    iget-object v0, p0, Ljct;->L:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Ljct;->L:Landroid/content/IntentFilter;

    iget-object v0, p0, Ljct;->L:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Ljct;->L:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Ljct;->L:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Ljct;->L:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Ljct;->L:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ljct;->a:Landroid/content/Context;

    iget-object v1, p0, Ljct;->l:Ljct$a;

    iget-object v2, p0, Ljct;->L:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 0
    :try_start_0
    iget-boolean v0, p0, Ljct;->C:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljct;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Ljct;->A:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v0, p0, Ljct;->x:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljct;->f()V

    :cond_3
    iget-object v0, p0, Ljct;->c:Ljdc;

    iget-boolean v1, p0, Ljct;->x:Z

    invoke-virtual {v0, v1}, Ljdc;->a(Z)V

    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 51004
    iget-object v0, v0, Ljdc;->c:Ljava/util/ArrayList;

    .line 0
    iput-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Ljct;->d:Lcom/loc/ce;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljct;->h()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/loc/ce;->a(ZZ)V

    invoke-direct {p0}, Ljct;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljct;->A:Ljava/lang/String;

    iget-object v0, p0, Ljct;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljct;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Ljct;->B:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iput-boolean v3, p0, Ljct;->C:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "initFirstLocateParam"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v0, p0, Ljct;->c:Ljdc;

    .line 51005
    iget-object v0, v0, Ljdc;->c:Ljava/util/ArrayList;

    .line 0
    iput-object v0, p0, Ljct;->k:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iget-object v1, p0, Ljct;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljct;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
