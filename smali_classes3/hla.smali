.class public final Lhla;
.super Lhld;
.source "BaiduMap.java"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0}, Lhld;-><init>()V

    .line 22
    iput-object p1, p0, Lhla;->a:Landroid/app/Activity;

    .line 23
    return-void
.end method

.method private static a(DD)[D
    .locals 18
    .param p0, "ggLat"    # D
    .param p2, "ggLon"    # D

    .prologue
    .line 66
    move-wide/from16 v6, p2

    .local v6, "x":D
    move-wide/from16 v8, p0

    .line 67
    .local v8, "y":D
    mul-double v12, v6, v6

    mul-double v14, v8, v8

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide v14, 0x3ef4f8b588e368f1L    # 2.0E-5

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double v10, v12, v14

    .line 68
    .local v10, "z":D
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    const-wide v14, 0x3ec92a737110e454L    # 3.0E-6

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double v4, v12, v14

    .line 69
    .local v4, "theta":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    const-wide v14, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double v2, v12, v14

    .line 70
    .local v2, "bd_lon":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    const-wide v14, 0x3f789374bc6a7efaL    # 0.006

    add-double v0, v12, v14

    .line 71
    .local v0, "bd_lat":D
    const/4 v12, 0x2

    new-array v12, v12, [D

    const/4 v13, 0x0

    aput-wide v0, v12, v13

    const/4 v13, 0x1

    aput-wide v2, v12, v13

    return-object v12
.end method


# virtual methods
.method public final a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 27
    iget-object v3, p0, Lhla;->a:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "baidumap://map"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 30
    iget-object v3, p0, Lhla;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 31
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 32
    const/16 v3, 0x40

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 33
    .local v2, "rs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 34
    const/4 v3, 0x1

    .line 38
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "rs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final a(DDDDLjava/lang/String;)Z
    .locals 7
    .param p1, "startLatitude"    # D
    .param p3, "startLongitude"    # D
    .param p5, "endLatitude"    # D
    .param p7, "endLongitude"    # D
    .param p9, "endName"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v3, p0, Lhla;->a:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 49
    invoke-static {p1, p2, p3, p4}, Lhla;->a(DD)[D

    move-result-object v2

    .line 50
    .local v2, "startFix":[D
    invoke-static {p5, p6, p7, p8}, Lhla;->a(DD)[D

    move-result-object v0

    .line 52
    .local v0, "endFix":[D
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "baidumap://map/direction?src=dingtalk&origin="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&destination="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&mode=driving"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    iget-object v3, p0, Lhla;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lhrf;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 62
    .end local v0    # "endFix":[D
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "startFix":[D
    :goto_0
    return v3

    .line 59
    .restart local v0    # "endFix":[D
    .restart local v2    # "startFix":[D
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0

    .line 62
    .end local v0    # "endFix":[D
    .end local v2    # "startFix":[D
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "http://wuxian.baidu.com/map/map_download.html"

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lhla;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lhla;->a:Landroid/app/Activity;

    sget v1, Lhdn$k;->mapapp_baidu:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
