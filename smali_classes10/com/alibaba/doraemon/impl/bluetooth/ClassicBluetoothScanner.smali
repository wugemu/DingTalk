.class public Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;
.super Ljava/lang/Object;
.source "ClassicBluetoothScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$BluetoothReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassicBluetoothScanner"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mFoundBluetoothDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsFindFinsh:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mListeners:Ljava/util/List;

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mFoundBluetoothDevices:Ljava/util/Map;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mIsFindFinsh:Z

    .line 42
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mHandler:Landroid/os/Handler;

    .line 47
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mIsFindFinsh:Z

    return v0
.end method

.method static synthetic access$102(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mIsFindFinsh:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mFoundBluetoothDevices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->stop()V

    return-void
.end method

.method private addBluetoothScanListener(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$3;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method private stop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mIsFindFinsh:Z

    .line 140
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mFoundBluetoothDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    :cond_1
    return-void
.end method


# virtual methods
.method public startFind(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->addBluetoothScanListener(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stopScan(Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner$2;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothScanner;Lcom/alibaba/doraemon/bluetooth/BluetoothScanListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
