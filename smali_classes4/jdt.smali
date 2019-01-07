.class public final Ljdt;
.super Ljava/lang/Object;
.source "ReportUtil.java"


# static fields
.field static g:Lcom/amap/api/location/AMapLocation;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljcq;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lorg/json/JSONArray;


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:J

.field public d:[Ljava/lang/String;

.field public e:I

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljdt;->h:Ljava/util/List;

    sput-object v1, Ljdt;->i:Lorg/json/JSONArray;

    sput-object v1, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ljdt;->a:Landroid/util/SparseArray;

    iput v3, p0, Ljdt;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljdt;->c:J

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "cl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "ha"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "bs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ds"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljdt;->d:[Ljava/lang/String;

    iput v3, p0, Ljdt;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljdt;->f:J

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljdn;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljdt;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Ljdt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ljdt;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p0}, Ljcr;->a(Ljava/util/List;Landroid/content/Context;)V

    sget-object v0, Ljdt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    invoke-static {p0}, Ljdt;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "destroy"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IIJJ)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "O012"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {}, Ljdn;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "param_int_first"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "param_int_second"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "param_long_first"

    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "param_long_second"

    invoke-virtual {v1, v2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p0, v0, v1}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "applyStatisticsEx"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "reportServiceAliveTime"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JZ)V
    .locals 7

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljdn;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v4

    const-string/jumbo v2, "domestic"

    if-nez p3, :cond_2

    const-string/jumbo v2, "abroad"

    :cond_2
    const-string/jumbo v1, "O015"

    const/4 v3, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "reportGPSLocUseTime"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v1, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    if-eq v1, v0, :cond_0

    const-string/jumbo v3, "domestic"

    invoke-static {p1}, Ljdt;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v3, "abroad"

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v2, "cache"

    :goto_1
    const-string/jumbo v1, "O016"

    const v5, 0x7fffffff

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "reportBatting"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    const-string/jumbo v2, "net"

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const-string/jumbo v2, "cache"

    move v4, v0

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "net"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "O010"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "reportDex_dexFunction"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "O009"

    invoke-static {p0, v0, p2, p1}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "reportDex_dexLoadClass"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljdn;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "param_string_first"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const v1, 0x7fffffff

    if-eq p2, v1, :cond_3

    const-string/jumbo v1, "param_int_first"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    invoke-static {p0, p1, v0}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "applyStatisticsEx"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    const v2, 0x7fffffff

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljdn;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "param_string_first"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "param_string_second"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eq p4, v2, :cond_4

    const-string/jumbo v1, "param_int_first"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    if-eq p5, v2, :cond_5

    const-string/jumbo v1, "param_int_second"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    invoke-static {p0, p1, v0}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "applyStatisticsEx"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljdn;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljcq;

    const-string/jumbo v1, "loc"

    const-string/jumbo v2, "3.7.0"

    invoke-direct {v0, p0, v1, v2, p1}, Ljcq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcq;->a(Ljava/lang/String;)V

    sget-object v1, Ljdt;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljdt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ljdt;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p0}, Ljcr;->a(Ljava/util/List;Landroid/content/Context;)V

    sget-object v0, Ljdt;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "applyStatistics"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljds;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    .line 0
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljdn;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v3, p1, Ljds;->c:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    .line 0
    invoke-static {v3}, Ljdx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "gps"

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 2000
    iget-wide v4, p1, Ljds;->a:J

    .line 3000
    iget-wide v6, p1, Ljds;->b:J

    .line 0
    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v5

    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->k()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v8, "cache"

    move v0, v1

    :goto_1
    const-string/jumbo v2, "domestic"

    invoke-static {v3}, Ljdt;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "abroad"

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v1, "O014"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    const-string/jumbo v7, "O013"

    const v11, 0x7fffffff

    move-object v6, p0

    move-object v9, v2

    move v10, v5

    invoke-static/range {v6 .. v11}, Ljdt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "reportLBSLocUseTime"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string/jumbo v8, "net"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    const/16 v5, 0x9

    const/4 v4, 0x7

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    :try_start_0
    sget-object v0, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_2

    invoke-static {p0}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    sput-object p1, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    sput-object v0, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    :cond_2
    sget-object v0, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    sget-object v0, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-eq v0, v3, :cond_4

    sget-object v0, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-eq v0, v5, :cond_4

    sget-object v0, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-eq v0, v5, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v0

    sget-object v3, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    cmp-long v3, v0, v6

    if-gtz v3, :cond_3

    const-wide/16 v0, 0x1

    :cond_3
    const-wide/32 v4, 0x1b7740

    cmp-long v3, v0, v4

    if-gtz v3, :cond_4

    sget-object v3, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-static {v3, v2}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v3

    long-to-float v0, v0

    div-float v0, v3, v0

    const v1, 0x46ea6000    # 30000.0f

    cmpl-float v1, v3, v1

    if-lez v1, :cond_4

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    sget-object v1, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    const-string/jumbo v1, "yyyyMMdd_HH:mm:ss:SS"

    invoke-static {v4, v5, v1}, Ljdx;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    const-string/jumbo v1, "yyyyMMdd_HH:mm:ss:SS"

    invoke-static {v4, v5, v1}, Ljdx;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string/jumbo v1, "bigshiftstatistics"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljdt;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_4
    sput-object v2, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    sget-object v1, Ljdt;->g:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-static {p0, v1, v0}, Ljdt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    const-string/jumbo v0, "ContextIsNull"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "OnlyMainWifi"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "OnlyOneWifiButNotMain"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "CreateApsReqException"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "ResponseResultIsNull"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "NeedLoginNetWork\t"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "MaybeIntercepted"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "DecryptResponseException"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "ParserDataException"

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "ServerRetypeError"

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "ServerLocFail"

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "LocalLocException"

    goto :goto_0

    :sswitch_c
    const-string/jumbo v0, "InitException"

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "BindAPSServiceException"

    goto :goto_0

    :sswitch_e
    const-string/jumbo v0, "AuthClientScodeFail"

    goto :goto_0

    :sswitch_f
    const-string/jumbo v0, "ErrorCgiInfo"

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "NotLocPermission"

    goto :goto_0

    :sswitch_11
    const-string/jumbo v0, "NoCgiOAndWifiInfo"

    goto :goto_0

    :sswitch_12
    const-string/jumbo v0, "NoEnoughStatellites"

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "MaybeMockNetLoc"

    goto :goto_0

    :sswitch_14
    const-string/jumbo v0, "MaybeMockGPSLoc"

    goto :goto_0

    :sswitch_15
    const-string/jumbo v0, "AirPlaneModeAndWifiOff"

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v0, "NoCgiAndWifiOff"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7e5 -> :sswitch_1
        0x7e6 -> :sswitch_2
        0x7ef -> :sswitch_3
        0x7f9 -> :sswitch_4
        0x803 -> :sswitch_5
        0x804 -> :sswitch_6
        0x805 -> :sswitch_7
        0x806 -> :sswitch_8
        0x80d -> :sswitch_9
        0x80e -> :sswitch_a
        0x821 -> :sswitch_b
        0x82b -> :sswitch_c
        0x835 -> :sswitch_d
        0x836 -> :sswitch_e
        0x83f -> :sswitch_f
        0x849 -> :sswitch_10
        0x853 -> :sswitch_11
        0x854 -> :sswitch_15
        0x855 -> :sswitch_16
        0x85d -> :sswitch_12
        0x867 -> :sswitch_13
        0x868 -> :sswitch_14
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Ljdo;->b()Ljej;

    move-result-object v0

    invoke-static {v0, p1, p0}, Ljeq;->b(Ljej;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "reportLog"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Ljdo;->b()Ljej;

    move-result-object v0

    const-string/jumbo v1, "/mobile/binary"

    invoke-static {v0, v1, p2, p0, p1}, Ljeq;->a(Ljej;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    instance-of v0, p1, Lcom/loc/j;

    if-eqz v0, :cond_0

    invoke-static {}, Ljdo;->b()Ljej;

    move-result-object v0

    check-cast p1, Lcom/loc/j;

    invoke-static {v0, p0, p1}, Ljeq;->a(Ljej;Ljava/lang/String;Lcom/loc/j;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljej;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Ljbr;->a(Landroid/content/Context;Ljej;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lcom/amap/api/location/AMapLocation;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljdo;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "http://abroad.apilocate.amap.com/mobile/binary"

    sget-object v3, Ljdo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Ljdx;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_1
    :pswitch_1
    if-eqz v0, :cond_0

    sget-object v0, Ljdt;->i:Lorg/json/JSONArray;

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Ljdt;->i:Lorg/json/JSONArray;

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "lon"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "lat"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljdx;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v1, Ljdt;->i:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Ljdt;->i:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {}, Ljdn;->p()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Ljdt;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "recordOfflineLocLog"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move v1, v0

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-object v0, Ljdt;->i:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    sget-object v0, Ljdt;->i:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljdo;->b()Ljej;

    move-result-object v0

    new-instance v1, Ljco;

    sget-object v2, Ljdt;->i:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Ljco;-><init>(Landroid/content/Context;Ljej;Ljava/lang/String;)V

    invoke-static {v1, p0}, Ljcp;->a(Ljco;Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-object v0, Ljdt;->i:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "writeOfflineLocLog"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    iget v0, p0, Ljdt;->b:I

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Ljdt;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljdt;->b:I

    if-eq v0, p2, :cond_1

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ljdt;->c:J

    sub-long v2, v0, v2

    iget-object v0, p0, Ljdt;->a:Landroid/util/SparseArray;

    iget v1, p0, Ljdt;->b:I

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v4, p0, Ljdt;->a:Landroid/util/SparseArray;

    iget v5, p0, Ljdt;->b:I

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    const-string/jumbo v0, "pref"

    iget-object v1, p0, Ljdt;->d:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Ljdt;->c:J

    iput p2, p0, Ljdt;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "setLocationType"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v6, -0x1

    const-wide/16 v8, 0x0

    :try_start_0
    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ljdt;->c:J

    sub-long v2, v0, v2

    iget v0, p0, Ljdt;->b:I

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Ljdt;->a:Landroid/util/SparseArray;

    iget v1, p0, Ljdt;->b:I

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v4, p0, Ljdt;->a:Landroid/util/SparseArray;

    iget v5, p0, Ljdt;->b:I

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    iget-wide v2, p0, Ljdt;->f:J

    sub-long v2, v0, v2

    iget v0, p0, Ljdt;->e:I

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Ljdt;->a:Landroid/util/SparseArray;

    iget v1, p0, Ljdt;->e:I

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v4, p0, Ljdt;->a:Landroid/util/SparseArray;

    iget v5, p0, Ljdt;->e:I

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Ljdt;->a:Landroid/util/SparseArray;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-lez v0, :cond_2

    const-string/jumbo v0, "pref"

    iget-object v4, p0, Ljdt;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-wide/16 v6, 0x0

    invoke-static {p1, v0, v4, v6, v7}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const-string/jumbo v0, "pref"

    iget-object v4, p0, Ljdt;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {p1, v0, v4, v2, v3}, Ljdw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportUtil"

    const-string/jumbo v2, "saveLocationTypeAndMode"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final c(Landroid/content/Context;)I
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    const-wide/16 v12, 0x0

    :try_start_0
    const-string/jumbo v4, "pref"

    iget-object v5, p0, Ljdt;->d:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const-wide/16 v6, 0x0

    invoke-static {p1, v4, v5, v6, v7}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v6, "pref"

    iget-object v7, p0, Ljdt;->d:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-wide/16 v8, 0x0

    invoke-static {p1, v6, v7, v8, v9}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v8, "pref"

    iget-object v9, p0, Ljdt;->d:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const-wide/16 v10, 0x0

    invoke-static {p1, v8, v9, v10, v11}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v10, v4, v12

    if-nez v10, :cond_0

    cmp-long v10, v6, v12

    if-nez v10, :cond_0

    cmp-long v10, v8, v12

    if-nez v10, :cond_0

    :goto_0
    return v0

    :cond_0
    sub-long/2addr v6, v4

    sub-long/2addr v8, v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)I
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v3, 0x4

    const/4 v1, 0x3

    const/4 v0, -0x1

    const/4 v2, 0x5

    const-wide/16 v12, 0x0

    :try_start_0
    const-string/jumbo v4, "pref"

    iget-object v5, p0, Ljdt;->d:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-wide/16 v6, 0x0

    invoke-static {p1, v4, v5, v6, v7}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v6, "pref"

    iget-object v7, p0, Ljdt;->d:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    const-wide/16 v8, 0x0

    invoke-static {p1, v6, v7, v8, v9}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v8, "pref"

    iget-object v9, p0, Ljdt;->d:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    const-wide/16 v10, 0x0

    invoke-static {p1, v8, v9, v10, v11}, Ljdw;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v10, v4, v12

    if-nez v10, :cond_0

    cmp-long v10, v6, v12

    if-nez v10, :cond_0

    cmp-long v10, v8, v12

    if-nez v10, :cond_0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
