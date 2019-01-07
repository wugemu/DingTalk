.class public Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;
.super Lipd;
.source "H5WalletPageNotifyPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WalletPageNotifyPlugin"


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h5Page:Liop;

.field private handleListen:Landroid/content/BroadcastReceiver;

.field private hasRegistered:Z

.field private receiverAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lipd;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->hasRegistered:Z

    .line 97
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->handleListen:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Liop;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->h5Page:Liop;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->receiverAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->receiverAppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->topMatch()Z

    move-result v0

    return v0
.end method

.method private registerListen()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->hasRegistered:Z

    if-eqz v3, :cond_0

    .line 83
    const-string/jumbo v3, "H5WalletPageNotifyPlugin"

    const-string/jumbo v4, "hasRegistered not register"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->hasRegistered:Z

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    .line 89
    .local v2, "manager":Ldq;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-object v3, Linp;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    sget-object v3, Linp;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v3, "H5WalletPageNotifyPlugin"

    const-string/jumbo v4, "registerFrameWorkListen"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->handleListen:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private topMatch()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->useTopMatch()Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v4

    .line 149
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    .line 150
    const/4 v5, 0x0

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 151
    .local v0, "currentTop":Landroid/app/Activity;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->activityWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 152
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 153
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "top":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "page":Ljava/lang/String;
    const-string/jumbo v5, "H5WalletPageNotifyPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "top "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " page:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    .end local v0    # "currentTop":Landroid/app/Activity;
    .end local v1    # "page":Ljava/lang/String;
    .end local v3    # "top":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 160
    .restart local v0    # "currentTop":Landroid/app/Activity;
    :cond_2
    const-string/jumbo v4, "H5WalletPageNotifyPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "not match: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", weakRef: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    .end local v0    # "currentTop":Landroid/app/Activity;
    :catch_0
    move-exception v2

    .line 164
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5WalletPageNotifyPlugin"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private unregisterListen()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->handleListen:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 175
    .local v1, "manager":Ldq;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->handleListen:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 176
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->handleListen:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private useTopMatch()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    const-string/jumbo v1, "H5_createPage_listen"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 137
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    .line 1081
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 61
    instance-of v0, v0, Liop;

    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 62
    check-cast v0, Liop;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->h5Page:Liop;

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 67
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_1

    .line 68
    const-string/jumbo v0, "H5WalletPageNotifyPlugin"

    const-string/jumbo v1, "current activity is H5Activity"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_1
    const-string/jumbo v0, "H5WalletPageNotifyPlugin"

    const-string/jumbo v1, "current activity is not H5Activity registerListen"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->registerListen()V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 43
    const-string/jumbo v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->h5Page:Liop;

    .line 49
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->hasRegistered:Z

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    const-string/jumbo v1, "H5WalletPageNotifyPlugin"

    const-string/jumbo v2, "unregister broadcastreceiver"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;->unregisterListen()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "r":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5WalletPageNotifyPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
