.class public Lbma;
.super Ljava/lang/Object;
.source "FloatConnectWifiManager.java"


# static fields
.field private static volatile b:Lbma;


# instance fields
.field public a:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lbma;->c:Z

    .line 40
    iput-boolean v0, p0, Lbma;->a:Z

    .line 57
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbma;->d:Landroid/content/Context;

    .line 61
    new-instance v0, Lbma$1;

    invoke-direct {v0, p0}, Lbma$1;-><init>(Lbma;)V

    iput-object v0, p0, Lbma;->f:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lbma$2;

    invoke-direct {v0, p0}, Lbma$2;-><init>(Lbma;)V

    iput-object v0, p0, Lbma;->g:Ljava/lang/Runnable;

    .line 43
    return-void
.end method

.method public static a()Lbma;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lbma;->b:Lbma;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lbma;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lbma;->b:Lbma;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lbma;

    invoke-direct {v0}, Lbma;-><init>()V

    sput-object v0, Lbma;->b:Lbma;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lbma;->b:Lbma;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbma;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lbma;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 29
    .line 3124
    iget-boolean v0, p0, Lbma;->c:Z

    if-nez v0, :cond_0

    .line 3125
    const-string/jumbo v0, "FloatConnectWifiManager"

    const-string/jumbo v1, "tryToFloatConnectWifi stopped when showFloatView, return"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    :goto_0
    return-void

    .line 3128
    :cond_0
    iget-boolean v0, p0, Lbma;->a:Z

    if-eqz v0, :cond_1

    .line 3129
    const-string/jumbo v0, "FloatConnectWifiManager"

    const-string/jumbo v1, "quickConnectWiFi is showing when showFloatView, return"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3216
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbma;->d:Landroid/content/Context;

    const-class v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3217
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3218
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "floatConnectWifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3219
    const-string/jumbo v1, "corpId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3220
    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3221
    const-string/jumbo v1, "psk"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3222
    iget-object v1, p0, Lbma;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3230
    const-string/jumbo v0, "showFloatViewMaxCount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    .line 3231
    const-string/jumbo v1, "showFloatViewMaxCount"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lbma;)Z
    .locals 1
    .param p0, "x0"    # Lbma;

    .prologue
    .line 29
    iget-boolean v0, p0, Lbma;->c:Z

    return v0
.end method

.method static synthetic b(Lbma;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lbma;

    .prologue
    .line 29
    iget-object v0, p0, Lbma;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lbma;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lbma;

    .prologue
    .line 29
    iget-object v0, p0, Lbma;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 235
    const-string/jumbo v0, "hasShowedFloatGuideView"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 239
    const-string/jumbo v0, "hasShowedFloatGuideView"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 240
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 149
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    const-string/jumbo v9, "alpha_float_connect_wifi_enabled"

    invoke-virtual {v8, v9, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 150
    .local v2, "floatConnectWifiEnabled":Z
    if-nez v2, :cond_0

    .line 151
    const-string/jumbo v6, "FloatConnectWifiManager"

    const-string/jumbo v7, "floatConnectWifiEnabled is false, return"

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-boolean v8, p0, Lbma;->c:Z

    if-eqz v8, :cond_1

    .line 155
    const-string/jumbo v6, "FloatConnectWifiManager"

    const-string/jumbo v7, "already started, return"

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-boolean v8, p0, Lbma;->a:Z

    if-eqz v8, :cond_2

    .line 159
    const-string/jumbo v6, "FloatConnectWifiManager"

    const-string/jumbo v7, "quickConnectWiFi is showing, return"

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->c()Z

    move-result v5

    .line 163
    .local v5, "wifiEnabled":Z
    if-nez v5, :cond_3

    .line 164
    const-string/jumbo v6, "FloatConnectWifiManager"

    const-string/jumbo v7, "wifi disabled, return"

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1226
    :cond_3
    const-string/jumbo v8, "showFloatViewMaxCount"

    invoke-static {v8, v6}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_4

    move v0, v6

    .line 168
    .local v0, "canShowFloatView":Z
    :goto_1
    if-nez v0, :cond_5

    .line 169
    const-string/jumbo v8, "FloatConnectWifiManager"

    new-array v9, v10, [Ljava/lang/Object;

    const-string/jumbo v10, "float view has showed more than "

    aput-object v10, v9, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "canShowFloatView":Z
    :cond_4
    move v0, v7

    .line 1226
    goto :goto_1

    .line 172
    .restart local v0    # "canShowFloatView":Z
    :cond_5
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v8

    invoke-virtual {v8}, Lbnh;->c()Ljava/util/Map;

    move-result-object v1

    .line 173
    .local v1, "corpSsidsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 174
    :cond_6
    const-string/jumbo v6, "FloatConnectWifiManager"

    const-string/jumbo v7, "corpSsidsMap is null, return"

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->a()Z

    move-result v4

    .line 178
    .local v4, "locationServiceEnabled":Z
    if-nez v4, :cond_8

    .line 179
    const-string/jumbo v6, "FloatConnectWifiManager"

    const-string/jumbo v7, "locationServiceEnabled is false, return"

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_8
    iget-object v8, p0, Lbma;->d:Landroid/content/Context;

    new-array v9, v10, [Ljava/lang/String;

    const-string/jumbo v10, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v10, v9, v7

    const-string/jumbo v7, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v7, v9, v6

    invoke-static {v8, v9}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    .line 185
    .local v3, "hasLocationPermission":Z
    if-nez v3, :cond_9

    .line 186
    const-string/jumbo v6, "FloatConnectWifiManager"

    const-string/jumbo v7, "location permission disabled, goto request for permission"

    invoke-static {v6, v7}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lbma;->d:Landroid/content/Context;

    const-class v8, Lcom/alibaba/android/dingtalk/guard/ui/activity/FloatConnectWifiActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2210
    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2211
    const-string/jumbo v7, "action"

    const-string/jumbo v8, "requestLocationPermission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2212
    iget-object v7, p0, Lbma;->d:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    :cond_9
    iput-boolean v6, p0, Lbma;->c:Z

    .line 191
    iput-object v1, p0, Lbma;->e:Ljava/util/Map;

    .line 192
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->g()V

    .line 193
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v6

    iget-object v7, p0, Lbma;->g:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcaa;->post(Ljava/lang/Runnable;)Z

    .line 194
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v6

    iget-object v7, p0, Lbma;->f:Ljava/lang/Runnable;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 201
    const-string/jumbo v0, "FloatConnectWifiManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stopTryToFloatConnectWifi"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-boolean v3, p0, Lbma;->c:Z

    .line 203
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Lbma;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-object v1, p0, Lbma;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method
