.class public final Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;
.super Ljava/lang/Object;
.source "WifiUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    return-void
.end method

.method private static a(Landroid/net/wifi/WifiManager;Ljava/lang/String;Z)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "disableOthers"    # Z

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 319
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 320
    .local v3, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_0

    .line 321
    const/4 v4, 0x0

    .line 333
    .end local v3    # "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_0
    return-object v4

    .line 323
    .restart local v3    # "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 324
    .local v2, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_1

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 330
    .end local v2    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WifiUtil"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "findConfiguration exp = "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v4, v0

    .line 333
    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    move-object v0, p0

    .line 112
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    .line 115
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiUtil"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "goto wifi setting exp = "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;Lbsw$b;Ljava/lang/String;)V
    .locals 3
    .param p0, "errorModel"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;
    .param p1, "dataSource"    # Lbsw$b;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 529
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "sdevice_fs_isolate_check_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 531
    invoke-interface {p1}, Lbsw$b;->c()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 532
    invoke-interface {p1}, Lbsw$b;->e()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 533
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    const-string/jumbo v0, "WifiUtil"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;

    invoke-direct {v1, p2}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->d:Ljava/lang/String;

    .line 3595
    iput-object v2, v1, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$2;->a:Ljava/lang/String;

    .line 534
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 600
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 68
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 70
    :try_start_0
    sget-object v5, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "location_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    .local v1, "locationMode":I
    if-eqz v1, :cond_1

    .line 78
    .end local v1    # "locationMode":I
    :cond_0
    :goto_0
    return v3

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WifiUtil"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "isLocationServiceEnabled exp = "

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 73
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "locationMode":I
    :cond_1
    move v3, v4

    .line 75
    goto :goto_0

    .line 77
    .end local v1    # "locationMode":I
    :cond_2
    sget-object v5, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "location_providers_allowed"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "locationProviders":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 192
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x1

    .line 196
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "ssid1"    # Ljava/lang/String;
    .param p1, "ssid2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "psk"    # Ljava/lang/String;
    .param p2, "isConnectImmediately"    # Z

    .prologue
    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 274
    const/4 v5, 0x0

    .line 308
    :cond_0
    :goto_0
    return v5

    .line 276
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 277
    const-string/jumbo p1, ""

    .line 280
    :cond_2
    :try_start_0
    sget-object v8, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 3313
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    invoke-static {v7, p0, v8}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Landroid/net/wifi/WifiManager;Ljava/lang/String;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 282
    .local v4, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v8, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;->WIFICIPHER_WPA_PSK:Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;

    .line 3377
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3378
    iget-object v9, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    .line 3379
    iget-object v9, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    .line 3380
    iget-object v9, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    .line 3381
    iget-object v9, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    .line 3382
    iget-object v9, v6, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    .line 3383
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3384
    sget-object v9, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;

    if-ne v8, v9, :cond_4

    .line 3385
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "\"\""

    aput-object v10, v8, v9

    .line 3386
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3387
    const/4 v8, 0x0

    iput v8, v6, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 284
    .local v6, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    if-eqz v4, :cond_c

    .line 285
    iget v8, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v8, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 286
    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 287
    .local v3, "networkId":I
    const-string/jumbo v8, "WifiUtil"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "updateNetwork networkId = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_2
    const/4 v5, 0x1

    .line 293
    .local v5, "valid":Z
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    .line 294
    const/4 v5, 0x0

    .line 295
    if-eqz v4, :cond_3

    .line 296
    iget v3, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 299
    :cond_3
    const/4 v8, -0x1

    if-eq v3, v8, :cond_0

    if-eqz p2, :cond_0

    .line 300
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v0

    .line 301
    .local v0, "disconnectResult":Z
    const-string/jumbo v8, "WifiUtil"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "disconnect result = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v2

    .line 303
    .local v2, "enableResult":Z
    const-string/jumbo v8, "WifiUtil"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "enableNetwork networkId = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, ", result = "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 306
    .end local v0    # "disconnectResult":Z
    .end local v2    # "enableResult":Z
    .end local v3    # "networkId":I
    .end local v4    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "valid":Z
    .end local v6    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "WifiUtil"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "addWifiConfig exp = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3388
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_4
    :try_start_1
    sget-object v9, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;->WIFICIPHER_WEP:Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;

    if-ne v8, v9, :cond_8

    .line 3389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 3440
    const/16 v9, 0xa

    if-eq v8, v9, :cond_6

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_6

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_6

    .line 3441
    const/4 v8, 0x0

    .line 3390
    :goto_3
    if-eqz v8, :cond_7

    .line 3391
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 3396
    :cond_5
    :goto_4
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3397
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3398
    const/4 v8, 0x0

    iput v8, v6, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_1

    .line 3444
    :cond_6
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->e(Ljava/lang/String;)Z

    move-result v8

    goto :goto_3

    .line 3393
    :cond_7
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_4

    .line 3399
    :cond_8
    sget-object v9, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;->WIFICIPHER_WPA_PSK:Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;

    if-ne v8, v9, :cond_9

    .line 3400
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3401
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3402
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3403
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3404
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3405
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3406
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3407
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3408
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3409
    const/4 v8, 0x2

    iput v8, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_1

    .line 3410
    :cond_9
    sget-object v9, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;->WIFI_CIPHER_WPA_EAP:Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;

    if-ne v8, v9, :cond_a

    .line 3411
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3412
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3413
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3414
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3415
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3416
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3417
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3418
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3419
    const/4 v8, 0x2

    iput v8, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_1

    .line 3420
    :cond_a
    sget-object v9, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;->WIFI_CIPHER_IEEE8021X:Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$WifiCipherType;

    if-ne v8, v9, :cond_b

    .line 3421
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3422
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3423
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3424
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3425
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3426
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3427
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3428
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 3429
    const/4 v8, 0x2

    iput v8, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_1

    .line 3431
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 289
    .restart local v6    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 290
    .restart local v3    # "networkId":I
    const-string/jumbo v8, "WifiUtil"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "addNetwork networkId = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 88
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 241
    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1313
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-static {v1, p0, v2}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Landroid/net/wifi/WifiManager;Ljava/lang/String;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 243
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 244
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 245
    const/4 v2, 0x1

    .line 247
    :cond_0
    return v2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "psk"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    sget-object v4, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 127
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    :goto_0
    return v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WifiUtil"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isWifiEnabled exp = "

    aput-object v6, v5, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 133
    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ipStr"    # Ljava/lang/String;

    .prologue
    .line 488
    const-string/jumbo v0, "^([1-9]|([1-9][0-9])|(1[0-9][0-9])|(2[0-4][0-9])|(25[0-5]))(\\.([0-9]|([1-9][0-9])|(1[0-9][0-9])|(2[0-4][0-9])|(25[0-5]))){3}$"

    .line 489
    .local v0, "ipRegEx":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const/4 v1, 0x1

    .line 492
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "psk"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d()Landroid/net/wifi/WifiInfo;
    .locals 7

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :try_start_0
    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 140
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiUtil"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getWifiInfo exp = "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 14
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 498
    const/4 v4, 0x0

    .line 500
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ping -c 3 -w 5 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 502
    .local v3, "p":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 503
    .local v2, "input":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 504
    .local v1, "in":Ljava/io/BufferedReader;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    .line 506
    .local v6, "stringBuffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 519
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "p":Ljava/lang/Process;
    .end local v6    # "stringBuffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v9

    const-string/jumbo v4, "failed~ IOException"

    .line 523
    const-string/jumbo v9, "WifiUtil"

    new-array v10, v13, [Ljava/lang/String;

    const-string/jumbo v11, "checkApart result = "

    aput-object v11, v10, v8

    aput-object v4, v10, v7

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v7, v8

    .line 525
    :goto_2
    return v7

    .line 509
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "p":Ljava/lang/Process;
    .restart local v6    # "stringBuffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_0
    :try_start_1
    const-string/jumbo v9, "WifiUtil"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "ping result content : "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v5

    .line 512
    .local v5, "status":I
    if-nez v5, :cond_1

    .line 513
    const-string/jumbo v4, "successful~"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    const-string/jumbo v9, "WifiUtil"

    new-array v10, v13, [Ljava/lang/String;

    const-string/jumbo v11, "checkApart result = "

    aput-object v11, v10, v8

    aput-object v4, v10, v7

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 515
    :cond_1
    :try_start_2
    const-string/jumbo v4, "failed~ cannot reach the IP address"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    const-string/jumbo v9, "WifiUtil"

    new-array v10, v13, [Ljava/lang/String;

    const-string/jumbo v11, "checkApart result = "

    aput-object v11, v10, v8

    aput-object v4, v10, v7

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 521
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "p":Ljava/lang/Process;
    .end local v5    # "status":I
    .end local v6    # "stringBuffer":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_1
    move-exception v9

    const-string/jumbo v4, "failed~ Exception"

    .line 523
    const-string/jumbo v9, "WifiUtil"

    new-array v10, v13, [Ljava/lang/String;

    const-string/jumbo v11, "checkApart result = "

    aput-object v11, v10, v8

    aput-object v4, v10, v7

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v9

    const-string/jumbo v10, "WifiUtil"

    new-array v11, v13, [Ljava/lang/String;

    const-string/jumbo v12, "checkApart result = "

    aput-object v12, v11, v8

    aput-object v4, v11, v7

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v9
.end method

.method public static e()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 149
    :try_start_0
    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 150
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 154
    :goto_0
    return v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiUtil"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "openWifi exp = "

    aput-object v5, v4, v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 449
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 450
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x46

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x66

    if-le v0, v2, :cond_3

    .line 451
    :cond_2
    const/4 v2, 0x0

    .line 455
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 448
    .restart local v0    # "c":C
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 455
    .end local v0    # "c":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static f()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 178
    :try_start_0
    sget-object v5, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 179
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 180
    .local v2, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    .end local v2    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WifiUtil"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "isWifiConnected exp = "

    aput-object v7, v6, v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 186
    goto :goto_0
.end method

.method public static g()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 201
    :try_start_0
    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 202
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    .line 203
    .local v1, "startScanResult":Z
    const-string/jumbo v3, "WifiUtil"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "startScanResult = "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "startScanResult":Z
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiUtil"

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v5, "startScan exp = "

    aput-object v5, v4, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static h()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 212
    .local v1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 213
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiUtil"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getScanResults exp = "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->h()Ljava/util/List;

    move-result-object v0

    .line 222
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$1;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    :cond_0
    return-object v0
.end method

.method public static j()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 252
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_0

    move v1, v2

    .line 2263
    :goto_0
    return v1

    .line 255
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 2259
    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2313
    invoke-static {v1, v3, v2}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a(Landroid/net/wifi/WifiManager;Ljava/lang/String;Z)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 2261
    if-eqz v3, :cond_1

    .line 2262
    iget v2, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 2263
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 255
    goto :goto_0
.end method

.method static synthetic k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static l()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 463
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 464
    .local v2, "niList":Ljava/util/Enumeration;
    if-eqz v2, :cond_2

    .line 466
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 467
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 468
    .local v1, "intf":Ljava/net/NetworkInterface;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 471
    const-string/jumbo v5, "tun0"

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "ppp0"

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    .end local v1    # "intf":Ljava/net/NetworkInterface;
    :cond_1
    :goto_0
    return v3

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "WifiUtil"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "isVpnUsed = "

    aput-object v7, v6, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    move v3, v4

    .line 479
    goto :goto_0
.end method
