.class public Lcom/alipay/mobile/common/logging/ContextInfo;
.super Ljava/lang/Object;
.source "ContextInfo.java"


# static fields
.field private static final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/os/Bundle;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field private s:Landroid/content/Context;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    sput-object v0, Lcom/alipay/mobile/common/logging/ContextInfo;->r:Ljava/util/Map;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    const-string/jumbo v2, "Android-container"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/alipay/mobile/common/logging/ContextInfo;->r:Ljava/util/Map;

    const-string/jumbo v1, "com.eg.android.AlipayGphoneRC"

    const-string/jumbo v2, "Android-container-RC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->a:Landroid/os/Bundle;

    .line 59
    const-string/jumbo v3, "-"

    iput-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->p:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->q:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    .line 1616
    :try_start_0
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v3

    const-string/jumbo v4, "productID"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    .line 1618
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_1

    .line 1621
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1628
    :goto_0
    if-eqz v3, :cond_10

    :try_start_2
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_10

    .line 1629
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "appkey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1630
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "workspaceId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1631
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1632
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-static {v3}, Limd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1633
    if-eqz v3, :cond_f

    move v0, v1

    move-object v4, v5

    .line 1640
    :goto_1
    if-eqz v4, :cond_1

    .line 1641
    iput-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    .line 1642
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 1643
    const-string/jumbo v1, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_b

    .line 1644
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    .line 1652
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1653
    sget-object v0, Lcom/alipay/mobile/common/logging/ContextInfo;->r:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    .line 1656
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v0, :cond_3

    .line 1659
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 1663
    :goto_3
    if-eqz v0, :cond_3

    .line 1664
    :try_start_4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    .line 2546
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v3, "channelId"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Ljava/lang/String;

    .line 2547
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    const-string/jumbo v3, "releaseType"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    .line 2548
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "releaseCode"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    .line 2549
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "packageId"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    .line 2550
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()V

    .line 2552
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v1, :cond_a

    .line 2557
    :cond_4
    :try_start_5
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v4, "channel.config"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2558
    :try_start_6
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2559
    :try_start_7
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 2560
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 2562
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 2563
    const-string/jumbo v4, "channel_id"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Ljava/lang/String;

    .line 2564
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2565
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v4

    const-string/jumbo v5, "channelId"

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    :cond_5
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 2570
    const-string/jumbo v4, "release_type"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    .line 2571
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2572
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v4

    const-string/jumbo v5, "releaseType"

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    :cond_6
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 2577
    const-string/jumbo v4, "release_version"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    .line 2578
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2579
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "releaseCode"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    :cond_7
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 2584
    const-string/jumbo v4, "package_id"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    .line 2585
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2586
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "packageId"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lilz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2596
    :cond_9
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 2603
    :goto_4
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    .line 73
    :cond_a
    :goto_5
    :try_start_a
    new-instance v0, Likz;

    invoke-direct {v0}, Likz;-><init>()V

    invoke-virtual {v0, p1}, Likz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->h:Ljava/lang/String;

    .line 2678
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v0

    const-string/jumbo v1, "userID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2679
    const-string/jumbo v1, "userID"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    .line 2684
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v0

    const-string/jumbo v1, "utdid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2685
    const-string/jumbo v1, "utdid"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->i:Ljava/lang/String;

    .line 2690
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v0

    const-string/jumbo v1, "language"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->j:Ljava/lang/String;

    .line 2694
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "hotpatchVersion"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->k:Ljava/lang/String;

    .line 2698
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bundleVersion"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->n:Ljava/lang/String;

    .line 2702
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "birdNestVersion"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->o:Ljava/lang/String;

    .line 3674
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v0

    const-string/jumbo v1, "userSessionId"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->p:Ljava/lang/String;

    .line 4670
    invoke-static {}, Lilz;->a()Lilz;

    move-result-object v0

    const-string/jumbo v1, "logHost"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lilz;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->q:Ljava/lang/String;

    .line 88
    :goto_6
    return-void

    :catch_0
    move-exception v3

    move-object v3, v2

    goto/16 :goto_0

    .line 1646
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 85
    :catch_1
    move-exception v0

    .line 86
    const-string/jumbo v1, "ContextInfo"

    const-string/jumbo v2, "ContextInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3

    .line 2591
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 2592
    :goto_7
    :try_start_b
    const-string/jumbo v3, "ContextInfo"

    const-string/jumbo v4, "read channel.config fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2594
    if-eqz v1, :cond_c

    .line 2596
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 2601
    :cond_c
    :goto_8
    if-eqz v2, :cond_a

    .line 2603
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_5

    .line 2606
    :catch_4
    move-exception v0

    goto/16 :goto_5

    .line 2594
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_9
    if-eqz v1, :cond_d

    .line 2596
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 2601
    :cond_d
    :goto_a
    if-eqz v3, :cond_e

    .line 2603
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 2606
    :cond_e
    :goto_b
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    :catch_5
    move-exception v0

    goto/16 :goto_4

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_b

    .line 2594
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_9

    .line 2591
    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :cond_f
    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1

    :cond_10
    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 499
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    if-nez p2, :cond_1

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".monitor.action.UPDATE_LOG_CONTEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 521
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 522
    const-string/jumbo v0, "ContextInfo"

    const-string/jumbo v1, "notifyOtherProcessToUpdateLogContext: start service occured error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 527
    :cond_0
    :goto_2
    return-void

    .line 507
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".monitor.action.UPDATE_LOG_CONTEXT_BATCH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :try_start_2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    const-string/jumbo v2, "ContextInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 524
    :catch_1
    move-exception v0

    .line 525
    const-string/jumbo v1, "ContextInfo"

    const-string/jumbo v2, "notifyOtherProcessToUpdateLogContext"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 706
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4724
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const-string/jumbo v0, "userID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "clientID"

    .line 710
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "utdid"

    .line 711
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4719
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    const-string/jumbo v1, "SharedInfoForMultiProc"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4721
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4722
    :catch_0
    move-exception v0

    .line 4723
    const-string/jumbo v1, "ContextInfo"

    const-string/jumbo v2, "setSharedInfoForMultiProc"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 117
    const-string/jumbo v0, "userID"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->s:Landroid/content/Context;

    const-string/jumbo v1, "SharedInfoForMultiProc"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 734
    :goto_0
    return-object p2

    .line 732
    :catch_0
    move-exception v0

    .line 733
    const-string/jumbo v1, "ContextInfo"

    const-string/jumbo v2, "getSharedInfoFromMultiProc"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 461
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    const-string/jumbo v0, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0}, Lijz;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    const-string/jumbo v0, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0}, Lijz;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    const-string/jumbo v0, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/logging/ContextInfo;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_3
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const-string/jumbo v0, "ContextInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateLogContext, error: unknown process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lika;->a()Likh;

    move-result-object v2

    invoke-interface {v2}, Likh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->t:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->t:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->m:Ljava/lang/String;

    .line 540
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 535
    if-gez v0, :cond_1

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->m:Ljava/lang/String;

    goto :goto_0

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->l:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/ContextInfo;->m:Ljava/lang/String;

    goto :goto_0
.end method
