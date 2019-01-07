.class public final Ljyg;
.super Ljvd$a;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljvd$a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljyg;->a:I

    const/16 v0, 0xe10

    iput v0, p0, Ljyg;->b:I

    iput-object p1, p0, Ljyg;->c:Landroid/content/Context;

    iput p2, p0, Ljyg;->d:I

    return-void
.end method

.method private static a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move-object p1, p0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/y;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljyh;

    invoke-direct {v1}, Ljyh;-><init>()V

    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljuz;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    const/16 v0, 0x1e

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_0

    new-instance v6, Lcom/xiaomi/xmpush/thrift/y;

    invoke-direct {v6}, Lcom/xiaomi/xmpush/thrift/y;-><init>()V

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    :goto_1
    invoke-virtual {v6, v3}, Lcom/xiaomi/xmpush/thrift/y;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/y;

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v3}, Lcom/xiaomi/xmpush/thrift/y;->a(I)Lcom/xiaomi/xmpush/thrift/y;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/xiaomi/xmpush/thrift/y;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/y;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    .line 3000
    new-instance v4, Lcom/xiaomi/xmpush/thrift/p;

    invoke-direct {v4}, Lcom/xiaomi/xmpush/thrift/p;-><init>()V

    invoke-static {}, Ljun;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v4

    .line 0
    :goto_0
    invoke-static {v0}, Lkev;->a(Lorg/apache/thrift/a;)[B

    move-result-object v4

    new-instance v5, Lcom/xiaomi/xmpush/thrift/ai;

    const-string/jumbo v6, "-1"

    invoke-direct {v5, v6, v2}, Lcom/xiaomi/xmpush/thrift/ai;-><init>(Ljava/lang/String;Z)V

    sget-object v6, Lcom/xiaomi/xmpush/thrift/r;->C:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v6, v6, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual {v5, v4}, Lcom/xiaomi/xmpush/thrift/ai;->a([B)Lcom/xiaomi/xmpush/thrift/ai;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4}, Lcom/xiaomi/xmpush/thrift/ai;->a(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v6, "initial_wifi_upload"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6000
    const-string/jumbo v4, "com.xiaomi.xmsf"

    const/16 v6, 0x6a

    invoke-static {p0, v4, v6}, Lkcg;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    const-string/jumbo v6, "com.xiaomi.metok"

    const/16 v7, 0x14

    invoke-static {p0, v6, v7}, Lkcg;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    const-string/jumbo v7, "com.xiaomi.metoknlp"

    const/4 v8, 0x6

    invoke-static {p0, v7, v8}, Lkcg;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v4, :cond_8

    if-nez v6, :cond_0

    if-eqz v7, :cond_8

    :cond_0
    move v4, v1

    .line 0
    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/ai;->i()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v7, "xmsf_geo_is_work"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "reportLocInfo locInfo timestamp:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/p;->c()Lcom/xiaomi/xmpush/thrift/l;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/p;->c()Lcom/xiaomi/xmpush/thrift/l;

    move-result-object v4

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/xiaomi/xmpush/thrift/p;->b:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    if-eqz v6, :cond_b

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/p;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    sget-object v4, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v0, v5, v4, v1, v3}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/u;)V

    .line 7000
    const-string/jumbo v0, "mipush_extra"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_upload_lbs_data_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    return-void

    .line 3000
    :cond_2
    invoke-static {p0}, Ljyg;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/xmpush/thrift/p;->a(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/p;

    invoke-static {p0}, Ljyg;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/xmpush/thrift/p;->b(Ljava/util/List;)Lcom/xiaomi/xmpush/thrift/p;

    .line 5000
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_5
    const-string/jumbo v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    move v5, v1

    :goto_6
    if-nez v0, :cond_3

    if-eqz v5, :cond_6

    :cond_3
    move v0, v1

    .line 4000
    :goto_7
    if-eqz v0, :cond_7

    invoke-static {p0}, Ljyg;->c(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v6, Lcom/xiaomi/xmpush/thrift/o;

    invoke-direct {v6}, Lcom/xiaomi/xmpush/thrift/o;-><init>()V

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/xiaomi/xmpush/thrift/o;->b(D)Lcom/xiaomi/xmpush/thrift/o;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/xiaomi/xmpush/thrift/o;->a(D)Lcom/xiaomi/xmpush/thrift/o;

    new-instance v0, Lcom/xiaomi/xmpush/thrift/l;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/l;-><init>()V

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v0, v8, v9}, Lcom/xiaomi/xmpush/thrift/l;->a(D)Lcom/xiaomi/xmpush/thrift/l;

    invoke-virtual {v0, v6}, Lcom/xiaomi/xmpush/thrift/l;->a(Lcom/xiaomi/xmpush/thrift/o;)Lcom/xiaomi/xmpush/thrift/l;

    invoke-virtual {v5}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xiaomi/xmpush/thrift/l;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/l;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/xiaomi/xmpush/thrift/l;->a(J)Lcom/xiaomi/xmpush/thrift/l;

    .line 3000
    :goto_8
    invoke-virtual {v4, v0}, Lcom/xiaomi/xmpush/thrift/p;->a(Lcom/xiaomi/xmpush/thrift/l;)Lcom/xiaomi/xmpush/thrift/p;

    move-object v0, v4

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 5000
    goto :goto_5

    :cond_5
    move v5, v2

    goto :goto_6

    :cond_6
    move v0, v2

    goto :goto_7

    :cond_7
    move-object v0, v3

    .line 4000
    goto :goto_8

    :cond_8
    move v4, v2

    .line 6000
    goto/16 :goto_1

    .line 0
    :cond_9
    const-string/jumbo v4, "null"

    goto/16 :goto_2

    :cond_a
    move-object v4, v3

    goto/16 :goto_3

    :cond_b
    move-object v0, v3

    goto/16 :goto_4
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/xmpush/thrift/c;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    if-lez v5, :cond_1

    :cond_0
    new-instance v5, Lcom/xiaomi/xmpush/thrift/c;

    invoke-direct {v5}, Lcom/xiaomi/xmpush/thrift/c;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/xmpush/thrift/c;->a(I)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    invoke-virtual {v5, v0}, Lcom/xiaomi/xmpush/thrift/c;->b(I)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Landroid/location/Location;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    :goto_0
    :try_start_1
    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    :try_start_2
    const-string/jumbo v4, "passive"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_2
    invoke-static {v3, v2}, Ljyg;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Ljyg;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    move-object v3, v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    iget-object v2, p0, Ljyg;->c:Landroid/content/Context;

    invoke-static {v2}, Lkcg;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Ljyg;->c:Landroid/content/Context;

    invoke-static {v2}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/g;->ac:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lkaq;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljyg;->c:Landroid/content/Context;

    invoke-static {v2}, Ljvn;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, p0, Ljyg;->c:Landroid/content/Context;

    invoke-static {v2}, Ljvn;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 0
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljyg;->c:Landroid/content/Context;

    const-string/jumbo v2, "11"

    iget v3, p0, Ljyg;->d:I

    int-to-long v4, v3

    invoke-static {v0, v2, v4, v5}, Ljvc;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljyg;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Ljyg;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1000
    :cond_3
    iget-object v2, p0, Ljyg;->c:Landroid/content/Context;

    invoke-static {v2}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/xmpush/thrift/g;->P:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v3}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v3

    const/16 v4, 0xe10

    invoke-virtual {v2, v3, v4}, Lkaq;->a(II)I

    move-result v2

    const/16 v3, 0x3c

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Ljyg;->c:Landroid/content/Context;

    invoke-static {v3}, Ljvn;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    int-to-long v2, v2

    .line 2000
    iget-object v4, p0, Ljyg;->c:Landroid/content/Context;

    const-string/jumbo v5, "mipush_extra"

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "last_upload_lbs_data_timestamp"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-float v4, v4

    long-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    cmpl-float v2, v4, v2

    if-lez v2, :cond_5

    move v2, v0

    .line 1000
    :goto_2
    if-nez v2, :cond_2

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    .line 2000
    goto :goto_2
.end method
