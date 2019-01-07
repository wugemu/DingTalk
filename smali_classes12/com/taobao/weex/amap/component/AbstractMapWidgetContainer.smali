.class public Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "AbstractMapWidgetContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Widget:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<",
        "Lcom/taobao/weex/ui/view/WXFrameLayout;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "WXMapViewComponent"


# instance fields
.field private mIsMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPaddingWidgetTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mWidget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWidget;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "node"    # Lcom/taobao/weex/dom/WXDomObject;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;

    .prologue
    .line 29
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer<TWidget;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mPaddingWidgetTasks:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mIsMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "dom"    # Lcom/taobao/weex/dom/WXDomObject;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z

    .prologue
    .line 25
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer<TWidget;>;"
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;Z)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mPaddingWidgetTasks:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mIsMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;Z)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "node"    # Lcom/taobao/weex/dom/WXDomObject;
    .param p3, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p4, "lazy"    # Z

    .prologue
    .line 33
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer<TWidget;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/dom/WXDomObject;Lcom/taobao/weex/ui/component/WXVContainer;Z)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mPaddingWidgetTasks:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mIsMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    return-void
.end method


# virtual methods
.method protected execAfterWidgetReady(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer<TWidget;>;"
    new-instance v0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer$2;-><init>(Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    .local v0, "wrapper":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mWidget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v1, "WXMapViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Widget is ready, execute task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " immediately"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string/jumbo v1, "WXMapViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Widget is not ready, cache task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mPaddingWidgetTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected execPaddingWidgetTasks()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer<TWidget;>;"
    iget-object v2, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mPaddingWidgetTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 59
    .local v1, "task":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 60
    const-string/jumbo v2, "WXMapViewComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exec padding widget task "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mPaddingWidgetTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 63
    return-void
.end method

.method protected getWidget()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TWidget;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer<TWidget;>;"
    iget-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mWidget:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 102
    const-string/jumbo v0, "WXMapViewComponent"

    new-instance v1, Ljava/lang/Throwable;

    const-string/jumbo v2, "Widget is null"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mWidget:Ljava/lang/Object;

    return-object v0
.end method

.method protected postMapOperationTask(Lcom/taobao/weex/amap/component/WXMapViewComponent;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V
    .locals 1
    .param p1, "parent"    # Lcom/taobao/weex/amap/component/WXMapViewComponent;
    .param p2, "task"    # Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;

    .prologue
    .line 37
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer<TWidget;>;"
    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer$1;

    invoke-direct {v0, p0, p2}, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer$1;-><init>(Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 49
    .local v0, "wrapper":Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;
    invoke-virtual {p1, v0}, Lcom/taobao/weex/amap/component/WXMapViewComponent;->postTask(Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;)V

    .line 51
    .end local v0    # "wrapper":Lcom/taobao/weex/amap/component/WXMapViewComponent$MapOperationTask;
    :cond_0
    return-void
.end method

.method protected setMapLoaded(Z)V
    .locals 1
    .param p1, "loaded"    # Z

    .prologue
    .line 54
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer<TWidget;>;"
    iget-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mIsMapLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    return-void
.end method

.method protected setWidget(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWidget;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    .local p0, "this":Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;, "Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer<TWidget;>;"
    .local p1, "widget":Ljava/lang/Object;, "TWidget;"
    iput-object p1, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mWidget:Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->mWidget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/taobao/weex/amap/component/AbstractMapWidgetContainer;->execPaddingWidgetTasks()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string/jumbo v0, "WXMapViewComponent"

    const-string/jumbo v1, "Widget is null when call setWidget"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
