.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;
.super Lipd;
.source "MiniUploadPlugin.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lhna;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lipd;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;->a:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;->a:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "uploadFile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    const-string/jumbo v1, "MiniUploadPlugin"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 61
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "h5EventFilter"    # Liof;

    .prologue
    .line 40
    const-string/jumbo v0, "uploadFile"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhna;

    .line 47
    .local v0, "task":Lhna;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lhna;->b()V

    goto :goto_0

    .line 52
    .end local v0    # "task":Lhna;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 53
    return-void
.end method
