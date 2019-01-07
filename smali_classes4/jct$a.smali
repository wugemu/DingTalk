.class final Ljct$a;
.super Landroid/content/BroadcastReceiver;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljct;


# direct methods
.method constructor <init>(Ljct;)V
    .locals 0

    iput-object p1, p0, Ljct$a;->a:Ljct;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x4

    .line 0
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 6000
    :cond_0
    :goto_0
    return-void

    .line 0
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Ljct$a;->a:Ljct;

    iget-object v0, v0, Ljct;->c:Ljdc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljct$a;->a:Ljct;

    iget-object v1, v0, Ljct;->c:Ljdc;

    .line 1000
    iget-object v0, v1, Ljdc;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-static {}, Ljdx;->b()J

    move-result-wide v2

    sget-wide v4, Ljdc;->h:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1324

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljdc;->a()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v2, v1, Ljdc;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, v1, Ljdc;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v1, Ljdc;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Ljdx;->b()J

    move-result-wide v0

    sput-wide v0, Ljdc;->h:J

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 0
    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "onReceive"

    invoke-static {v0, v1, v2}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :catch_1
    move-exception v2

    :try_start_5
    const-string/jumbo v3, "APS"

    const-string/jumbo v4, "onReceive part1"

    invoke-static {v2, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, v1, Ljdc;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v0, v1, Ljdc;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2

    throw v0

    .line 0
    :cond_3
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Ljct$a;->a:Ljct;

    iget-object v1, v1, Ljct;->c:Ljdc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljct$a;->a:Ljct;

    iget-object v2, v1, Ljct;->c:Ljdc;

    .line 2000
    iget-object v1, v2, Ljdc;->a:Landroid/net/wifi/WifiManager;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v1, :cond_0

    :try_start_8
    iget-object v1, v2, Ljdc;->a:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_4

    iget-object v1, v2, Ljdc;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-result v0

    :cond_4
    :goto_2
    :try_start_9
    iget-object v1, v2, Ljdc;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Ljdc;->d:Ljava/util/ArrayList;

    :cond_5
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v2}, Ljdc;->b()V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v3, "APS"

    const-string/jumbo v4, "onReceive part"

    invoke-static {v1, v3, v4}, Ljdo;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v2}, Ljdc;->b()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v2}, Ljdc;->b()V

    goto/16 :goto_0

    .line 0
    :cond_6
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljct$a;->a:Ljct;

    iget-object v0, v0, Ljct;->f:Ljda;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljct$a;->a:Ljct;

    iget-object v0, v0, Ljct;->f:Ljda;

    const/4 v1, 0x1

    .line 3000
    iput-boolean v1, v0, Ljda;->g:Z

    goto/16 :goto_0

    .line 0
    :cond_7
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljct$a;->a:Ljct;

    iget-object v0, v0, Ljct;->f:Ljda;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljct$a;->a:Ljct;

    iget-object v0, v0, Ljct;->f:Ljda;

    const/4 v1, 0x0

    .line 4000
    iput-boolean v1, v0, Ljda;->g:Z

    .line 0
    iget-object v0, p0, Ljct$a;->a:Ljct;

    iget-object v0, v0, Ljct;->f:Ljda;

    .line 5000
    invoke-virtual {v0}, Ljda;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljda;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljeq;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ljda$a;

    invoke-direct {v2, v0}, Ljda$a;-><init>(Ljda;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-virtual {v0}, Ljda;->c()V

    goto/16 :goto_0

    .line 0
    :cond_8
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljct$a;->a:Ljct;

    iget-object v0, v0, Ljct;->f:Ljda;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljct$a;->a:Ljct;

    iget-object v1, v0, Ljct;->f:Ljda;

    .line 6000
    iget-boolean v0, v1, Ljda;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljda;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Ljda;->i:Ljdc;

    if-eqz v0, :cond_0

    iget-object v0, v1, Ljda;->i:Ljdc;

    iget-object v2, v1, Ljda;->j:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Ljdc;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljdn;->v()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Ljda;->c()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, v1, Ljda;->e:Ljava/util/TimerTask;

    if-nez v0, :cond_a

    new-instance v0, Ljda$1;

    invoke-direct {v0, v1}, Ljda$1;-><init>(Ljda;)V

    iput-object v0, v1, Ljda;->e:Ljava/util/TimerTask;

    :cond_a
    iget-object v0, v1, Ljda;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v2, "T-U"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, v1, Ljda;->d:Ljava/util/Timer;

    iget-object v0, v1, Ljda;->d:Ljava/util/Timer;

    iget-object v1, v1, Ljda;->e:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 2000
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
