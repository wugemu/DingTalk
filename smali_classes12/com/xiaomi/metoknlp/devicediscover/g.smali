.class public Lcom/xiaomi/metoknlp/devicediscover/g;
.super Ljava/lang/Object;


# static fields
.field static final d:Ljava/lang/Object;

.field private static final i:J


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/ConnectivityManager;

.field c:Ljwu;

.field public e:Lcom/xiaomi/metoknlp/devicediscover/c;

.field public f:Landroid/os/HandlerThread;

.field public g:Ljwt;

.field public h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/xiaomi/metoknlp/devicediscover/g;->i:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/metoknlp/devicediscover/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljwq;

    invoke-direct {v0, p0}, Ljwq;-><init>(Lcom/xiaomi/metoknlp/devicediscover/g;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->h:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/metoknlp/devicediscover/g;)Ljwt;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    return-object v0
.end method

.method public static synthetic a(Lcom/xiaomi/metoknlp/devicediscover/g;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/metoknlp/devicediscover/g;->a(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/metoknlp/devicediscover/g;Z)V
    .locals 14

    .prologue
    const-wide/32 v2, 0xa4cb800

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide v12, 0x7fffffffffffffffL

    .line 0
    .line 8000
    invoke-static {}, Ljwc;->a()Ljwc;

    move-result-object v0

    invoke-virtual {v0}, Ljwc;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 9000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 10000
    iget-wide v8, v0, Lcom/xiaomi/metoknlp/devicediscover/c;->c:J

    .line 9000
    invoke-static {}, Ljwc;->a()Ljwc;

    move-result-object v0

    .line 11000
    iget-object v0, v0, Ljwc;->c:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "d_s_c_t"

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 9000
    cmp-long v10, v0, v12

    if-nez v10, :cond_0

    sget-wide v0, Lcom/xiaomi/metoknlp/devicediscover/g;->i:J

    :cond_0
    iget-object v10, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 12000
    iget-object v10, v10, Lcom/xiaomi/metoknlp/devicediscover/c;->b:Ljava/lang/String;

    .line 9000
    if-eqz v10, :cond_8

    iget-object v11, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    invoke-static {v11, v4}, Ljwo;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v0

    if-ltz v0, :cond_8

    move v0, v4

    .line 8000
    :goto_0
    if-eqz v0, :cond_3

    .line 13000
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 14000
    iget-wide v6, v0, Lcom/xiaomi/metoknlp/devicediscover/c;->f:J

    .line 13000
    invoke-static {}, Ljwc;->a()Ljwc;

    move-result-object v0

    .line 15000
    iget-object v0, v0, Ljwc;->c:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "d_m_i"

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 13000
    cmp-long v8, v0, v12

    if-eqz v8, :cond_7

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    cmp-long v0, v6, v0

    if-lez v0, :cond_6

    move v0, v4

    .line 8000
    :goto_2
    if-eqz v0, :cond_3

    .line 16000
    invoke-static {}, Ljwc;->a()Ljwc;

    move-result-object v0

    .line 17000
    iget-object v0, v0, Ljwc;->c:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "d_n_s"

    sget-boolean v6, Ljwc;->a:Z

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 16000
    if-eqz v0, :cond_4

    invoke-static {}, Ljwc;->a()Ljwc;

    move-result-object v0

    .line 18000
    iget-object v0, v0, Ljwc;->c:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "d_s_t"

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 16000
    cmp-long v6, v0, v12

    if-eqz v6, :cond_1

    move-wide v2, v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->b()V

    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 19000
    iget-wide v0, v0, Lcom/xiaomi/metoknlp/devicediscover/c;->d:J

    .line 16000
    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    move v0, v4

    .line 8000
    :goto_3
    if-eqz v0, :cond_3

    .line 20000
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->c:Ljwu;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 21000
    iget-object v1, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->b:Ljava/lang/String;

    .line 20000
    iget-object v2, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 22000
    iget-wide v2, v2, Lcom/xiaomi/metoknlp/devicediscover/c;->c:J

    .line 20000
    iget-object v4, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 23000
    iget-wide v4, v4, Lcom/xiaomi/metoknlp/devicediscover/c;->d:J

    .line 20000
    invoke-interface/range {v0 .. v5}, Ljwu;->a(Ljava/lang/String;JJ)V

    .line 8000
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 24000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/metoknlp/devicediscover/c;->f:J

    .line 8000
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->c()V

    .line 0
    :cond_3
    return-void

    :cond_4
    move v0, v4

    .line 16000
    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_3

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    move-wide v0, v2

    goto :goto_1

    :cond_8
    move v0, v5

    goto/16 :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    check-cast v0, Ljvw;

    .line 7000
    iget v0, v0, Ljvw;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljwu;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    sget-object v1, Lcom/xiaomi/metoknlp/devicediscover/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->c:Ljwu;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x2

    .line 0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v3, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->b:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Ljwo;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 1000
    iget-object v1, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->b:Ljava/lang/String;

    .line 0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 2000
    iget-object v1, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 3000
    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/devicediscover/c;->c()V

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/devicediscover/c;->a()V

    .line 4000
    iget-object v2, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->a:Landroid/content/Context;

    const-string/jumbo v3, "none"

    .line 5000
    const-string/jumbo v4, "devicediscover"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4000
    if-eqz v2, :cond_3

    const-string/jumbo v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/devicediscover/c;->a()V

    iput-object v0, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->f:J

    iput-wide v2, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->e:J

    iput-wide v2, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->c:J

    .line 0
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v0, v6}, Ljwt;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v0, v6}, Ljwt;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v0, v6}, Ljwt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/metoknlp/devicediscover/g;->i:J

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v1, v0}, Ljwt;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 4000
    :cond_6
    :try_start_1
    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v0, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->b:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->c:J

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->d:J

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->e:J

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/metoknlp/devicediscover/c;->f:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 0
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->g:Ljwt;

    invoke-virtual {v1, v0, v2, v3}, Ljwt;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->e:Lcom/xiaomi/metoknlp/devicediscover/c;

    .line 6000
    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->b()V

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->c()V

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/devicediscover/c;->a()V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    sget-object v1, Lcom/xiaomi/metoknlp/devicediscover/g;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/metoknlp/devicediscover/g;->c:Ljwu;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
