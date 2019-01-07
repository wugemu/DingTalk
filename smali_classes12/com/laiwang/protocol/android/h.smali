.class public Lcom/laiwang/protocol/android/h;
.super Ljava/lang/Object;
.source "SmartHeartBeatInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/h$b;,
        Lcom/laiwang/protocol/android/h$a;,
        Lcom/laiwang/protocol/android/h$c;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/content/SharedPreferences;

.field private d:Lcom/laiwang/protocol/android/h$a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/laiwang/protocol/android/h;->a:I

    .line 42
    iput v0, p0, Lcom/laiwang/protocol/android/h;->b:I

    .line 52
    const-string/jumbo v0, "HEART_BEAT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/h;->c:Landroid/content/SharedPreferences;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/android/h;->e:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/laiwang/protocol/android/h;->f:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/laiwang/protocol/android/h$c;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/android/h$c;-><init>(Lcom/laiwang/protocol/android/h;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/h;->e(Landroid/net/NetworkInfo;)V

    .line 57
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcom/laiwang/protocol/android/h$b;
    .locals 5
    .param p1, "networkTag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/laiwang/protocol/android/h$b;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/h$b;-><init>(Lcom/laiwang/protocol/android/h;)V

    .line 314
    .local v1, "storage":Lcom/laiwang/protocol/android/h$b;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    :goto_0
    monitor-exit p0

    return-object v1

    .line 316
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/h;->c:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "WIFI_SSID"

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 317
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    iget-object v2, v1, Lcom/laiwang/protocol/android/h$b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/h;->c:Landroid/content/SharedPreferences;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/laiwang/protocol/android/h$b;->b:I

    .line 321
    iget-object v2, p0, Lcom/laiwang/protocol/android/h;->c:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/laiwang/protocol/android/h$b;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "storage":Lcom/laiwang/protocol/android/h$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private a(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    if-eqz p1, :cond_2

    .line 66
    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 67
    iget-object v2, p0, Lcom/laiwang/protocol/android/h;->f:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 68
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 70
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 80
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 72
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string/jumbo v2, "100"

    goto :goto_0

    .line 74
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 80
    :cond_2
    const-string/jumbo v2, "0"

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/laiwang/protocol/android/h$b;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "storage"    # Lcom/laiwang/protocol/android/h$b;
    .param p2, "networkTag"    # Ljava/lang/String;
    .param p3, "isWifi"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 329
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v1, p1, Lcom/laiwang/protocol/android/h$b;->b:I

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/laiwang/protocol/android/h$b;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 331
    if-eqz p3, :cond_2

    .line 332
    iget-object v1, p1, Lcom/laiwang/protocol/android/h$b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 333
    const-string/jumbo v1, "WIFI_SSID"

    iget-object v2, p1, Lcom/laiwang/protocol/android/h$b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 335
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/h;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/laiwang/protocol/android/h;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/h;->e(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private b(Landroid/net/NetworkInfo;)I
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "subType":I
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 91
    const/16 v0, 0x64

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 6
    .param p1, "networkTag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 342
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->c:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "WIFI_SSID"

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 345
    .local v2, "wifiSSID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 346
    .local v0, "copy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 347
    const-string/jumbo v3, "WIFI_SSID"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 348
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    .end local v0    # "copy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "wifiSSID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private c(Landroid/net/NetworkInfo;)I
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 223
    invoke-static {}, Lcom/laiwang/protocol/android/f;->a()I

    move-result v1

    .line 226
    :goto_0
    return v1

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 226
    .local v0, "type":I
    invoke-static {v0}, Lcom/laiwang/protocol/android/f;->a(I)I

    move-result v1

    goto :goto_0
.end method

.method private d(Landroid/net/NetworkInfo;)I
    .locals 2
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 237
    .local v0, "type":I
    :goto_0
    invoke-static {v0}, Lcom/laiwang/protocol/android/f;->b(I)I

    move-result v1

    return v1

    .line 235
    .end local v0    # "type":I
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .restart local v0    # "type":I
    goto :goto_0
.end method

.method private e(Landroid/net/NetworkInfo;)V
    .locals 11
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 245
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    if-nez v7, :cond_0

    .line 246
    new-instance v7, Lcom/laiwang/protocol/android/h$a;

    invoke-direct {v7, p0}, Lcom/laiwang/protocol/android/h$a;-><init>(Lcom/laiwang/protocol/android/h;)V

    iput-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    .line 247
    :cond_0
    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v7, v7, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v7, v7, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    .line 248
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eq v7, v8, :cond_8

    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v7, v7, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    .line 249
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    if-eq v7, v8, :cond_8

    .line 250
    :cond_1
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/h;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "netTag":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/h;->b(Landroid/net/NetworkInfo;)I

    move-result v4

    .line 253
    .local v4, "subType":I
    invoke-direct {p0, v2}, Lcom/laiwang/protocol/android/h;->a(Ljava/lang/String;)Lcom/laiwang/protocol/android/h$b;

    move-result-object v3

    .line 254
    .local v3, "storage":Lcom/laiwang/protocol/android/h$b;
    iget v7, v3, Lcom/laiwang/protocol/android/h$b;->b:I

    if-eq v7, v9, :cond_2

    iget v7, v3, Lcom/laiwang/protocol/android/h$b;->c:I

    if-lt v7, v10, :cond_6

    .line 256
    :cond_2
    const-string/jumbo v7, "[heartbeat] network %s,init to mini interval"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-static {v7, v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v8, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    .line 258
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/h;->c(Landroid/net/NetworkInfo;)I

    move-result v9

    iput v9, v8, Lcom/laiwang/protocol/android/h$a;->c:I

    iput v9, v7, Lcom/laiwang/protocol/android/h$a;->b:I

    .line 259
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput-boolean v6, v7, Lcom/laiwang/protocol/android/h$a;->e:Z

    .line 275
    :goto_0
    iget v7, v3, Lcom/laiwang/protocol/android/h$b;->c:I

    if-le v7, v10, :cond_3

    .line 277
    invoke-direct {p0, v2}, Lcom/laiwang/protocol/android/h;->b(Ljava/lang/String;)V

    .line 279
    :cond_3
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput-object p1, v7, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    .line 280
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput v6, v7, Lcom/laiwang/protocol/android/h$a;->d:I

    .line 283
    iget-object v7, v3, Lcom/laiwang/protocol/android/h$b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v7

    const/4 v8, 0x5

    if-le v7, v8, :cond_8

    .line 284
    const-string/jumbo v7, "[heartbeat] heartbeat cached too much, size %d, start clean"

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v9, v3, Lcom/laiwang/protocol/android/h$b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    const/16 v7, 0x64

    if-ne v4, v7, :cond_7

    .line 286
    .local v1, "isWifi":Z
    :goto_1
    iget-object v6, v3, Lcom/laiwang/protocol/android/h$b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 287
    .local v5, "tag":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 288
    :cond_5
    invoke-direct {p0, v5}, Lcom/laiwang/protocol/android/h;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 262
    .end local v1    # "isWifi":Z
    .end local v5    # "tag":Ljava/lang/String;
    :cond_6
    iget v7, v3, Lcom/laiwang/protocol/android/h$b;->b:I

    invoke-static {}, Lcom/laiwang/protocol/android/f;->a()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 263
    .local v0, "cachedInterval":I
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/h;->d(Landroid/net/NetworkInfo;)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 265
    const-string/jumbo v7, "[heartbeat] network %s,init from cache"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-static {v7, v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v8, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput v0, v8, Lcom/laiwang/protocol/android/h$a;->c:I

    iput v0, v7, Lcom/laiwang/protocol/android/h$a;->b:I

    .line 269
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput-boolean v1, v7, Lcom/laiwang/protocol/android/h$a;->e:Z

    .line 270
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput v9, v7, Lcom/laiwang/protocol/android/h$a;->f:I

    .line 271
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v8, v3, Lcom/laiwang/protocol/android/h$b;->c:I

    iput v8, v7, Lcom/laiwang/protocol/android/h$a;->g:I

    .line 272
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput-boolean v1, v7, Lcom/laiwang/protocol/android/h$a;->h:Z

    .line 273
    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->e:Ljava/util/List;

    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v4, v8, v6

    iget-object v9, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v9, v9, Lcom/laiwang/protocol/android/h$a;->c:I

    aput v9, v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v0    # "cachedInterval":I
    :cond_7
    move v1, v6

    .line 285
    goto :goto_1

    .line 293
    .end local v2    # "netTag":Ljava/lang/String;
    .end local v3    # "storage":Lcom/laiwang/protocol/android/h$b;
    .end local v4    # "subType":I
    :cond_8
    return-void
.end method


# virtual methods
.method public a()[I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/laiwang/protocol/android/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/h;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public b()I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 120
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v3, v3, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    invoke-direct {p0, v3}, Lcom/laiwang/protocol/android/h;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "netTag":Ljava/lang/String;
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v3, v3, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    invoke-direct {p0, v3}, Lcom/laiwang/protocol/android/h;->b(Landroid/net/NetworkInfo;)I

    move-result v2

    .line 122
    .local v2, "subType":I
    const-string/jumbo v3, "[heartbeat] success interval %d"

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v7, v7, Lcom/laiwang/protocol/android/h$a;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->d:I

    if-lt v3, v9, :cond_0

    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->b:I

    iget-object v6, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v6, v6, Lcom/laiwang/protocol/android/h$a;->c:I

    if-eq v3, v6, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->b:I

    iget-object v6, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v6, v6, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    .line 125
    invoke-direct {p0, v6}, Lcom/laiwang/protocol/android/h;->d(Landroid/net/NetworkInfo;)I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput-boolean v4, v3, Lcom/laiwang/protocol/android/h$a;->e:Z

    .line 128
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    const/4 v6, -0x1

    iput v6, v3, Lcom/laiwang/protocol/android/h$a;->f:I

    .line 129
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->e:Ljava/util/List;

    new-array v6, v8, [I

    aput v2, v6, v5

    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v7, v7, Lcom/laiwang/protocol/android/h$a;->c:I

    aput v7, v6, v4

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const-string/jumbo v3, "[heartbeat] find best heartbeat interval %d"

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v7, v7, Lcom/laiwang/protocol/android/h$a;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v3, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->c:I

    iget-object v6, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v6, v6, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    invoke-direct {p0, v6}, Lcom/laiwang/protocol/android/h;->c(Landroid/net/NetworkInfo;)I

    move-result v6

    if-le v3, v6, :cond_3

    .line 133
    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/h;->a(Ljava/lang/String;)Lcom/laiwang/protocol/android/h$b;

    move-result-object v1

    .line 134
    .local v1, "storage":Lcom/laiwang/protocol/android/h$b;
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->c:I

    iget v6, v1, Lcom/laiwang/protocol/android/h$b;->b:I

    if-gt v3, v6, :cond_2

    iget v3, v1, Lcom/laiwang/protocol/android/h$b;->c:I

    if-le v3, v9, :cond_3

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->c:I

    iput v3, v1, Lcom/laiwang/protocol/android/h$b;->b:I

    .line 137
    iput v5, v1, Lcom/laiwang/protocol/android/h$b;->c:I

    .line 138
    const/16 v3, 0x64

    if-ne v2, v3, :cond_5

    move v3, v4

    :goto_0
    invoke-direct {p0, v1, v0, v3}, Lcom/laiwang/protocol/android/h;->a(Lcom/laiwang/protocol/android/h$b;Ljava/lang/String;Z)V

    .line 139
    const-string/jumbo v3, "[heartbeat] find best heartbeat, network type %s interval %d > %d"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v5

    iget v7, v1, Lcom/laiwang/protocol/android/h$b;->b:I

    .line 140
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v4, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v4, v4, Lcom/laiwang/protocol/android/h$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    .line 139
    invoke-static {v3, v6}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .end local v1    # "storage":Lcom/laiwang/protocol/android/h$b;
    :cond_3
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput v5, v3, Lcom/laiwang/protocol/android/h$a;->d:I

    .line 145
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v4, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v4, v4, Lcom/laiwang/protocol/android/h$a;->b:I

    iput v4, v3, Lcom/laiwang/protocol/android/h$a;->c:I

    .line 146
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-boolean v3, v3, Lcom/laiwang/protocol/android/h$a;->e:Z

    if-eqz v3, :cond_6

    .line 147
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v4, v3, Lcom/laiwang/protocol/android/h$a;->f:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/laiwang/protocol/android/h$a;->f:I

    .line 149
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->g:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->f:I

    if-le v3, v8, :cond_4

    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-boolean v3, v3, Lcom/laiwang/protocol/android/h$a;->h:Z

    if-eqz v3, :cond_4

    .line 151
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput v5, v3, Lcom/laiwang/protocol/android/h$a;->g:I

    .line 152
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    :cond_4
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->b:I

    .line 159
    :goto_1
    return v3

    .restart local v1    # "storage":Lcom/laiwang/protocol/android/h$b;
    :cond_5
    move v3, v5

    .line 138
    goto :goto_0

    .line 157
    .end local v1    # "storage":Lcom/laiwang/protocol/android/h$b;
    :cond_6
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v4, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v4, v4, Lcom/laiwang/protocol/android/h$a;->b:I

    add-int/lit16 v4, v4, 0x3a98

    iget-object v5, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v5, v5, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    .line 158
    invoke-direct {p0, v5}, Lcom/laiwang/protocol/android/h;->d(Landroid/net/NetworkInfo;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/laiwang/protocol/android/h$a;->b:I

    .line 159
    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->b:I

    goto :goto_1
.end method

.method public c()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 171
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v1, v1, Lcom/laiwang/protocol/android/h$a;->b:I

    iget-object v2, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v2, v2, Lcom/laiwang/protocol/android/h$a;->c:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-boolean v1, v1, Lcom/laiwang/protocol/android/h$a;->e:Z

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v2, v1, Lcom/laiwang/protocol/android/h$a;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/laiwang/protocol/android/h$a;->d:I

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v1, v1, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    invoke-direct {p0, v1}, Lcom/laiwang/protocol/android/h;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "netTag":Ljava/lang/String;
    const-string/jumbo v1, "[heartbeat] fail interval %d network type %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v1, v1, Lcom/laiwang/protocol/android/h$a;->d:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 179
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-boolean v1, v1, Lcom/laiwang/protocol/android/h$a;->e:Z

    if-eqz v1, :cond_4

    .line 181
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-boolean v1, v1, Lcom/laiwang/protocol/android/h$a;->h:Z

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v2, v1, Lcom/laiwang/protocol/android/h$a;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/laiwang/protocol/android/h$a;->g:I

    .line 184
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v3, v3, Lcom/laiwang/protocol/android/h$a;->g:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput-boolean v4, v1, Lcom/laiwang/protocol/android/h$a;->h:Z

    .line 187
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput-boolean v4, v1, Lcom/laiwang/protocol/android/h$a;->e:Z

    .line 188
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iput v4, v1, Lcom/laiwang/protocol/android/h$a;->d:I

    .line 189
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    const/4 v2, -0x1

    iput v2, v1, Lcom/laiwang/protocol/android/h$a;->f:I

    .line 190
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v2, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v3, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v3, v3, Lcom/laiwang/protocol/android/h$a;->a:Landroid/net/NetworkInfo;

    invoke-direct {p0, v3}, Lcom/laiwang/protocol/android/h;->c(Landroid/net/NetworkInfo;)I

    move-result v3

    iput v3, v2, Lcom/laiwang/protocol/android/h$a;->c:I

    iput v3, v1, Lcom/laiwang/protocol/android/h$a;->b:I

    .line 199
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v1, v1, Lcom/laiwang/protocol/android/h$a;->b:I

    return v1

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget-object v2, p0, Lcom/laiwang/protocol/android/h;->d:Lcom/laiwang/protocol/android/h$a;

    iget v2, v2, Lcom/laiwang/protocol/android/h$a;->c:I

    iput v2, v1, Lcom/laiwang/protocol/android/h$a;->b:I

    goto :goto_0
.end method
