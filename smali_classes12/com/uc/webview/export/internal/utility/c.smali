.class public Lcom/uc/webview/export/internal/utility/c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/utility/c$a;
    }
.end annotation


# static fields
.field private static volatile a:Landroid/net/NetworkInfo;

.field private static volatile b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    .prologue
    .line 36
    sput-object p0, Lcom/uc/webview/export/internal/utility/c;->a:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static a()Z
    .locals 4

    .prologue
    .line 89
    sget-object v0, Lcom/uc/webview/export/internal/utility/c;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    const-class v1, Lcom/uc/webview/export/internal/utility/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/utility/c;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/utility/c;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/c;->a:Landroid/net/NetworkInfo;

    new-instance v0, Lcom/uc/webview/export/internal/utility/d;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/utility/d;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/utility/c;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/uc/webview/export/internal/utility/c$a;->a:Landroid/content/Context;

    sget-object v3, Lcom/uc/webview/export/internal/utility/c;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/uc/webview/export/internal/utility/c;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/utility/c;->a:Landroid/net/NetworkInfo;

    :cond_2
    sget-object v0, Lcom/uc/webview/export/internal/utility/c;->a:Landroid/net/NetworkInfo;

    if-nez v0, :cond_4

    const-string/jumbo v0, "-1"

    .line 90
    :goto_0
    const-string/jumbo v1, "2G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "2.5G"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "2.75G"

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    :cond_3
    const/4 v0, 0x1

    .line 95
    :goto_1
    return v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "0"

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "2G"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "2.5G"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "2.75G"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "3G"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "4G"

    goto :goto_0

    .line 95
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static b()Landroid/net/NetworkInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 274
    :try_start_0
    const-string/jumbo v0, "connectivity"

    sget-object v2, Lcom/uc/webview/export/internal/utility/c$a;->a:Landroid/content/Context;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 275
    if-nez v0, :cond_1

    .line 277
    const-string/jumbo v0, "ConnectivityStatus"

    const-string/jumbo v2, "isQuickNet,ConnectivityManager==null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 298
    :goto_1
    return-object v0

    .line 274
    :cond_0
    sget-object v2, Lcom/uc/webview/export/internal/utility/c$a;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 284
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_4

    .line 285
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 286
    if-eqz v2, :cond_4

    .line 287
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 288
    aget-object v3, v2, v0

    if-eqz v3, :cond_3

    .line 289
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    aget-object v0, v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 287
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 299
    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
