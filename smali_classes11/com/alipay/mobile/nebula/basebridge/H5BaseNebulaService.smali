.class public abstract Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;
.super Ljava/lang/Object;
.source "H5BaseNebulaService.java"

# interfaces
.implements Liob;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BaseNebulaService"


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
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Liob;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->children:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    .line 33
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/h5container/service/H5Service;->createPluginManager(Liob;)Liow;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Liow;

    .line 34
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

    .line 68
    monitor-enter p0

    if-nez p1, :cond_0

    .line 80
    :goto_0
    monitor-exit p0

    return v1

    .line 72
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liob;

    .line 73
    .local v0, "target":Liob;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 78
    .end local v0    # "target":Liob;
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {p1, p0}, Liob;->setParent(Liob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getData()Lioc;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->h5Data:Lioc;

    return-object v0
.end method

.method public getParent()Liob;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Liob;

    return-object v0
.end method

.method public getPluginManager()Liow;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Liow;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Liow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Liow;

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
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Liow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Liow;

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
    .line 38
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 0
    .param p1, "filter"    # Liof;

    .prologue
    .line 43
    return-void
.end method

.method public onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Liow;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Liow;

    invoke-interface {v0}, Liow;->onRelease()V

    .line 113
    iput-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->pluginManager:Liow;

    .line 115
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->h5Data:Lioc;

    .line 116
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

    .line 84
    monitor-enter p0

    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 88
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Liob;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liob;

    .line 91
    .local v1, "target":Liob;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Liob;>;"
    .end local v1    # "target":Liob;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 136
    return-void
.end method

.method public setData(Lioc;)V
    .locals 0
    .param p1, "data"    # Lioc;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->h5Data:Lioc;

    .line 131
    return-void
.end method

.method public setParent(Liob;)V
    .locals 1
    .param p1, "parent"    # Liob;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Liob;

    if-ne p1, v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Liob;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Liob;

    invoke-interface {v0, p0}, Liob;->removeChild(Liob;)Z

    .line 59
    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Liob;

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Liob;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BaseNebulaService;->parent:Liob;

    invoke-interface {v0, p0}, Liob;->addChild(Liob;)Z

    goto :goto_0
.end method
