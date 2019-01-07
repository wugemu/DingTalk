.class public Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "H5UcInitReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5UcInitReceiver"


# instance fields
.field private callBackPageReady:Z

.field private h5BundleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Linz;",
            ">;"
        }
    .end annotation
.end field

.field private h5ContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Context;",
            ">;"
        }
    .end annotation
.end field

.field private h5PageReadyListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liot;",
            ">;"
        }
    .end annotation
.end field

.field private h5UcReadyCallBackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lipf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "callBackPage"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->callBackPageReady:Z

    .line 44
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->callBackPageReady:Z

    .line 45
    return-void
.end method


# virtual methods
.method public addH5Bundle(Linz;)V
    .locals 1
    .param p1, "h5Bundle"    # Linz;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public addH5Context(Lcom/alipay/mobile/h5container/api/H5Context;)V
    .locals 1
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public addH5PageReadyListener(Liot;)V
    .locals 1
    .param p1, "h5PageReadyListener"    # Liot;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public addH5UcReadyCallBack(Lipf;)V
    .locals 1
    .param p1, "h5UcReadyCallBack"    # Lipf;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string/jumbo v9, "h5_action_uc_init_finish"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 71
    const-string/jumbo v9, "H5UcInitReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "receive "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->callBackPageReady:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_0
    iget-boolean v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->callBackPageReady:Z

    if-nez v9, :cond_3

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "result"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v7

    .line 77
    .local v7, "result":Z
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 78
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 79
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lipf;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 80
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    const-string/jumbo v9, "H5UcInitReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "!callBackPageReady uc init result "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lipf;>;"
    .end local v7    # "result":Z
    :catch_0
    move-exception v8

    .line 126
    .local v8, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5UcInitReceiver"

    invoke-static {v9, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v8    # "throwable":Ljava/lang/Throwable;
    .restart local v7    # "result":Z
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 86
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5UcReadyCallBackList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 89
    .end local v7    # "result":Z
    :cond_3
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    .line 90
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    .line 91
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    .line 92
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "result"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v7

    .line 94
    .restart local v7    # "result":Z
    const/4 v4, 0x0

    .line 95
    .local v4, "i":I
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 96
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alipay/mobile/h5container/api/H5Context;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/api/H5Context;

    .line 98
    .local v2, "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_4

    .line 99
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 100
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 103
    const-string/jumbo v9, "H5UcInitReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "callBackPageReady uc init result "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    .line 105
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liot;

    .line 106
    .local v3, "h5PageReadyListener":Liot;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linz;

    .line 107
    .local v1, "h5Bundle":Linz;
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 108
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v9

    invoke-interface {v9, v2, v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->createPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Liop;

    .line 112
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "h5Bundle":Linz;
    .end local v3    # "h5PageReadyListener":Liot;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_2

    .line 115
    .end local v2    # "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    .end local v4    # "i":I
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alipay/mobile/h5container/api/H5Context;>;"
    .end local v7    # "result":Z
    :cond_5
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 116
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5ContextList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 118
    :cond_6
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 119
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5BundleList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 121
    :cond_7
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 122
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->h5PageReadyListenerList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
