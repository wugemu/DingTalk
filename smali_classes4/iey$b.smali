.class final Liey$b;
.super Landroid/content/BroadcastReceiver;
.source "AVDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Liey;


# direct methods
.method constructor <init>(Liey;)V
    .locals 0
    .param p1, "this$0"    # Liey;

    .prologue
    .line 505
    iput-object p1, p0, Liey$b;->a:Liey;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 510
    const/4 v4, 0x0

    .line 511
    .local v4, "networkStateChanged":Z
    const/4 v5, 0x1

    .line 512
    .local v5, "networkTypeChanged":Z
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 513
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 514
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    .line 515
    iget-object v6, p0, Liey$b;->a:Liey;

    invoke-static {v6}, Liey;->f(Liey;)Z

    move-result v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eq v6, v7, :cond_0

    .line 516
    iget-object v6, p0, Liey$b;->a:Liey;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-static {v6, v7}, Liey;->a(Liey;Z)Z

    .line 517
    const/4 v4, 0x1

    .line 519
    :cond_0
    invoke-static {}, Liey;->l()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "current network type:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", connection status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_0
    iget-object v6, p0, Liey$b;->a:Liey;

    invoke-static {v6}, Liey;->c(Liey;)Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 527
    iget-object v6, p0, Liey$b;->a:Liey;

    invoke-static {v6}, Liey;->c(Liey;)Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->d()Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v6

    sget-object v7, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->IDLE:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    invoke-virtual {v7}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->ordinal()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 528
    iget-object v6, p0, Liey$b;->a:Liey;

    invoke-virtual {v6, v2}, Liey;->a(Landroid/net/NetworkInfo;)Z

    move-result v5

    .line 531
    :cond_1
    if-nez v5, :cond_2

    if-eqz v4, :cond_6

    :cond_2
    iget-object v6, p0, Liey$b;->a:Liey;

    invoke-static {v6}, Liey;->g(Liey;)Ljava/util/Queue;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 532
    iget-object v6, p0, Liey$b;->a:Liey;

    invoke-static {v6}, Liey;->g(Liey;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lied$h;

    .line 533
    .local v3, "listener":Lied$h;
    if-eqz v3, :cond_3

    .line 534
    iget-object v7, p0, Liey$b;->a:Liey;

    invoke-static {v7}, Liey;->f(Liey;)Z

    move-result v7

    invoke-interface {v3, v7}, Lied$h;->a(Z)V

    goto :goto_1

    .line 521
    .end local v3    # "listener":Lied$h;
    :cond_4
    iget-object v6, p0, Liey$b;->a:Liey;

    invoke-static {v6}, Liey;->f(Liey;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 522
    const/4 v4, 0x1

    .line 524
    :cond_5
    iget-object v6, p0, Liey$b;->a:Liey;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Liey;->a(Liey;Z)Z

    goto :goto_0

    .line 539
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "networkStateChanged":Z
    .end local v5    # "networkTypeChanged":Z
    :cond_6
    return-void
.end method
