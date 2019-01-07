.class Lcom/taobao/artc/api/ArtcMediaClerk$1$1;
.super Ljava/util/TimerTask;
.source "ArtcMediaClerk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/api/ArtcMediaClerk$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/artc/api/ArtcMediaClerk$1;


# direct methods
.method constructor <init>(Lcom/taobao/artc/api/ArtcMediaClerk$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/api/ArtcMediaClerk$1;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/taobao/artc/api/ArtcMediaClerk$1$1;->this$0:Lcom/taobao/artc/api/ArtcMediaClerk$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    invoke-static {}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$1100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 183
    :try_start_0
    invoke-static {}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$200()Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$200()Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    move-result-object v0

    invoke-static {}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$300()Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;->onVideoGuaranteed(Lcom/taobao/artc/api/ArtcMediaClerk$ArtcVideoIndex;)V

    .line 185
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$202(Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;)Lcom/taobao/artc/api/IArtcStaticCapabilityHandler;

    .line 187
    :cond_0
    invoke-static {}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$100()Lcom/taobao/artc/api/ArtcConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/taobao/artc/api/ArtcMediaClerk;->access$102(Lcom/taobao/artc/api/ArtcConfig;)Lcom/taobao/artc/api/ArtcConfig;

    .line 195
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
