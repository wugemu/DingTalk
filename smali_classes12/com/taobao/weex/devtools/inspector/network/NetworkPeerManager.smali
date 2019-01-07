.class public Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
.super Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;
.source "NetworkPeerManager.java"


# static fields
.field private static sInstance:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;


# instance fields
.field private mAsyncPrettyPrinterRegistry:Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

.field private mPrettyPrinterInitializer:Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;

.field private final mResponseBodyFileManager:Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

.field private final mTempFileCleanup:Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;)V
    .locals 1
    .param p1, "responseBodyFileManager"    # Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/helper/ChromePeerManager;-><init>()V

    .line 61
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;-><init>(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mTempFileCleanup:Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;

    .line 43
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mResponseBodyFileManager:Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    .line 44
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mTempFileCleanup:Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->setListener(Lcom/taobao/weex/devtools/inspector/helper/PeerRegistrationListener;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mAsyncPrettyPrinterRegistry:Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

    return-object v0
.end method

.method static synthetic access$002(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    .param p1, "x1"    # Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mAsyncPrettyPrinterRegistry:Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

    return-object p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mPrettyPrinterInitializer:Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mResponseBodyFileManager:Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    return-object v0
.end method

.method public static declared-synchronized getInstanceOrNull()Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    const-class v0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sInstance:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getOrCreateInstance(Landroid/content/Context;)Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-class v1, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sInstance:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;-><init>(Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sInstance:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    .line 38
    :cond_0
    sget-object v0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->sInstance:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAsyncPrettyPrinterRegistry()Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mAsyncPrettyPrinterRegistry:Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

    return-object v0
.end method

.method public getResponseBodyFileManager()Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mResponseBodyFileManager:Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    return-object v0
.end method

.method public setPrettyPrinterInitializer(Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;)V
    .locals 1
    .param p1, "initializer"    # Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mPrettyPrinterInitializer:Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/Util;->throwIfNotNull(Ljava/lang/Object;)V

    .line 58
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->mPrettyPrinterInitializer:Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;

    .line 59
    return-void
.end method
