.class public abstract Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.super Ljava/lang/Object;
.source "H5CoreTarget.java"

# interfaces
.implements Liob;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5CoreTarget"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Liob;",
            ">;"
        }
    .end annotation
.end field

.field protected h5Data:Lioc;

.field private parent:Liob;

.field private pluginManager:Liow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->parent:Liob;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->children:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;-><init>(Liob;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pluginManager:Liow;

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized addChild(Liob;)Z
    .locals 4
    .param p1, "child"    # Liob;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 64
    monitor-enter p0

    if-nez p1, :cond_0

    .line 76
    :goto_0
    monitor-exit p0

    return v1

    .line 68
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liob;

    .line 69
    .local v0, "target":Liob;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 74
    .end local v0    # "target":Liob;
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {p1, p0}, Liob;->setParent(Liob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v1, 0x1

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getData()Lioc;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->h5Data:Lioc;

    return-object v0
.end method

.method public getParent()Liob;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->parent:Liob;

    return-object v0
.end method

.method public getPluginManager()Liow;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pluginManager:Liow;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pluginManager:Liow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pluginManager:Liow;

    invoke-interface {v0, p1, p2}, Liow;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pluginManager:Liow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pluginManager:Liow;

    invoke-interface {v0, p1, p2}, Liow;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitialize(Liob;)V
    .locals 0
    .param p1, "coreNode"    # Liob;

    .prologue
    .line 34
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 0
    .param p1, "filter"    # Liof;

    .prologue
    .line 39
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pluginManager:Liow;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pluginManager:Liow;

    invoke-interface {v0}, Liow;->onRelease()V

    .line 109
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->pluginManager:Liow;

    .line 111
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->h5Data:Lioc;

    .line 112
    return-void
.end method

.method public declared-synchronized removeChild(Liob;)Z
    .locals 4
    .param p1, "child"    # Liob;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 80
    monitor-enter p0

    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 84
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Liob;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liob;

    .line 87
    .local v1, "target":Liob;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Liob;>;"
    .end local v1    # "target":Liob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "H5CoreTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispatch action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liob;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 135
    return-void
.end method

.method public setData(Lioc;)V
    .locals 0
    .param p1, "data"    # Lioc;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->h5Data:Lioc;

    .line 127
    return-void
.end method

.method public setParent(Liob;)V
    .locals 1
    .param p1, "parent"    # Liob;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->parent:Liob;

    if-ne p1, v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->parent:Liob;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->parent:Liob;

    invoke-interface {v0, p0}, Liob;->removeChild(Liob;)Z

    .line 55
    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->parent:Liob;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->parent:Liob;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->parent:Liob;

    invoke-interface {v0, p0}, Liob;->addChild(Liob;)Z

    goto :goto_0
.end method
